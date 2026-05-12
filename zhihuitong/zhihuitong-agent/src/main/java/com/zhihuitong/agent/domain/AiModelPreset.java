package com.zhihuitong.agent.domain;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.zhihuitong.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * AI 模型预设配置表 ai_model_preset
 */
public class AiModelPreset extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 模型显示名称 */
    private String name;

    /** 推荐提供商（默认协议） */
    private String provider;

    /** 当前使用的协议: openai/anthropic/ollama */
    private String protocol;

    /** OpenAI协议模型名称 */
    @JsonProperty("openai_model")
    private String openaiModel;

    /** OpenAI协议API地址 */
    @JsonProperty("openai_base_url")
    private String openaiBaseUrl;

    /** Anthropic协议模型名称 */
    @JsonProperty("anthropic_model")
    private String anthropicModel;

    /** Anthropic协议API地址 */
    @JsonProperty("anthropic_base_url")
    private String anthropicBaseUrl;

    /** Ollama协议模型名称 */
    @JsonProperty("ollama_model")
    private String ollamaModel;

    /** Ollama协议API地址 */
    @JsonProperty("ollama_base_url")
    private String ollamaBaseUrl;

    /** API Key（独立配置，优先级高于全局配置） */
    @JsonProperty("api_key")
    private String apiKey;

    /** 图标标识 */
    private String icon;

    /** 排序 */
    @JsonProperty("sort_order")
    private Integer sortOrder;

    /** 状态: 0=正常 1=停用 */
    private String status;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getProvider() { return provider; }
    public void setProvider(String provider) { this.provider = provider; }

    public String getProtocol() { return protocol; }
    public void setProtocol(String protocol) { this.protocol = protocol; }

    public String getOpenaiModel() { return openaiModel; }
    public void setOpenaiModel(String openaiModel) { this.openaiModel = openaiModel; }

    public String getOpenaiBaseUrl() { return openaiBaseUrl; }
    public void setOpenaiBaseUrl(String openaiBaseUrl) { this.openaiBaseUrl = openaiBaseUrl; }

    public String getAnthropicModel() { return anthropicModel; }
    public void setAnthropicModel(String anthropicModel) { this.anthropicModel = anthropicModel; }

    public String getAnthropicBaseUrl() { return anthropicBaseUrl; }
    public void setAnthropicBaseUrl(String anthropicBaseUrl) { this.anthropicBaseUrl = anthropicBaseUrl; }

    public String getOllamaModel() { return ollamaModel; }
    public void setOllamaModel(String ollamaModel) { this.ollamaModel = ollamaModel; }

    public String getOllamaBaseUrl() { return ollamaBaseUrl; }
    public void setOllamaBaseUrl(String ollamaBaseUrl) { this.ollamaBaseUrl = ollamaBaseUrl; }

    public String getApiKey() { return apiKey; }
    public void setApiKey(String apiKey) { this.apiKey = apiKey; }

    public String getIcon() { return icon; }
    public void setIcon(String icon) { this.icon = icon; }

    public Integer getSortOrder() { return sortOrder; }
    public void setSortOrder(Integer sortOrder) { this.sortOrder = sortOrder; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", id)
                .append("name", name)
                .append("provider", provider)
                .append("protocol", protocol)
                .append("openaiModel", openaiModel)
                .append("openaiBaseUrl", openaiBaseUrl)
                .append("anthropicModel", anthropicModel)
                .append("anthropicBaseUrl", anthropicBaseUrl)
                .append("ollamaModel", ollamaModel)
                .append("ollamaBaseUrl", ollamaBaseUrl)
                .append("apiKey", apiKey)
                .append("icon", icon)
                .append("sortOrder", sortOrder)
                .append("status", status)
                .toString();
    }
}
