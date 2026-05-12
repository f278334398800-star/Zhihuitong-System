package com.zhihuitong.agent.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import java.util.Map;

/**
 * RAG 索引服务 — 代理转发 RAG 请求到 Python 服务
 */
@Slf4j
@Service
public class AgentRagService {

    private final WebClient webClient;

    public AgentRagService(@Qualifier("agentWebClient") WebClient webClient) {
        this.webClient = webClient;
    }

    private static final ObjectMapper objectMapper = new ObjectMapper();

    /**
     * 索引单篇文章
     */
    public Object indexArticle(String articleId, String title, String content) {
        Map<String, Object> body = Map.of(
                "article_id", articleId,
                "title", title,
                "content", content
        );
        String raw = webClient.post()
                .uri("/rag/index")
                .bodyValue(body)
                .retrieve()
                .bodyToMono(String.class)
                .block();
        return extractData(raw);
    }

    /**
     * 删除文章索引
     */
    public Object deleteArticleIndex(String articleId) {
        String raw = webClient.delete()
                .uri("/rag/index/{id}", articleId)
                .retrieve()
                .bodyToMono(String.class)
                .block();
        return extractData(raw);
    }

    /**
     * 从 Java 后端索引校园知识库
     */
    public Object indexKnowledge() {
        String raw = webClient.post()
                .uri("/rag/index/knowledge")
                .retrieve()
                .bodyToMono(String.class)
                .block();
        return extractData(raw);
    }

    /**
     * 从 Python JSON 响应中提取 data 字段
     */
    private Object extractData(String raw) {
        try {
            JsonNode root = objectMapper.readTree(raw);
            if (root.has("data")) {
                return objectMapper.treeToValue(root.get("data"), Object.class);
            }
            return raw;
        } catch (Exception e) {
            log.warn("解析 Python 响应失败，返回原始字符串", e);
            return raw;
        }
    }
}
