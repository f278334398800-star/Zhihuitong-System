/*
 Navicat Premium Dump SQL

 Source Server         : db
 Source Server Type    : MySQL
 Source Server Version : 90300 (9.3.0)
 Source Host           : localhost:3306
 Source Schema         : zhihuitong

 Target Server Type    : MySQL
 Target Server Version : 90300 (9.3.0)
 File Encoding         : 65001

 Date: 12/05/2026 17:08:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ai_model_preset
-- ----------------------------
DROP TABLE IF EXISTS `ai_model_preset`;
CREATE TABLE `ai_model_preset`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模型显示名称',
  `provider` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'openai' COMMENT '推荐提供商: openai/anthropic/ollama',
  `protocol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'openai' COMMENT '当前使用的协议: openai/anthropic/ollama',
  `openai_model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'OpenAI协议模型名称',
  `openai_base_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'OpenAI协议API地址',
  `anthropic_model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Anthropic协议模型名称',
  `anthropic_base_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Anthropic协议API地址',
  `ollama_model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Ollama协议模型名称',
  `ollama_base_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'http://localhost:11434' COMMENT 'Ollama协议API地址',
  `api_key` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '独立API Key',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '图标标识',
  `sort_order` int NULL DEFAULT 0 COMMENT '排序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态: 0=正常 1=停用',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'AI模型预设配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ai_model_preset
-- ----------------------------
INSERT INTO `ai_model_preset` VALUES (1, 'GPT-4o', 'openai', 'openai', 'gpt-4o', 'https://api.openai.com/v1', 'claude-sonnet-4-20250514', '', '', 'http://localhost:11434', '', 'openai', 10, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', 'OpenAI 旗舰多模态模型');
INSERT INTO `ai_model_preset` VALUES (2, 'GPT-4o Mini', 'openai', 'openai', 'gpt-4o-mini', 'https://api.openai.com/v1', '', '', '', 'http://localhost:11434', '', 'openai', 20, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', 'OpenAI 轻量模型，性价比高');
INSERT INTO `ai_model_preset` VALUES (3, 'Claude Sonnet 4', 'anthropic', 'anthropic', '', '', 'claude-sonnet-4-20250514', '', '', 'http://localhost:11434', '', 'anthropic', 30, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', 'Anthropic 最新高性能模型');
INSERT INTO `ai_model_preset` VALUES (4, 'Claude Haiku 3.5', 'anthropic', 'anthropic', '', '', 'claude-haiku-4-5-20251001', '', '', 'http://localhost:11434', '', 'anthropic', 40, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', 'Anthropic 快速轻量模型');
INSERT INTO `ai_model_preset` VALUES (5, 'DeepSeek V3', 'openai', 'openai', 'deepseek-chat', 'https://api.deepseek.com/v1', '', '', 'deepseek', 'http://localhost:11434', '', 'deepseek', 50, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', 'DeepSeek 通用对话模型');
INSERT INTO `ai_model_preset` VALUES (6, 'DeepSeek R1', 'openai', 'openai', 'deepseek-reasoner', 'https://api.deepseek.com/v1', '', '', 'deepseek-r1', 'http://localhost:11434', '', 'deepseek', 55, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', 'DeepSeek 推理模型');
INSERT INTO `ai_model_preset` VALUES (7, '通义千问 Max', 'openai', 'openai', 'qwen-max', 'https://dashscope.aliyuncs.com/compatible-mode/v1', '', '', 'qwen2.5:72b', 'http://localhost:11434', '', 'qwen', 60, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', '阿里云通义千问旗舰模型');
INSERT INTO `ai_model_preset` VALUES (8, '通义千问 Plus', 'openai', 'openai', 'qwen-plus', 'https://dashscope.aliyuncs.com/compatible-mode/v1', '', '', 'qwen2.5:14b', 'http://localhost:11434', '', 'qwen', 70, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', '阿里云通义千问均衡模型');
INSERT INTO `ai_model_preset` VALUES (9, '智谱 GLM-4', 'openai', 'openai', 'glm-4', 'https://open.bigmodel.cn/api/paas/v4', '', '', 'glm4', 'http://localhost:11434', '', 'zhipu', 80, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', '智谱AI GLM-4 旗舰模型');
INSERT INTO `ai_model_preset` VALUES (10, 'Kimi', 'openai', 'openai', 'moonshot-v1-8k', 'https://api.moonshot.cn/v1', '', '', 'moonshot', 'http://localhost:11434', '', 'kimi', 90, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', '月之暗面 Kimi 模型');
INSERT INTO `ai_model_preset` VALUES (11, '文心一言 4.0', 'openai', 'openai', 'ernie-4.0-8k', 'https://aip.baidubce.com/rpc/2.0/ai_custom/v1/wenxinworkshop', '', '', '', 'http://localhost:11434', '', 'baidu', 100, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', '百度文心一言旗舰模型');
INSERT INTO `ai_model_preset` VALUES (12, '豆包', 'openai', 'openai', 'doubao-pro-32k', 'https://ark.cn-beijing.volces.com/api/v3', '', '', 'doubao', 'http://localhost:11434', '', 'doubao', 110, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', '字节跳动豆包模型');
INSERT INTO `ai_model_preset` VALUES (13, '讯飞星火 Max', 'openai', 'openai', 'generalv3.5', 'https://spark-api-open.xf-yun.com/v1', '', '', 'spark', 'http://localhost:11434', '', 'spark', 120, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', '科大讯飞星火大模型');
INSERT INTO `ai_model_preset` VALUES (14, 'Qwen2.5 7B (本地)', 'ollama', 'ollama', '', '', '', '', 'qwen2.5:7b', 'http://localhost:11434', '', 'ollama', 130, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', 'Ollama 本地部署的通义千问 7B');
INSERT INTO `ai_model_preset` VALUES (15, 'Llama3.1 8B (本地)', 'ollama', 'ollama', '', '', '', '', 'llama3.1:8b', 'http://localhost:11434', '', 'ollama', 140, '0', '', '2026-05-11 13:37:33', '', '2026-05-11 13:37:33', 'Ollama 本地部署的 Llama 3.1 8B');
INSERT INTO `ai_model_preset` VALUES (16, 'DeepSeek V4 Pro', 'anthropic', 'anthropic', 'gpt-4o-mini', 'https://api.openai.com/v1', '', '', '', 'http://localhost:11434', '', 'custom', 20, '0', 'admin', '2026-05-11 15:21:14', '', NULL, 'DeepSeek V4的预览版本');
INSERT INTO `ai_model_preset` VALUES (17, 'DeepSeek V4', 'anthropic', 'anthropic', '', '', 'deepseek-v4-flash', 'https://api.deepseek.com/anthropic', '', 'http://localhost:11434', 'sk-5cdd3c4764c841aba7952a4baadf3d5f', 'custom', 0, '0', 'admin', '2026-05-12 00:36:40', 'admin', '2026-05-12 02:18:53', '');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `form_col_num` int NULL DEFAULT 1 COMMENT '表单布局（单列 双列 三列）',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'stu_course', '学生课表', NULL, NULL, 'StuCourse', 'crud', 'element-plus-typescript', 'com.zhihuitong.course', 'course', 'course', '课表管理', 'ruoyi', 1, '0', '/', '{\"genView\":\"0\",\"parentMenuId\":2000}', 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04', NULL);
INSERT INTO `gen_table` VALUES (2, 'stu_note', '学习笔记', NULL, NULL, 'StuNote', 'crud', 'element-plus-typescript', 'com.zhihuitong.note', 'note', 'note', '学习笔记', 'ruoyi', 1, '0', '/', '{\"genView\":\"0\",\"parentMenuId\":2021}', 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:02:04', NULL);
INSERT INTO `gen_table` VALUES (3, 'stu_note_template', '笔记模板表', NULL, NULL, 'StuNoteTemplate', 'crud', 'element-plus-typescript', 'com.zhihuitong.template', 'template', 'template', '笔记模板', 'ruoyi', 1, '0', '/', '{\"genView\":\"0\",\"parentMenuId\":2021}', 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25', NULL);
INSERT INTO `gen_table` VALUES (4, 'sys_campus_knowledge', '校园知识内容表', NULL, NULL, 'SysCampusKnowledge', 'crud', 'element-plus-typescript', 'com.zhihuitong.knowledge', 'knowledge', 'knowledge', '校园知识内容', 'ruoyi', 1, '0', '/', '{\"genView\":\"0\",\"parentMenuId\":2052}', 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:33', NULL);
INSERT INTO `gen_table` VALUES (5, 'sys_campus_knowledge_type', '校园知识分类表', NULL, NULL, 'SysCampusKnowledgeType', 'crud', 'element-plus-typescript', 'com.zhihuitong.knowledge', 'knowledge', 'type', '校园知识分类', 'ruoyi', 1, '0', '/', '{\"genView\":\"0\",\"parentMenuId\":2052}', 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:49', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', '主键ID', 'int', 'Integer', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (2, 1, 'student_id', '学生ID（对应学号/用户ID）', 'int', 'Integer', 'studentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (3, 1, 'term', '学期标识（示例：2025-2026-1）', 'varchar(20)', 'String', 'term', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (4, 1, 'name', '课程名称', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (5, 1, 'teacher', '任课教师', 'varchar(50)', 'String', 'teacher', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (6, 1, 'day_of_week', '星期几（1=周一…7=周日）', 'int', 'Integer', 'dayOfWeek', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'course_week', 6, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (7, 1, 'start_section', '开始节次（从1开始）', 'int', 'Integer', 'startSection', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (8, 1, 'end_section', '结束节次（&gt;=开始节次）', 'int', 'Integer', 'endSection', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (9, 1, 'location', '上课地点（教学楼/教室）', 'varchar(100)', 'String', 'location', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (10, 1, 'remark', '备注（如：专业核心/专业基础/方向课）', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (11, 1, 'created_at', '创建时间', 'datetime', 'Date', 'createdAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 11, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (12, 1, 'updated_at', '更新时间', 'datetime', 'Date', 'updatedAt', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'datetime', '', 12, 'admin', '2026-05-07 16:09:43', '', '2026-05-08 14:28:04');
INSERT INTO `gen_table_column` VALUES (13, 2, 'id', '主键ID', 'int', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:28:04');
INSERT INTO `gen_table_column` VALUES (14, 2, 'student_id', '学生ID（对应学号/用户ID）', 'int', 'Long', 'studentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:28:04');
INSERT INTO `gen_table_column` VALUES (15, 2, 'course_id', '关联课程ID（可选，对应 stu_course.id）', 'int', 'Long', 'courseId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:28:04');
INSERT INTO `gen_table_column` VALUES (16, 2, 'course_name_snapshot', '课程名称快照（可选；课程被改名/删除后仍可显示）', 'varchar(100)', 'String', 'courseNameSnapshot', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:28:05');
INSERT INTO `gen_table_column` VALUES (17, 2, 'title', '笔记标题', 'varchar(200)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:28:05');
INSERT INTO `gen_table_column` VALUES (18, 2, 'content', '笔记内容（纯文本/Markdown均可存）', 'longtext', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'editor', '', 6, 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:28:05');
INSERT INTO `gen_table_column` VALUES (19, 2, 'tags', '标签（逗号分隔，如：需求,设计,复习）', 'varchar(500)', 'String', 'tags', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', 7, 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:28:05');
INSERT INTO `gen_table_column` VALUES (20, 2, 'created_at', '创建时间', 'datetime', 'Date', 'createdAt', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'datetime', '', 8, 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:28:05');
INSERT INTO `gen_table_column` VALUES (21, 2, 'updated_at', '更新时间', 'datetime', 'Date', 'updatedAt', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2026-05-09 09:09:53', '', '2026-05-09 10:28:05');
INSERT INTO `gen_table_column` VALUES (23, 3, 'id', '主键ID', 'int', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25');
INSERT INTO `gen_table_column` VALUES (24, 3, 'student_id', '学生ID（为空表示系统内置模板；不为空表示学生自定义模板）', 'int', 'Long', 'studentId', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25');
INSERT INTO `gen_table_column` VALUES (25, 3, 'name', '模板名称', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25');
INSERT INTO `gen_table_column` VALUES (26, 3, 'type', '模板类型（CLASS/EXPERIMENT/INTERVIEW/CUSTOM）', 'varchar(20)', 'String', 'type', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', '', 4, 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25');
INSERT INTO `gen_table_column` VALUES (27, 3, 'content', '模板内容（纯文本/Markdown）', 'longtext', 'String', 'content', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'editor', '', 5, 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25');
INSERT INTO `gen_table_column` VALUES (28, 3, 'sort_no', '排序号（越小越靠前）', 'int', 'Long', 'sortNo', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25');
INSERT INTO `gen_table_column` VALUES (29, 3, 'status', '状态（0启用 1停用）', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'radio', '', 7, 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25');
INSERT INTO `gen_table_column` VALUES (30, 3, 'created_at', '创建时间', 'datetime', 'Date', 'createdAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 8, 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25');
INSERT INTO `gen_table_column` VALUES (31, 3, 'updated_at', '更新时间', 'datetime', 'Date', 'updatedAt', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'datetime', '', 9, 'admin', '2026-05-09 10:07:28', '', '2026-05-09 10:08:25');
INSERT INTO `gen_table_column` VALUES (32, 2, 'cover_image', '笔记封面', 'varchar(255)', 'String', 'coverImage', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'imageUpload', '', 10, '', '2026-05-09 10:28:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, 4, 'id', '主键ID', 'bigint', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:33');
INSERT INTO `gen_table_column` VALUES (34, 4, 'type_id', '分类ID', 'bigint', 'Long', 'typeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', 'rules_regulations', 2, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:33');
INSERT INTO `gen_table_column` VALUES (35, 4, 'title', '知识标题', 'varchar(200)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:33');
INSERT INTO `gen_table_column` VALUES (36, 4, 'content', '富文本正文内容', 'longtext', 'String', 'content', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'editor', '', 4, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:33');
INSERT INTO `gen_table_column` VALUES (37, 4, 'file_url', '附件地址（PDF/Word）', 'varchar(500)', 'String', 'fileUrl', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 5, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:33');
INSERT INTO `gen_table_column` VALUES (38, 4, 'status', '状态 0草稿 1已发布', 'char(1)', 'String', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', 'sys_campus_knowledge', 6, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:33');
INSERT INTO `gen_table_column` VALUES (39, 4, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:33');
INSERT INTO `gen_table_column` VALUES (40, 4, 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:34');
INSERT INTO `gen_table_column` VALUES (41, 4, 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:34');
INSERT INTO `gen_table_column` VALUES (42, 5, 'id', '主键ID', 'bigint', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:49');
INSERT INTO `gen_table_column` VALUES (43, 5, 'type_name', '分类名称：规章制度/办事流程/校风校纪/通告批评', 'varchar(50)', 'String', 'typeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', 'rules_regulations', 2, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:49');
INSERT INTO `gen_table_column` VALUES (44, 5, 'sort', '排序号', 'int', 'Long', 'sort', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:49');
INSERT INTO `gen_table_column` VALUES (45, 5, 'status', '状态 0正常 1停用', 'char(1)', 'String', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', 'sys_campus_knowledge_type', 4, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:49');
INSERT INTO `gen_table_column` VALUES (46, 5, 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2026-05-10 07:06:50', '', '2026-05-10 07:44:49');

-- ----------------------------
-- Table structure for logistics_electric
-- ----------------------------
DROP TABLE IF EXISTS `logistics_electric`;
CREATE TABLE `logistics_electric`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '区域名称',
  `device_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '设备名称',
  `device_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '设备编号',
  `electric_consumption` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '用电量(度)',
  `use_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '使用状态 0正常 1异常 2离线',
  `use_date` date NULL DEFAULT NULL COMMENT '使用日期',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '电控管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logistics_electric
-- ----------------------------
INSERT INTO `logistics_electric` VALUES (1, '1号楼1层', '电表1号', 'ELEC001', 120.50, '0', '2025-12-01', '正常使用', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_electric` VALUES (2, '1号楼2层', '电表2号', 'ELEC002', 95.30, '0', '2025-12-01', '', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_electric` VALUES (3, '2号楼1层', '电表3号', 'ELEC003', 210.25, '1', '2025-12-01', '电压异常', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_electric` VALUES (4, '2号楼2层', '电表4号', 'ELEC004', 88.70, '0', '2025-12-01', '', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_electric` VALUES (5, '3号楼1层', '电表5号', 'ELEC005', 165.10, '0', '2025-12-01', '', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_electric` VALUES (6, '3号楼2层', '电表6号', 'ELEC006', 45.20, '2', '2025-12-01', '设备离线', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_electric` VALUES (7, '食堂区域', '电表7号', 'ELEC007', 420.80, '0', '2025-12-01', '大功率设备', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_electric` VALUES (8, '宿舍A区', '电表8号', 'ELEC008', 198.30, '0', '2025-12-01', '', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_electric` VALUES (9, '宿舍B区', '电表9号', 'ELEC009', 112.60, '1', '2025-12-01', '需检修', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_electric` VALUES (10, '办公楼', '电表10号', 'ELEC010', 75.40, '0', '2025-12-01', '', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');

-- ----------------------------
-- Table structure for logistics_repair
-- ----------------------------
DROP TABLE IF EXISTS `logistics_repair`;
CREATE TABLE `logistics_repair`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `repair_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '报修单号',
  `repair_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '报修类型 0水控 1电控 2其他',
  `repair_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '报修标题',
  `repair_content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '报修内容',
  `repair_person` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '报修人',
  `repair_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '报修电话',
  `repair_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '报修地点',
  `repair_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '报修状态 0待处理 1处理中 2已完成 3已取消',
  `handle_person` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '处理人',
  `handle_content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '处理结果',
  `handle_time` datetime NULL DEFAULT NULL COMMENT '处理时间',
  `repair_image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报修照片',
  `handle_image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '处理照片',
  `sort` int NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '报修管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logistics_repair
-- ----------------------------
INSERT INTO `logistics_repair` VALUES (1, 'REP20260510001', '0', '1楼水表漏水', '<p>走廊水表接头处漏水，需要紧急维修</p>', '张三', '13800138001', '1号楼1层走廊', '0', '', '', NULL, 'https://cdn.moliya.love/ossimages/2026/05/10/537e3fbc-214a-44f2-b149-8a6380186e1c.jpg', '', 1, '', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 17:01:49');
INSERT INTO `logistics_repair` VALUES (2, 'REP20260510002', '1', '2楼电表跳闸', '办公室电表频繁跳闸，无法正常用电', '李四', '13800138002', '2号楼2层办公室', '1', '王工', '已更换空开，恢复供电', '2026-05-10 09:55:27', '', '', 2, '', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 09:55:27');
INSERT INTO `logistics_repair` VALUES (3, 'REP20260510003', '0', '水表不计数', '3楼水表数字不动，用水量不更新', '王五', '13800138003', '3号楼1层', '2', '李工', '更换新水表，计量恢复正常', '2026-05-10 09:55:27', '', '', 3, '', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 09:55:27');
INSERT INTO `logistics_repair` VALUES (4, 'REP20260510004', '1', '食堂电表离线', '食堂配电房电表无法联网，数据上传失败', '赵六', '13800138004', '食堂配电房', '0', '', '', NULL, '', '', 4, '', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 09:55:27');
INSERT INTO `logistics_repair` VALUES (5, 'REP20260510005', '2', '宿舍水龙头损坏', 'A区201洗手池水龙头断裂漏水', '孙七', '13800138005', '宿舍A区201', '1', '张师傅', '正在更换配件', '2026-05-10 09:55:27', '', '', 5, '', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 09:55:27');
INSERT INTO `logistics_repair` VALUES (6, 'REP20260510006', '0', '卫生间下水堵塞', 'B区305卫生间下水管道堵塞，污水外溢', '周八', '13800138006', '宿舍B区305', '2', '刘师傅', '已疏通管道，排水恢复正常', '2026-05-10 09:55:27', '', '', 6, '', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 09:55:27');
INSERT INTO `logistics_repair` VALUES (7, 'REP20260510007', '1', '办公室线路短路', '办公楼203房间线路短路，无电', '吴九', '13800138007', '办公楼203', '3', '', '', NULL, '', '', 7, '用户取消报修', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 09:55:27');
INSERT INTO `logistics_repair` VALUES (8, 'REP20260510008', '0', '用水量突增异常', '1号楼3层用水量突增，怀疑管道漏水', '郑十', '13800138008', '1号楼3层', '0', '', '', NULL, '', '', 8, '', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 09:55:27');
INSERT INTO `logistics_repair` VALUES (9, 'REP20260510009', '1', '电表读数不准', '2号楼3层电表计量误差较大，怀疑电表故障', '冯一', '13800138009', '2号楼3层', '1', '陈工', '正在对电表进行校验', '2026-05-10 09:55:27', '', '', 9, '', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 09:55:27');
INSERT INTO `logistics_repair` VALUES (10, 'REP20260510010', '2', '走廊照明灯不亮', '办公楼大厅多盏照明灯损坏，影响通行', '陈二', '13800138010', '办公楼大厅', '2', '电工', '已更换损坏灯管，全部恢复照明', '2026-05-10 09:55:27', '', '', 10, '', 'admin', '2026-05-10 09:55:27', 'admin', '2026-05-10 09:55:27');
INSERT INTO `logistics_repair` VALUES (11, '', '', '', '', '', '', '', '0', '', '', NULL, 'https://zzyl-nursing-bucket.oss-cn-beijing.aliyuncs.com/images/2026/05/10/1778382328217.jpg', NULL, 0, '', '', '2026-05-10 10:46:59', '', '2026-05-10 11:05:32');
INSERT INTO `logistics_repair` VALUES (12, '', '0', '', '', '', '', '', '0', '', '', NULL, NULL, NULL, 0, '', '', '2026-05-10 15:17:08', '', NULL);
INSERT INTO `logistics_repair` VALUES (13, '', '0', '11', '<p>11</p>', '11', '11', '11', '0', '', '', NULL, '/profile/upload/2026/05/10/cat-1_20260510154511A001.jpg', NULL, 0, '1', '', '2026-05-10 15:45:13', '', NULL);
INSERT INTO `logistics_repair` VALUES (14, '', '', '', '<p><br></p>', '', '', '', '0', '', '', NULL, 'https://cdn.moliya.love/ossimages/2026/05/10/716d1e5f-c46e-422f-93a2-baeafd3d8131.jpg', NULL, 0, '', '', '2026-05-10 17:03:13', '', NULL);

-- ----------------------------
-- Table structure for logistics_water
-- ----------------------------
DROP TABLE IF EXISTS `logistics_water`;
CREATE TABLE `logistics_water`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '区域名称',
  `device_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '设备名称',
  `device_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '设备编号',
  `water_consumption` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '用水量(吨)',
  `use_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '使用状态 0正常 1异常 2离线',
  `use_date` date NULL DEFAULT NULL COMMENT '使用日期',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '水控管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logistics_water
-- ----------------------------
INSERT INTO `logistics_water` VALUES (1, '1号楼1层', '水表1号', 'WATER001', 12.50, '0', '2025-12-01', '正常使用', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_water` VALUES (2, '1号楼2层', '水表2号', 'WATER002', 8.30, '0', '2025-12-01', '正常使用', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_water` VALUES (3, '2号楼1层', '水表3号', 'WATER003', 15.20, '1', '2025-12-01', '流量异常', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_water` VALUES (4, '2号楼2层', '水表4号', 'WATER004', 10.00, '0', '2025-12-01', '', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_water` VALUES (5, '3号楼1层', '水表5号', 'WATER005', 22.10, '0', '2025-12-01', '', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_water` VALUES (6, '3号楼2层', '水表6号', 'WATER006', 5.70, '2', '2025-12-01', '设备离线', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_water` VALUES (7, '食堂区域', '水表7号', 'WATER007', 35.80, '0', '2025-12-01', '用水量较大', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_water` VALUES (8, '宿舍A区', '水表8号', 'WATER008', 18.20, '0', '2025-12-01', '', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_water` VALUES (9, '宿舍B区', '水表9号', 'WATER009', 9.40, '1', '2025-12-01', '需检修', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');
INSERT INTO `logistics_water` VALUES (10, '办公楼', '水表10号', 'WATER010', 7.90, '0', '2025-12-01', '', 'admin', '2026-05-10 08:59:11', 'admin', '2026-05-10 08:59:11');

-- ----------------------------
-- Table structure for stu_course
-- ----------------------------
DROP TABLE IF EXISTS `stu_course`;
CREATE TABLE `stu_course`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `student_id` int NOT NULL COMMENT '学生ID（对应学号/用户ID）',
  `term` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学期标识（示例：2025-2026-1）',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程名称',
  `teacher` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任课教师',
  `day_of_week` int NOT NULL COMMENT '星期几（1=周一…7=周日）',
  `start_section` int NOT NULL COMMENT '开始节次（从1开始）',
  `end_section` int NOT NULL COMMENT '结束节次（>=开始节次）',
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上课地点（教学楼/教室）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注（如：专业核心/专业基础/方向课）',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_student_term`(`student_id` ASC, `term` ASC) USING BTREE,
  INDEX `idx_course_weekview`(`student_id` ASC, `term` ASC, `day_of_week` ASC, `start_section` ASC) USING BTREE,
  CONSTRAINT `ck_course_day` CHECK (`day_of_week` between 1 and 7),
  CONSTRAINT `ck_course_section` CHECK ((`start_section` >= 1) and (`end_section` >= `start_section`))
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生课表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stu_course
-- ----------------------------
INSERT INTO `stu_course` VALUES (1, 10001, '2025-2026-1', '软件工程导论', '刘老师', 1, 1, 2, '信息楼201', '专业核心', '2026-05-07 16:09:05', '2026-05-07 16:09:05');
INSERT INTO `stu_course` VALUES (2, 10001, '2025-2026-1', '面向对象程序设计(Java)', '赵老师', 1, 3, 4, '信息楼305', '专业核心', '2026-05-07 16:09:05', '2026-05-07 16:09:05');
INSERT INTO `stu_course` VALUES (3, 10001, '2025-2026-1', '数据结构与算法', '王老师', 2, 1, 2, '信息楼108', '专业核心', '2026-05-07 16:09:05', '2026-05-07 16:09:05');
INSERT INTO `stu_course` VALUES (4, 10001, '2025-2026-1', '数据库系统原理', '周老师', 2, 3, 4, '信息楼210', '专业核心', '2026-05-07 16:09:05', '2026-05-07 16:09:05');
INSERT INTO `stu_course` VALUES (5, 10001, '2025-2026-1', '操作系统', '吴老师', 3, 1, 2, '理科楼110', '专业基础', '2026-05-07 16:09:05', '2026-05-07 16:09:05');
INSERT INTO `stu_course` VALUES (6, 10001, '2025-2026-1', '计算机网络', '郑老师', 3, 3, 4, '理科楼212', '专业基础', '2026-05-07 16:09:05', '2026-05-07 16:09:05');
INSERT INTO `stu_course` VALUES (7, 10001, '2025-2026-1', '软件需求工程', '陈老师', 4, 1, 2, '信息楼302', '专业核心', '2026-05-07 16:09:05', '2026-05-07 16:09:05');
INSERT INTO `stu_course` VALUES (8, 10001, '2025-2026-1', '软件测试技术', '孙老师', 4, 3, 4, '信息楼403', '专业核心', '2026-05-07 16:09:05', '2026-05-07 16:09:05');
INSERT INTO `stu_course` VALUES (9, 10001, '2025-2026-1', '软件项目管理', '冯老师', 5, 1, 2, '二教B401', '专业核心', '2026-05-07 16:09:05', '2026-05-07 16:09:05');
INSERT INTO `stu_course` VALUES (10, 10001, '2025-2026-1', 'Web应用开发', '李老师', 5, 3, 4, '信息楼501', '专业方向', '2026-05-07 16:09:05', '2026-05-07 16:09:05');

-- ----------------------------
-- Table structure for stu_note
-- ----------------------------
DROP TABLE IF EXISTS `stu_note`;
CREATE TABLE `stu_note`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `student_id` int NOT NULL COMMENT '学生ID（对应学号/用户ID）',
  `course_id` int NULL DEFAULT NULL COMMENT '关联课程ID（可选，对应 stu_course.id）',
  `course_name_snapshot` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称快照（可选；课程被改名/删除后仍可显示）',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '笔记标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '笔记内容（纯文本/Markdown均可存）',
  `tags` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签（逗号分隔，如：需求,设计,复习）',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `cover_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '笔记封面',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_note_student`(`student_id` ASC) USING BTREE,
  INDEX `idx_note_student_course`(`student_id` ASC, `course_id` ASC) USING BTREE,
  INDEX `idx_note_student_time`(`student_id` ASC, `updated_at` ASC) USING BTREE,
  INDEX `fk_note_course`(`course_id` ASC) USING BTREE,
  FULLTEXT INDEX `ft_note_search`(`title`, `content`, `tags`),
  CONSTRAINT `fk_note_course` FOREIGN KEY (`course_id`) REFERENCES `stu_course` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学习笔记' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stu_note
-- ----------------------------
INSERT INTO `stu_note` VALUES (1, 10001, 1, '软件工程导论', '第1章：软件工程概述', '软件工程的目标：在质量、成本、进度之间取得平衡。\n核心：过程、方法、工具。', '概念,导论,复习', '2026-05-09 08:55:32', '2026-05-09 08:55:32', NULL);
INSERT INTO `stu_note` VALUES (2, 10001, 4, '数据库系统原理', 'SQL：DML 与 DDL 对比', 'DDL：CREATE/ALTER/DROP\nDML：SELECT/INSERT/UPDATE/DELETE\n注意事务与约束的影响。', '数据库,SQL,总结', '2026-05-09 08:55:32', '2026-05-09 08:55:32', NULL);
INSERT INTO `stu_note` VALUES (3, 10001, 3, '数据结构与算法', '链表与数组的差异', '数组：随机访问快，插入删除慢。\n链表：插入删除快，随机访问慢。', '数据结构,链表,数组', '2026-05-09 08:55:32', '2026-05-09 08:55:32', NULL);
INSERT INTO `stu_note` VALUES (4, 10001, 2, '面向对象程序设计(Java)', '封装/继承/多态要点', '封装：隐藏实现细节。\n继承：复用与扩展。\n多态：面向接口编程，运行期绑定。', 'Java,OOP,重点', '2026-05-09 08:55:32', '2026-05-09 08:55:32', NULL);
INSERT INTO `stu_note` VALUES (5, 10001, NULL, NULL, '本周学习计划', '1) 完成课表周视图联调\n2) 整理需求工程笔记\n3) 复习SQL与索引', '计划,待办,复盘', '2026-05-09 08:55:32', '2026-05-09 08:55:32', NULL);
INSERT INTO `stu_note` VALUES (6, 1001, 1, 'Java', '1', '<p># 实验名称：</p><p>啊啊</p><p><br></p><p>## 实验目的</p><p><br></p><p>- 啊啊</p><p><br></p><p><br></p><p>## 实验环境</p><p>啊啊</p><p>- OS：</p><p><br></p><p>- 语言/框架：</p><p>啊啊</p><p>- 依赖版本：</p><p><br></p><p>啊啊</p><p>## 实验步骤</p><p>啊啊</p><p>1. </p><p>啊啊</p><p>2. </p><p><br></p><p><br></p><p>## 关键代码/命令</p><p><br></p><p>```text</p><p>啊啊</p><p><br></p><p>```</p><p><br></p><p><br></p><p>## 结果与截图</p><p><br></p><p>- </p><p>啊啊</p><p><br></p><p>## 问题与解决</p><p><br></p><p>- 啊啊</p><p><br></p><p><br></p><p>## 总结</p><p>啊啊</p><p>- </p><p><br></p>', '啊啊', '2026-05-09 00:00:00', '2026-05-09 00:00:00', 'https://cdn.moliya.love/Ossimages/2026/05/09/1778307150976.png');

-- ----------------------------
-- Table structure for stu_note_search
-- ----------------------------
DROP TABLE IF EXISTS `stu_note_search`;
CREATE TABLE `stu_note_search`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `note_id` bigint NOT NULL COMMENT '关联笔记ID',
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '笔记标题',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '笔记标签',
  `student_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '学生姓名',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_note_id`(`note_id` ASC) USING BTREE,
  FULLTEXT INDEX `ft_title_tags`(`title`, `tags`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '笔记搜索表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_note_search
-- ----------------------------
INSERT INTO `stu_note_search` VALUES (1, 1, '第1章：软件工程概述', '概念,导论,复习', '学生', '2026-05-09 08:55:32');
INSERT INTO `stu_note_search` VALUES (2, 2, 'SQL：DML 与 DDL 对比', '数据库,SQL,总结', '学生', '2026-05-09 08:55:32');
INSERT INTO `stu_note_search` VALUES (3, 3, '链表与数组的差异', '数据结构,链表,数组', '学生', '2026-05-09 08:55:32');
INSERT INTO `stu_note_search` VALUES (4, 4, '封装/继承/多态要点', 'Java,OOP,重点', '学生', '2026-05-09 08:55:32');
INSERT INTO `stu_note_search` VALUES (5, 5, '本周学习计划', '计划,待办,复盘', '学生', '2026-05-09 08:55:32');
INSERT INTO `stu_note_search` VALUES (6, 6, '待办事项', '复习导论', '小明', '2026-05-09 10:32:49');

-- ----------------------------
-- Table structure for stu_note_template
-- ----------------------------
DROP TABLE IF EXISTS `stu_note_template`;
CREATE TABLE `stu_note_template`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `student_id` int NULL DEFAULT NULL COMMENT '学生ID（为空表示系统内置模板；不为空表示学生自定义模板）',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板名称',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板类型（CLASS/EXPERIMENT/INTERVIEW/CUSTOM）',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板内容（纯文本/Markdown）',
  `sort_no` int NOT NULL DEFAULT 0 COMMENT '排序号（越小越靠前）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态（0启用 1停用）',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_template_student`(`student_id` ASC) USING BTREE,
  INDEX `idx_template_type`(`type` ASC) USING BTREE,
  INDEX `idx_template_status_sort`(`status` ASC, `sort_no` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '笔记模板表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stu_note_template
-- ----------------------------
INSERT INTO `stu_note_template` VALUES (1, NULL, '课堂笔记模板', 'CLASS', '# 课程：\n\n## 本节目标\n- \n\n## 重点概念\n- \n\n## 例题/示例\n- \n\n## 易错点\n- \n\n## 课后任务\n- \n', 10, '0', '2026-05-09 10:07:01', '2026-05-09 10:07:01');
INSERT INTO `stu_note_template` VALUES (2, NULL, '实验记录模板', 'EXPERIMENT', '# 实验名称：\n\n## 实验目的\n- \n\n## 实验环境\n- OS：\n- 语言/框架：\n- 依赖版本：\n\n## 实验步骤\n1. \n2. \n\n## 关键代码/命令\n```text\n\n```\n\n## 结果与截图\n- \n\n## 问题与解决\n- \n\n## 总结\n- \n', 20, '0', '2026-05-09 10:07:01', '2026-05-09 10:07:01');
INSERT INTO `stu_note_template` VALUES (3, NULL, '面试题整理模板', 'INTERVIEW', '# 主题：\n\n## 问题\n\n## 我的回答（简版）\n\n## 标准答案/要点\n- \n\n## 扩展追问\n- \n\n## 相关链接/资料\n- \n', 30, '0', '2026-05-09 10:07:01', '2026-05-09 10:07:01');
INSERT INTO `stu_note_template` VALUES (4, NULL, '读书/文章摘录模板', 'CLASS', '# 标题：\n\n## 核心观点\n- \n\n## 金句摘录\n> \n\n## 我的理解\n- \n\n## 可落地行动\n- \n', 40, '0', '2026-05-09 10:07:01', '2026-05-09 10:07:01');
INSERT INTO `stu_note_template` VALUES (5, NULL, '复盘总结模板', 'CUSTOM', '# 主题：\n\n## 做了什么\n- \n\n## 结果如何\n- \n\n## 问题在哪里\n- \n\n## 改进计划\n- \n', 50, '0', '2026-05-09 10:07:01', '2026-05-09 10:07:01');

-- ----------------------------
-- Table structure for stu_task
-- ----------------------------
DROP TABLE IF EXISTS `stu_task`;
CREATE TABLE `stu_task`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `student_id` int NOT NULL COMMENT '学生ID（对应学号/用户ID）',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务类型（HOMEWORK=作业 EXAM=考试 TODO=待办）',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务标题',
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务内容/备注',
  `term` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学期标识（示例：2025-2026-1）',
  `course_id` int NULL DEFAULT NULL COMMENT '关联课程ID',
  `course_name_snapshot` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称快照',
  `priority` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'MEDIUM' COMMENT '优先级（LOW/MEDIUM/HIGH）',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'TODO' COMMENT '状态（TODO/DOING/DONE/CANCEL）',
  `due_time` datetime NULL DEFAULT NULL COMMENT '截止时间',
  `remind_enabled` int NOT NULL DEFAULT 0 COMMENT '是否开启提醒（0否 1是）',
  `remind_time` datetime NULL DEFAULT NULL COMMENT '提醒时间',
  `assignee_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人邮箱',
  `email_sent` tinyint NULL DEFAULT 0 COMMENT '邮件发送状态: 0未发送 1已发送',
  `email_sent_time` datetime NULL DEFAULT NULL COMMENT '邮件发送时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_task_student_status_due`(`student_id` ASC, `status` ASC, `due_time` ASC) USING BTREE,
  INDEX `idx_task_student_term_course`(`student_id` ASC, `term` ASC, `course_id` ASC) USING BTREE,
  INDEX `idx_task_student_type`(`student_id` ASC, `type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生任务待办表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_task
-- ----------------------------
INSERT INTO `stu_task` VALUES (1, 10001, 'HOMEWORK', '完成《软件工程导论》作业1', '提交需求分析小结（不少于800字）', '2025-2026-1', NULL, '软件工程导论', 'HIGH', 'TODO', '2026-05-13 06:56:51', 1, '2026-05-12 06:56:51', 'test@qq.com', 0, NULL, '2026-05-11 06:56:51', '2026-05-11 06:56:51');
INSERT INTO `stu_task` VALUES (2, 10001, 'EXAM', '《数据结构与算法》阶段测验', '范围：线性表、栈、队列；携带学生证', '2025-2026-1', NULL, '数据结构与算法', 'HIGH', 'TODO', '2026-05-18 06:56:51', 1, '2026-05-17 06:56:51', 'test@qq.com', 0, NULL, '2026-05-11 06:56:51', '2026-05-11 06:56:51');
INSERT INTO `stu_task` VALUES (3, 10001, 'TODO', '整理本周课堂笔记', '把周一到周五的课堂笔记补齐并打标签', '2025-2026-1', NULL, NULL, 'MEDIUM', 'DOING', '2026-05-14 06:56:51', 0, NULL, 'test@qq.com', 0, NULL, '2026-05-11 06:56:51', '2026-05-11 06:56:51');
INSERT INTO `stu_task` VALUES (4, 10001, 'HOMEWORK', '数据库实验：索引与查询优化', '完成实验报告并附 explain 截图', '2025-2026-1', NULL, '数据库系统原理', 'MEDIUM', 'TODO', '2026-05-15 06:56:51', 1, '2026-05-14 06:56:51', 'test@qq.com', 0, NULL, '2026-05-11 06:56:51', '2026-05-11 06:56:51');
INSERT INTO `stu_task` VALUES (5, 10001, 'TODO', '准备下周项目组例会', '整理进度、风险、下周计划', '2025-2026-1', NULL, NULL, 'LOW', 'TODO', '2026-05-16 06:56:51', 0, NULL, 'test@qq.com', 0, NULL, '2026-05-11 06:56:51', '2026-05-11 06:56:51');
INSERT INTO `stu_task` VALUES (6, 10001, 'TODO', '课表数据自查', '检查课程节次与地点是否有冲突', '2025-2026-1', NULL, NULL, 'LOW', 'DONE', '2026-05-10 06:56:51', 0, NULL, 'test@qq.com', 0, NULL, '2026-05-11 06:56:51', '2026-05-11 06:56:51');

-- ----------------------------
-- Table structure for sys_campus_knowledge
-- ----------------------------
DROP TABLE IF EXISTS `sys_campus_knowledge`;
CREATE TABLE `sys_campus_knowledge`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `type_id` bigint NOT NULL COMMENT '分类ID',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '知识标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '富文本正文内容',
  `file_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '附件地址（PDF/Word）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态 0草稿 1已发布',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '校园知识内容表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_campus_knowledge
-- ----------------------------
INSERT INTO `sys_campus_knowledge` VALUES (1, 1, '学生学籍管理总则', '为规范本校学生学籍管理，维护正常教学秩序，保障学生合法权益，依据教育部相关规定，结合本校实际制定本总则。所有在校学生必须遵守学籍注册、异动办理、休学复学、退学结业等相关管理要求，未按规定办理手续者按违纪处理。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (2, 1, '校园宿舍管理条例', '学生宿舍实行统一封闭式管理，住宿学生需遵守作息时间，严禁晚归、夜不归宿。宿舍内禁止使用大功率电器、私拉乱接电线，禁止存放易燃易爆、管制刀具等违禁物品，保持宿舍卫生整洁，轮流值日打扫。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (3, 1, '校园网络使用管理规定', '全校师生需文明使用校园网络，不得利用网络发布不良信息、造谣传谣、攻击校园服务器。禁止私自破解校园WiFi、盗用他人网络账号，严禁访问非法网站、传播盗版资源，违规者将暂停网络使用权限。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (4, 1, '图书馆借阅管理规定', '学生凭校园卡入馆借阅图书，每人单次最多借阅8本，借阅期限30天，可续借一次。逾期未还按天收取滞纳金，损坏、遗失图书需按原价3-5倍赔偿，严禁在图书上涂鸦、撕页、裁剪。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (5, 1, '食堂就餐文明管理规范', '食堂实行排队就餐制度，禁止插队、占位、浪费粮食。就餐完毕自觉将餐具送至回收处，禁止随地乱扔垃圾、大声喧哗，严禁恶意损坏食堂设施、辱骂工作人员。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (6, 2, '学生请假完整办理流程', '1. 学生登录校园系统填写请假申请，选择请假类型、起止时间、请假原因；2. 提交辅导员审核；3. 辅导员审核通过后提交学院领导审批；4. 审批完成后生成请假凭证；5. 假期结束返校后及时销假，逾期未销假按旷课处理。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (7, 2, '奖学金申请评选流程', '1. 每年9月学校发布奖学金评选通知；2. 学生对照评选条件自行提交申请表及绩点、荣誉证明材料；3. 班级初审推荐；4. 学院复审公示；5. 学校终审发文，发放奖学金及荣誉证书。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (8, 2, '休学复学办理流程', '1. 学生因身体、学业等原因申请休学，填写休学申请表并附相关证明；2. 辅导员、学院签字审核；3. 教务处审批备案；4. 办理离校手续；5. 休学期满提前申请复学，提交复学材料审核通过后方可返校入学。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (9, 2, '校园卡挂失补办流程', '1. 校园卡丢失后第一时间在校园APP自助挂失；2. 携带身份证前往校园卡服务中心；3. 缴纳补办工本费；4. 工作人员录入信息制卡；5. 当场领取新卡并自动同步原有余额及权限。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (10, 2, '社团成立注册流程', '1. 发起人提交社团成立申请书、章程、发起人名单；2. 校团委初审材料；3. 现场答辩评审；4. 公示无异议后正式注册；5. 领取社团公章及活动备案表，按规定开展校园活动。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (11, 3, '学生日常行为规范准则', '在校期间学生需衣着整洁、言行文明，不得染发烫发、穿戴奇装异服。课堂保持安静，不迟到、早退、旷课，尊重老师教学成果，同学之间团结友爱，禁止打架斗殴、欺凌同学。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (12, 3, '课堂考勤与纪律要求', '上课提前5分钟进入教室，做好课前准备，严禁课堂玩手机、睡觉、闲聊、吃东西。无故缺勤按旷课记录，迟到三次折算一次旷课，旷课达到规定学时将给予纪律处分。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (13, 3, '校园文明交往行为准则', '倡导文明礼貌交往，禁止男女学生过度亲密行为，不在校园公共区域追逐打闹、大声喧哗。爱护校园花草树木、公共设施，不随地吐痰、不乱扔垃圾，自觉维护校园环境。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (14, 3, '考试诚信考风考纪规定', '所有校内考试必须诚信应考，严禁夹带资料、偷看抄袭、传递答案、替考代考等作弊行为。一经发现立即取消考试成绩，给予记过及以上处分，记入学生档案。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (15, 4, '关于晚归夜不归宿违纪通报', '近期巡查发现多名学生存在晚归、夜不归宿行为，违反宿舍管理条例。现对相关学生予以全院通报批评，责令书面检讨，再次违反将给予纪律处分，各班级需加强学生作息管理教育。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (16, 4, '关于考试作弊学生处分通告', '在本学期期中课程考试中，查实部分学生存在抄袭、夹带作弊行为。依据校规给予记过处分，成绩按零分处理，不得参与本年度评优评先，处分材料永久存入个人学籍档案。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (17, 4, '关于违规使用大功率电器通报', '宿舍安全检查中查获电热锅、电煮壶、热得快等违禁大功率电器，相关宿舍学生违反校园安全管理规定。现予以通报批评，没收违规电器，全校学生引以为戒，杜绝安全隐患。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (18, 4, '恶意造谣网络言论违纪通告', '个别学生利用社交平台编造传播不实校园谣言，造成不良舆论影响，违反网络使用管理规定。现对当事人进行约谈警示、通报批评，情节严重者将移交学校纪检部门处理。', NULL, '1', '', '2026-05-10 08:04:07', NULL);
INSERT INTO `sys_campus_knowledge` VALUES (19, 1, '本科生毕业设计（论文）工作规范', '为加强本科生毕业设计（论文）工作的规范化管理，提高毕业论文质量，培养学生综合运用所学知识解决实际问题的能力，特制定本规范。\n\n**一、选题要求**\n1. 选题应符合专业培养目标，体现综合训练基本要求。\n2. 题目难易度适当，具有可行性，原则上每人一题。\n3. 鼓励结合生产实际、科学研究及社会热点问题的选题。\n\n**二、开题报告**\n学生需在广泛查阅文献的基础上撰写开题报告，包含研究目的与意义、国内外研究现状、研究内容与方法、进度安排等。开题未通过者需在一周内修改重新开题。\n\n**三、论文撰写**\n严格按照学校规定的格式模板（包括标题、摘要、关键词、正文、参考文献等）进行撰写，正文字数理工科一般不少于8000字，文科不少于10000字。\n\n**四、查重与答辩**\n1. 所有毕业论文均需进行学术不端检测，文字复制比（查重率）不得超过30%。\n2. 答辩采用PPT汇报形式，个人陈述10-15分钟，专家提问5-10分钟。\n3. 答辩未通过者，根据评定结果进行重大修改（二辩）或延期毕业。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (20, 1, '学生转专业实施细则', '为充分尊重学生个性发展，激发学习主动性和积极性，规范校内转专业工作，结合学校实际，制定本细则。\n\n**一、申请资格**\n1. 我校全日制在籍一年级或二年级本科生。\n2. 第一学期或第一学年所有必修课成绩合格（无挂科记录），且综合绩点排名原则上在本专业前30%以内。\n3. 身体条件符合转入专业招生要求。\n\n**二、不得转专业的情形**\n1. 以特殊招生形式（如艺术类、体育类、高水平运动员等）录取的学生。\n2. 正在休学、保留学籍或达到退学条件的学生。\n3. 已有转专业或转学经历的学生。\n\n**三、办理流程与时间**\n1. 每年4月或10月，各学院公布拟接收名额与考核方案。\n2. 学生登录教务系统填写转专业申请，并提交成绩单及个人陈述。\n3. 转入学院组织笔试或面试考核（择优录取）。\n4. 教务处公示拟批准名单（公示期5天）。\n5. 公示无异议后，办理学籍变动手续，并完成新专业培养方案的学分认定。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (21, 1, '课程补考与重修管理规定', '关于课程考核未通过学生的后续学业管理，具体规定如下：\n\n**一、补考规定**\n1. 课程总评成绩在45分（含）至59分（含）之间者，可参加一次学期初的补考。\n2. 补考时间一般为下一学期开学后第2-3周。\n3. 补考成绩按卷面实际得分记载，但最高不超过70分，并注明“补考”字样。\n4. 缺考、作弊及总评成绩低于45分的课程，无补考资格，必须重修。\n\n**二、重修规定**\n1. 学生可自主选择跟班重修或参加周末开设的重修班。\n2. 每学期重修课程原则上不超过3门。\n3. 重修需按学分缴纳重修费（标准为100元/学分）。\n4. 重修课程与正常课程考核方式一致，成绩按实际考核分数录入，不设上限。\n\n**三、注意事项**\n学生在校期间，同一门课程重修次数不得超过两次。若两次重修仍不合格，结业后一年内可申请返校再次重修，合格者换发毕业证书。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (22, 1, '校园商用服务与商户管理规定', '为维护校园正常秩序，保障师生合法权益，对校园内所有商铺、服务网点进行统一规范管理：\n\n**一、经营管理**\n1. 校内商铺必须持有效《营业执照》和《食品经营许可证》（餐饮类）亮证经营。\n2. 所有商品必须明码标价，价格不得明显高于校外同类商品市场均价。\n3. 严禁向学生出售烟酒（尤其是未成年人）、管制刀具及含有暴力色情内容的出版物。\n\n**二、食品安全**\n1. 超市及便利店不得销售“三无”食品、过期变质食品。\n2. 奶茶店、面包房等自制食品需公示添加剂使用情况。\n3. 学校后勤集团每月组织一次商户食品安全突击检查。\n\n**三、投诉与处罚**\n1. 师生可通过“智慧后勤”APP或电话12345进行投诉。\n2. 一经查实有价格欺诈、售卖假货等行为，商户需“退一赔三”，并扣除履约保证金1000元。\n3. 一个季度内累计有效投诉超过5次，学校有权单方面解除租赁合同。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (23, 2, '学生证及火车票优惠卡补办流程', '学生证是证明在校身份的重要证件，火车票学生优惠卡是购买优惠火车票的凭证。如果不慎遗失，请按以下流程及时补办：\n\n**一、挂失准备**\n1. 发现丢失后，第一时间通过“校园信息门户”或“学工系统”进行线上挂失，防止被他人冒用。\n2. 如学生证被冒用造成学校财产损失或声誉影响，原持证人需配合处理。\n\n**二、线上申请与缴费**\n1. 登录“学工一体化平台” -> “学生证补办”模块。\n2. 填写补办理由，上传电子版证件照（蓝底或白底，像素不低于300dpi）。\n3. 缴纳工本费：学生证10元/本，火车票优惠卡7元/张。\n\n**三、现场办理与领取**\n1. 提交申请后，于每周三下午（14:00-17:00）携带身份证前往学生事务大厅（综合楼一楼）办理。\n2. 现场制证，当场领取，如需修改乘车区间（家庭地址变更），需提供父母工作地居住证或暂住证复印件。\n3. 新补办的学生证需重新注册（按学期加盖注册章），火车票优惠卡需重新充磁（每年可享4次优惠）。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (24, 2, '在读证明及成绩单自助打印流程', '为方便学生求职、考研、出国或办理其他业务，学校提供“一站式”自助打印服务，具体流程如下：\n\n**一、服务终端位置**\n1. 主校区：学生事务大厅（24小时开放）、图书馆二楼大厅。\n2. 东校区：综合教学楼一楼大厅。\n3. 北校区：行政楼一楼大厅。\n\n**二、打印步骤**\n1. 使用校园卡刷卡登录，或输入教务系统账号密码登录。\n2. 在主界面选择所需项目：\n   - 中文在读证明（免费，首份免费，第二份起2元/份）\n   - 中文成绩单（免费，首份免费，第二份起5元/份）\n   - 英文在读证明（10元/份，含翻译）\n   - 英文成绩单（15元/份，含翻译及绩点换算说明）\n3. 确认信息无误后，点击“打印”，系统自动盖章（带防伪二维码）。\n\n**三、注意事项**\n1. 成绩单显示所有已修读课程，挂科或补考记录会保留（补考成绩后标注“补考”）。\n2. 如对成绩有异议，需先联系所在学院教务秘书核实，再由教务处修正系统数据。\n3. 自助打印机故障或需办理封装（信封密封盖章），请联系学生事务大厅工作人员。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (25, 2, '毕业生离校手续办理全流程', '毕业生在离校前需办理各项离校手续，结清费用、归还借阅物品，方可领取毕业证及学位证。请按以下步骤操作：\n\n**一、线上离校系统办理（6月上旬启动）**\n1. 登录“离校管理系统”，查看各部门审核状态（财务处、图书馆、宿管中心、教材科等）。\n2. 如有未办结项，需线下处理并等待相关单位在系统内确认通过。\n\n**二、线下必要环节**\n1. **财务结算**：结清学费、住宿费、教材费，多缴费用将统一退还至学生银行卡。\n2. **图书馆清欠**：还清所有借阅图书，结清逾期滞纳金或丢书赔款。\n3. **宿舍退宿**：清理个人物品，归还宿舍钥匙、空调遥控器，验收家具设施。经宿管员查验确认无损坏后，开具《退宿证明》。\n4. **户口迁移**：入学时将户口迁至学校的毕业生，需到保卫处办理户口迁移证。\n\n**三、证书领取**\n1. 所有离校环节均办理完毕后，持本人身份证和《退宿证明》到所在学院学工办领取《毕业证》和《学位证》。\n2. 委托他人代领的，需提供双方身份证复印件及本人手写签名的授权委托书。\n3. 未在规定时间内办结离校手续的学生，证书将暂存学院，最长保管期为一学年，逾期未领取按相关规定处理。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (26, 2, '校园网账号开通、维护及密码找回指南', '校园网是师生在校学习、科研、生活的重要基础设施，为确保安全顺畅使用，请遵守以下指南：\n\n**一、账号开通与资费**\n1. 新生入学后，学校统一开通校园网账号，账号格式为“学号”，初始密码为“身份证号后六位”。\n2. 资费标准：\n   - 基础套餐：每月30元，包含80GB国内流量+校园网不限流量。\n   - 高级套餐：每月60元，包含200GB国内流量+校园网不限流量。\n   - 国际加速包：每月10元，用于访问境外学术数据库（Web of Science、IEEE等）。\n3. 缴费方式：通过“校园卡APP” -> “网络缴费” 或 前往网络与信息中心前台。\n\n**二、密码找回与修改**\n1. **自助重置**：访问校园网自助服务网站（`selfnet.zhihuitong.edu.cn`），点击“忘记密码”，通过绑定手机号或邮箱验证重置。\n2. **线下办理**：如无法自助找回，本人携带学生证或身份证到网络与信息中心（主楼C座104）重置密码。\n3. **安全提示**：请勿将账号借给他人使用，也不要用生日、123456等弱口令。定期修改密码（建议每90天修改一次）。\n\n**三、常见故障处理**\n1. 无法连接WiFi：先尝试“忘记网络”后重新连接，或重启设备。\n2. 认证失败：检查是否欠费或账号被锁定（密码错误超过10次会锁定30分钟）。\n3. 网速慢或断流：避开高峰期（19:00-23:00），或使用网线连接宿舍有线端口。\n4. 报修渠道：拨打服务热线 022-12345678 或 在“掌上校园”APP提交网络故障工单。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (27, 2, '教室/活动场地及报告厅借用申请流程', '为合理调配教学资源，凡校内单位、学生社团或正式注册的团队借用教室、活动场地或报告厅，需履行以下借用手续：\n\n**一、借用类别与权限**\n1. 普通教室：用于班会、自习、社团内部培训等非教学活动，由教务处教务科审批。\n2. 多媒体教室：包含投影、音响、电脑等设备，需提前测试设备兼容性，由现代教育技术中心审批。\n3. 报告厅/礼堂：用于大型讲座、文艺汇演、颁奖典礼等，由校团委或校长办公室审批。\n4. 体育场馆：用于体育比赛、运动会、集体锻炼，由体育教学部审批。\n\n**二、借用流程（OA系统）**\n1. 申请人提前3-7天登录“OA办公系统” -> “会议室/场馆预约”模块。\n2. 填写借用信息：场地名称、使用时间段（精确到小时）、活动内容、预计人数、是否需要特殊设备（如麦克风、投影仪）。\n3. 上传《活动安全责任承诺书》（大型活动需提交安保预案）。\n4. 依次由指导老师（社团用）、部门负责人、场地管理部门审批。\n5. 审批通过后，系统生成《场地使用单》，使用当天需向物业管理人员出示该单据。\n\n**三、使用规范**\n1. 严禁在教室内用餐、吸烟、粘贴横幅或使用双面胶。\n2. 活动结束后关闭电灯、空调、投影仪，清理垃圾，桌椅恢复原位。\n3. 超时使用需重新申请，不得擅自延长时间或转借给校外人员。\n4. 损坏设施按原价赔偿，并视情节严重程度予以通报批评。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (28, 2, '学生宿舍空调租赁及日常报修流程', '为确保学生宿舍空调正常使用，创造舒适的学习生活环境，学校与第三方租赁公司合作提供空调服务，具体规定如下：\n\n**一、租赁办理**\n1. 租赁主体：以宿舍为单位统一办理，舍长负责签约及费用缴纳。\n2. **租赁费用**：\n   - 按学年租赁：400元/学年·间（含安装、维修、拆机费用，不含电费）。\n   - 按学期租赁：240元/学期·间（不推荐，暑假或寒假需搬离）。\n3. 办理地点：开学期间在宿舍楼一楼大厅设临时服务点，日常可至“学生社区服务中心”或在线签约（微信小程序“xx校园服务”）。\n\n**二、使用规范**\n1. 空调专用插座不得接插排或大功率电器（电暖气、电热毯等）。\n2. 夏季制冷设定温度不低于26℃，冬季制热不高于20℃，节约用电。\n3. 离开宿舍时必须关闭空调，禁止长时间空转。\n\n**三、报修流程**\n1. 空调出现故障（不制冷/热、漏水、异响等），首先检查遥控器电池和设置模式是否正确。\n2. 关注微信小程序“XX校园报修” -> 选择“空调报修” -> 填写宿舍号、故障现象、联系电话。\n3. 上传故障视频或照片，便于维修人员判断问题。\n4. 维修人员一般24小时内上门（高峰期可能延长至48小时），请保持手机畅通。\n5. 轻微故障（缺氟、清扫滤网）免费维修；人为损坏（摔坏遥控器、外壳破损）按维修成本价赔偿。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (29, 3, '校园交通安全与电动车管理规定', '为维护校园交通秩序，预防和减少校园交通事故，保障师生人身安全，对校园内机动车及非机动车管理作如下规定：\n\n**一、机动车管理**\n1. 教职工车辆凭“校园车辆通行证”进出校园，时速不得超过20公里/小时。\n2. 外来车辆入校需提前通过“智慧访客系统”预约，或由校内对接单位向保卫处报备。\n3. 车辆必须停放在划定的停车场或停车线内，严禁占用消防通道、人行道、绿化带。\n4. 教学楼、宿舍楼、食堂门前路段禁止长时间停车（即停即走，限时3分钟）。\n\n**二、电动车管理**\n1. 所有电动车必须悬挂公安机关核发的正式号牌，**无牌电动车不得入校**。\n2. 骑行电动车须佩戴安全头盔，后座不得搭载12周岁以上人员。\n3. 电动车在校园内限速15公里/小时，严禁逆向行驶、单手骑车、看手机。\n4. 充电必须在指定的智能充电桩进行（宿舍楼后、地下车库），严禁在宿舍、教学楼、实验楼内充电或飞线充电，违者没收充电器并通报批评。\n\n**三、违规处理**\n1. 违反上述规定，一次警告、二次锁车并通报所在学院、三次取消车辆入校资格。\n2. 因违章造成交通事故或人身伤害的，移交公安机关处理，并追究相关责任。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (30, 3, '实验室安全准入与日常行为准则', '为保障实验教学及科研工作安全有序开展，防止实验室意外事故，全体师生必须遵守以下安全准则：\n\n**一、安全准入制度**\n1. 所有本科生、研究生在进入实验室前，必须完成“实验室安全知识线上学习平台”的课程学习与考试，成绩达到90分以上方可获得准入资格。\n2. 考试不合格可重考，但最多不超过3次。\n3. 进入特殊类别实验室（化学类、生物类、辐射类）还需额外参加专项安全培训。\n\n**二、日常行为规范**\n1. 实验服：进入实验室必须穿着实验服，长发束起，不得穿拖鞋、短裤、裙子。\n2. 个人防护：进行有腐蚀性、刺激性或毒性实验时，必须佩戴护目镜、手套和口罩。\n3. 试剂管理：所有试剂瓶必须有清晰标签（名称、浓度、配制日期、配制人）。\n4. 废弃物处理：实验废物必须分类倒入指定容器（有机废液、无机废液、尖锐物、固体废物），严禁倒入下水道或普通垃圾桶。\n5. 仪器操作：严格按照仪器操作规程进行，不得擅自改装或拆卸。大型精密仪器使用前需登记。\n\n**三、应急处理**\n1. 发生化学品泄漏，立即疏散并上报实验室管理员，根据化学品性质进行中和或吸附处理。\n2. 发生烧伤或割伤，立即用大量清水冲洗，前往校医院或拨打120。\n3. 发现火情，立即关闭电源、气源，使用灭火器扑救，并拨打校内报警电话 1234。\n4. 实验结束时务必断水断电，关好门窗。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (31, 3, '学生勤工助学与校外兼职行为规范', '为培养学生劳动观念和社会实践能力，规范勤工助学及校外兼职活动，提出以下行为准则：\n\n**一、校内勤工助学**\n1. 学生可申请学校提供的校内助学岗位（如图书馆理书员、实验室助理、行政助理等），薪酬标准为15元/小时，每月不超过40小时。\n2. 申请流程：登录“学工系统” -> “勤工助学” -> 查看岗位列表 -> 填写申请并参加面试。\n3. 在岗期间必须认真负责，不得迟到早退，遵守所在部门的劳动纪律。\n\n**二、校外兼职**\n1. 学生在不影响学业的前提下可适度从事校外兼职（如家教、公司实习、服务员等）。\n2. **禁止从事**的活动：\n   - 以学校名义进行商业推广或招生代理。\n   - 参与网络刷单、刷信誉、贷款刷业绩等非法或灰色产业。\n   - 进入酒吧、KTV、夜总会等娱乐场所工作。\n3. **安全提示**：\n   - 务必与用人单位签订书面《劳务协议》，明确工作内容、时长、薪酬及结算方式。\n   - 警惕“先交押金、押身份证、高薪诱惑”等求职陷阱。\n   - 兼职期间注意人身财产安全，告知室友或家人工作地点及返回时间。\n\n**三、违规与处理**\n1. 因校外兼职导致旷课、迟到、成绩严重下滑者，辅导员将约谈并劝其停止兼职，屡教不改者按学籍管理规定处理。\n2. 利用校园资源进行营利性活动或发布虚假招聘信息欺诈同学的，视情节给予警告及以上处分。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (32, 3, '学生宿舍文明卫生及安全管理细则', '为了营造一个整洁、舒适、安全的住宿环境，特制定本管理细则，请全体住宿生严格遵守：\n\n**一、卫生要求**\n1. 每个宿舍建立卫生值日表，每日清扫地面，每周进行一次大扫除（擦窗台、清死角）。\n2. 桌面物品摆放整齐，床铺平整，被子叠放规范，床下鞋子不多于4双且摆放整齐。\n3. 卫生间无异味，便池无黄垢，洗手台无积水。\n4. 宿舍门口及楼道不准堆放垃圾或杂物，垃圾袋装化后带至楼下集中垃圾箱。\n\n**二、安全与秩序**\n1. **严禁使用**：热得快、电热毯、电煮锅、电暖器、电卷棒等发热类大功率电器，宿舍总功率不得超过800W。\n2. **严禁存放**：酒精炉、煤油炉、管制刀具（刀刃超过10cm）、易燃易爆品（鞭炮、汽油）、宠物（猫、狗、仓鼠、鸟类等）。\n3. 严禁留宿异性或校外人员。未经宿管中心批准，不得擅自调换床位或宿舍。\n4. 晚上23:00前必须返回宿舍。晚归者需在前台登记并说明原因，累计晚归3次或夜不归宿1次，将通报至学院学工办。\n\n**三、检查与奖惩**\n1. 宿管员每月组织2次卫生与安全检查，评分结果在宿舍楼内公示栏公布。\n2. 学期末，评选“文明宿舍”并给予一定物质奖励及综测加分。\n3. 脏乱差或违规电器被查获的宿舍，取消该宿舍全体成员当年评优评先资格，责任人按学生违纪处分条例处理。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (33, 4, '关于2024-2025学年第一学期选课安排的通知', '各学院、各年级同学：\n\n2024-2025学年第一学期选课工作即将开始，为确保选课顺利进行，现将有关事项通知如下：\n\n**一、选课时间**\n- **第一轮（初选）**：2024年6月10日 09:00 — 6月16日 23:59 （不限容量，抽签决定）\n- **第二轮（正选）**：2024年6月20日 09:00 — 6月27日 23:59 （先到先得）\n- **第三轮（补退选）**：2024年9月2日 09:00 — 9月8日 23:59 （开学第一周）\n\n**二、选课网址**\n登录“教务处信息服务平台” `http://jw.zhihuitong.edu.cn`，使用学号和密码登录。\n\n**三、注意事项**\n1. 请提前核对本人培养方案，确认应修读的通识选修课、专业选修课类别及学分要求。\n2. 每学期选修总学分不得超过30学分（毕业班除外）。\n3. 第一轮选课不分先后，结束后系统随机筛选中签名单，请勿扎堆选课。\n4. 第二轮选课逾期不再补选，未完成选课者将影响后续参加课程学习及考试。\n5. 选课结束后，务必登录系统查看“我的课表”，并以此为准上课。\n\n请同学们相互转告，按时选课。如有问题，请联系教务处运行科：022-1234567。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (34, 4, '关于申报2024年度国家奖学金及天津市人民政府奖学金的通知', '各学院：\n\n根据教育部及市教委相关文件精神，现启动2024年度国家奖学金及天津市人民政府奖学金评定工作，具体事宜通知如下：\n\n**一、奖励标准及名额**\n- 国家奖学金：8000元/人·年，全校共42名。\n- 天津市人民政府奖学金：8000元/人·年，全校共28名。\n\n**二、申请条件**\n1. 我校全日制在籍二年级（含）以上本科生。\n2. 热爱社会主义祖国，拥护党的领导，遵守宪法和法律，遵守学校规章制度。\n3. 诚实守信，道德品质优良，无违纪处分记录。\n4. **学习要求**：上一学年各门课程成绩均在80分以上，且综合测评成绩排名与学习成绩排名均位于专业前10%。\n5. 对于排名在10%-30%之间的学生，如在道德风尚、学术研究、学科竞赛、创新发明、社会实践、体育竞赛、文艺比赛等某一方面表现特别优秀，也可申请。\n\n**三、申请流程与时间节点（暂定）**\n1. **个人申请**（9月15日-9月22日）：学生登录“学工系统”填写《国家奖学金申请审批表》，并提交获奖证书复印件及成绩单。\n2. **学院初评**（9月23日-9月30日）：学院评审小组对申请人进行资格审查和答辩评审，确定拟推荐名单并公示5个工作日。\n3. **学校审定**（10月8日-10月15日）：学校评审委员会对各学院推荐人选进行评审，确定最终名单，全校公示5天。\n4. **表彰发放**：公示无异议后，报上级部门审批，12月底前将奖学金一次性发放至学生银行卡，并颁发荣誉证书。\n\n**四、其他说明**\n1. 同一学年内，国家奖学金、天津市人民政府奖学金、国家励志奖学金不可兼得。\n2. 申请材料弄虚作假者，一经查实，取消资格并给予相应纪律处分。\n\n联系人：张老师 联系电话：022-7654321', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (35, 4, '关于防范电信网络诈骗的紧急安全提示', '全体师生员工：\n\n近期，电信网络诈骗案件呈多发态势，不法分子针对大学生群体冒充公检法、电商客服、学校老师等身份实施诈骗。为切实保障广大师生的财产安全，保卫处发布紧急安全提示：\n\n**一、常见诈骗类型**\n1. **冒充客服退款类**：谎称网购商品质量问题或快递丢失，以“退款”或“理赔”为名，诱导你点击钓鱼链接或提供短信验证码。\n2. **刷单返利类**：以“足不出户、日进斗金”为诱饵，先给少量返利，后以“联单”“卡单”为由拒绝返款并拉黑。\n3. **冒充熟人类**：盗取QQ或微信，冒充同学、老师、亲戚，以“生病急用钱”“交报名费”等理由要求转账。\n4. **虚假贷款类**：以“无抵押、低利息、秒到账”为诱饵，称你卡号填写错误要求缴纳“解冻费”或“保证金”。\n5. **杀猪盘（交友诱导投资）**：在婚恋或社交平台伪装成高富帅、白富美，建立感情后诱导参与虚假投资理财或赌博。\n\n**二、防范要点（四个“凡是”）**\n1. 凡是陌生人要求转账、汇款、提供验证码的，**都是诈骗**。\n2. 凡是声称“注销校园贷”否则影响征信的，**都是诈骗**。\n3. 凡是通知“家属”出事要先汇款的，**都是诈骗**。\n4. 凡是自称领导、老师要求转账到“安全账户”的，**都是诈骗**。\n\n**三、求助渠道**\n1. 全国反诈专线：**96110**（来电务必接听）。\n2. 保卫处报警电话：**022-12345678**（24小时）。\n3. 下载“国家反诈中心”APP，实名注册并开启来电预警功能。\n\n请各学院、各部门加强反诈宣传教育，提醒师生员工不轻信、不转账、不透露。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (36, 4, '关于评选2023-2024学年“优秀学生干部”及“先进班集体”的通知', '各学院学工办：\n\n为树立先进典型，激励广大学生德智体美劳全面发展，加强班集体建设，学校决定开展2023-2024学年“优秀学生干部”及“先进班集体”评选工作。现将有关事宜通知如下：\n\n**一、评选对象**\n1. 优秀学生干部：全日制二年级（含）以上本科生中担任班委、党支部委员、团支委、院（校）学生会干部等职务满一年的学生。\n2. 先进班集体：全校二年级（含）以上自然班。\n\n**二、评选条件**\n**（一）优秀学生干部**\n1. 理想信念坚定，拥护党的领导，积极践行社会主义核心价值观。\n2. 学习态度端正，刻苦努力，上一学年综合测评成绩排名在专业前50%，无补考或重修课程。\n3. 热心服务同学，工作积极主动，有较强的组织协调能力，在同学中有较高威信。\n4. 积极参加社会实践、志愿服务和文体活动，身心健康。\n\n**（二）先进班集体**\n1. 班委会、团支部团结协作，班风积极向上，班级制度健全。\n2. 班级学风优良，不及格率低，英语四六级通过率高，无考试作弊行为。\n3. 班级成员遵纪守法，一学年内无人受到违纪处分。\n4. 积极开展主题班会、团日活动及文体活动，班级凝聚力强。\n\n**三、评选程序**\n1. **申报阶段**（11月1日-11月10日）：符合条件的个人或集体填写申报表，并附事迹材料（不少于1000字）及佐证材料，提交至学院学工办。\n2. **学院初评**（11月11日-11月20日）：学院召开评选会议，确定推荐名单，并在学院内公示3个工作日。\n3. **学校评审**（11月21日-11月30日）：学生处对推荐材料进行审核，组织校级评审答辩（先进班集体需PPT展示），确定最终名单。\n4. **表彰宣传**（12月上旬）：发文表彰，颁发荣誉证书及奖金（优秀学生干部500元/人，先进班集体1000元/班），并通过橱窗、校园网宣传先进事迹。\n\n请各学院高度重视，严格按照条件与程序，公开、公平、公正地做好评选推荐工作。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (37, 2, '大学生城镇居民医疗保险（医保）报销指南', '为保障学生基本医疗需求，减轻医疗费用负担，我校学生统一参加天津市城乡居民基本医疗保险。现将报销相关事宜说明如下：\n\n**一、参保范围与缴费**\n1. 全体全日制本专科生、研究生。\n2. 每年9月至12月为集中参保缴费期，医保待遇享受期为次年1月1日至12月31日。\n3. 缴费标准：每人每年250元（困难学生、残疾学生减免）。\n\n**二、报销范围与比例**\n1. **门诊（普通门急诊）**：\n   - 仅限校医院或转诊至定点医院（天津医科大学总医院、天津医院等）。\n   - 起付线：500元/年，报销比例50%，年度封顶线4000元。\n2. **住院**：\n   - 一级医院：起付线300元，报销比例80%。\n   - 二级医院：起付线600元，报销比例70%。\n   - 三级医院：起付线900元，报销比例60%。\n   - 年度封顶线18万元。\n3. **门诊大病（恶性肿瘤放化疗、肾透析、器官移植抗排异等）**：\n   - 起付线500元，报销比例65%，与住院共用年度封顶线。\n\n**三、报销流程**\n1. **校医院就诊**：直接刷医保电子凭证或社保卡结算，个人仅支付自费部分。\n2. **转诊或急诊外院就诊**：\n   - 全额垫付医疗费用。\n   - 准备材料：身份证/社保卡复印件、诊断证明（加盖医院公章）、费用清单、发票原件、转诊证明（急诊不需要）。\n   - 每月1-10日（工作日）将材料提交至校医院医保办公室。\n   - 学校统一向医保局申报，报销金额约1-2个月打入学生银行卡。\n\n**四、注意事项**\n1. 非定点医院、美容整形、牙科修复（种牙、正畸）、自购药品不予报销。\n2. 商业保险可作为补充报销，先报医保，再用商保报销剩余部分。\n3. 寒暑假或实习期间在外地就医，需先备案，回校后提交材料报销，报销比例降低10%。\n4. 医保政策每年可能微调，请关注“校医院”微信公众号获取最新通知。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (38, 4, '关于举行2024年田径运动会及停课安排的通知', '各学院、各部门：\n\n为全面贯彻党的教育方针，推动全民健身运动，增强师生体质，经学校研究决定，于2024年5月17日-18日（星期五、星期六）举行校田径运动会。现将有关事项通知如下：\n\n**一、时间与地点**\n1. 时间：2024年5月17日 08:00 开幕式，5月18日 16:30 闭幕式。\n2. 地点：主校区体育场。\n\n**二、停课安排**\n1. 5月17日（星期五）全校本科生、研究生**停课一天**。\n2. 所停课程由任课教师自行安排时间补课或调整教学进度。\n\n**三、开幕式要求**\n1. 各学院需组织学生方队入场，方队人数不少于60人，服装统一，精神饱满。\n2. 5月17日上午07:30前，各学院方队在指定地点集合完毕。\n3. 参加广播体操表演及团体操表演的学生按体育教学部统一安排提前彩排。\n\n**四、观赛与纪律**\n1. 运动会期间，各学院需组织本学院学生在看台指定区域就座观赛，做好考勤工作，不得无故缺席。\n2. 严禁非参赛人员进入比赛场地，服从裁判员及工作人员管理。\n3. 文明观赛，不得喝倒彩、乱扔垃圾，保持看台卫生。\n\n**五、安全与后勤**\n1. 参赛运动员赛前进行体检，身体不适者请勿参赛。\n2. 现场设医疗保障点（体育场西门），备有急救药品及器械。\n3. 如遇恶劣天气，运动会推迟举行，届时另行通知。\n\n请各单位认真做好组织工作，确保运动会安全、有序、精彩、圆满。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (39, 3, '学生文明上网及网络言行规范', '为净化网络环境，维护校园网络秩序，倡导文明上网，根据《中华人民共和国网络安全法》及学校相关管理规定，特制定本规范：\n\n**一、使用校园网**\n1. 严禁利用校园网络从事攻击、侵入他人计算机系统，或制作、传播计算机病毒等破坏性程序。\n2. 严禁私自架设代理服务器、VPN或Wi-Fi热点（宿舍有线网络转无线）。\n3. 不得盗用他人IP地址、账号密码。\n\n**二、网络言行**\n1. **严禁传播**：捏造或歪曲事实、散布虚假信息、制造校园恐慌的言论。\n2. **严禁发布**：淫秽、色情、赌博、暴力、凶杀、恐怖或教唆犯罪的信息。\n3. **严禁侮辱**：公然侮辱他人或者捏造事实诽谤他人、老师、学校，侵害他人名誉权、隐私权。\n4. **谨慎发言**：在社交平台（微博、抖音、小红书、朋友圈）发布与学校相关的内容时，不应泄露国家秘密或学校科研机密。\n\n**三、违规与处理**\n1. 情节轻微的，由学院或辅导员进行批评教育。\n2. 情节较重，造成不良影响的，依据《学生违纪处分条例》给予警告至记过处分。\n3. 情节严重，违反国家法律法规的，移交公安机关处理，学校给予开除学籍处分。\n\n网络空间不是法外之地，请各位同学文明上网、理性发声，共同维护清朗的网络空间。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (40, 1, '本科生辅修专业及辅修学士学位管理办法', '为鼓励学有余力的学生拓展知识面，培养复合型人才，学校推行辅修专业及辅修学士学位制度，具体管理办法如下：\n\n**一、申请条件**\n1. 我校全日制在籍一年级或二年级本科生。\n2. 主修专业已修读课程全部合格，且综合绩点不低于2.5（或平均分75分以上）。\n3. 申请攻读辅修学士学位的学生，主修专业与辅修专业应分属不同学科门类。\n\n**二、教学与学分**\n1. 辅修专业总学分一般为40-50学分，辅修学士学位总学分为50-60学分（含毕业设计/论文）。\n2. 上课时间一般安排在周末、晚间或暑假小学期。\n3. 辅修课程成绩单独记载，不及格可补考或重修。\n\n**三、证书与学位**\n1. 完成辅修专业培养方案规定的全部课程且成绩合格，颁发**辅修专业证书**（不另授学位）。\n2. 完成辅修学士学位培养方案（含毕业设计/论文），且主修专业获得学士学位者，颁发**辅修学士学位证书**（在学位证上注明）。\n3. 主修专业未能毕业者，无论是否完成辅修学业，均不颁发辅修证书或学位。\n\n**四、收费与流程**\n1. 按学分收费，标准为120元/学分。\n2. 申请流程：每学期第12-14周，登录教务系统填报辅修志愿 -> 辅修学院审核 -> 教务处备案 -> 缴纳学费 -> 选课修读。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (41, 2, '学生违纪处分申诉与撤销流程', '为保障学生合法权益，确保处分决定公正、公平，凡对学校做出的违纪处分决定有异议的学生，可按以下流程提出申诉或申请撤销处分：\n\n**一、处分申诉流程（收到处分决定书后10个工作日内）**\n1. 学生本人填写《学生违纪处分申诉表》（可在学生处网站下载），陈述申诉理由并附上相关证据材料。\n2. 将申诉表提交至所在学院学工办，学院在3个工作日内签署意见。\n3. 学生处（或研究生院）受理申诉，并成立学生申诉处理委员会。\n4. 委员会在接到申诉书后15个工作日内进行复查，并做出复查结论。\n5. 复查结论分为：维持原处分决定、撤销处分决定或变更处分决定。\n6. 申诉期间，不停止原处分决定的执行。\n\n**二、处分撤销/解除流程（考察期满后）**\n1. 处分考察期：警告、严重警告为6个月；记过为9个月；留校察看为12个月。\n2. 学生在考察期内无任何违纪行为，且表现良好（如获得奖学金、积极参加公益活动等），可申请解除。\n3. 填写《学生违纪处分解除申请表》，撰写个人思想汇报（不少于800字），并附考察期内获奖证明。\n4. 班级评议、辅导员签署意见 -> 学院党政联席会审议 -> 学生处审核 -> 学校主管领导批准。\n5. 处分解除后，原处分材料不再存入个人档案（除开除学籍外），取消评优评先的限制。\n\n**三、注意事项**\n1. 受处分学生应端正态度，积极改正。受处分期间再次违纪的，加重一级处分。\n2. 毕业时处分尚未解除的，暂缓发放毕业证或学位证。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (42, 4, '关于2024年暑假期间留校学生管理及服务安排的通知', '各位同学：\n\n2024年暑假将至，为做好暑期留校学生的管理与服务工作，确保留校学生度过一个平安、充实的假期，现将有关事项通知如下：\n\n**一、留校申请**\n1. 因考研复习、实习、竞赛集训、科研任务等原因确需留校的学生，须于**6月30日前**登录“学工系统” -> “假期留校申请”模块填写申请，并上传家长知情同意书。\n2. 经辅导员、学院、学生处逐级审批通过后，方可留校。\n3. 未提交申请或未经批准的学生，暑假期间原则上不得留校住宿。\n\n**二、集中住宿安排**\n1. 为节约资源，暑假期间实行**集中住宿**。所有留校学生须服从宿管中心统一安排，搬到指定宿舍楼（男生：14号楼，女生：18号楼）。\n2. 集中搬入时间为7月10日-12日，搬回原宿舍时间为8月28日-30日。\n\n**三、食堂与商铺开放**\n1. 暑假期间开放**第二食堂**（营业时间：早餐 07:30-08:30，午餐 11:30-12:30，晚餐 17:30-18:30）。\n2. 校园超市（北区店）正常营业，营业时间调整为10:00-18:00。\n\n**四、安全与纪律**\n1. 留校学生必须严格遵守宿舍管理规定，严禁使用明火和大功率电器，严禁留宿外人。\n2. 实行**晚点名制度**：每晚22:30由楼层长统计人数，未归且失联者将上报辅导员和保卫处。\n3. 注意出行安全，外出市区的同学请结伴而行，避开偏僻路段。\n4. 如中途离校回家，须提前向辅导员报备。\n\n**五、值班与联系方式**\n- 学生处值班电话：022-1234567\n- 保卫处值班电话：022-7654321\n- 校医院值班电话：022-8888888\n\n请留校同学相互转告，合理安排学习与生活，注意劳逸结合，祝大家假期愉快！', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (43, 3, '学生个人形象与公共场所行为规范', '校园是教书育人的神圣殿堂，每一位学生都应注重个人形象与公共场合举止，展现当代大学生积极向上的精神风貌。具体规范如下：\n\n**一、仪容仪表**\n1. 着装整洁、得体、大方，不得穿睡衣、背心、拖鞋进入教学区（教室、自习室、图书馆、实验室）。\n2. 不染夸张色彩的发色（如荧光色、鲜红色等），男生不留长发（前不覆额、侧不掩耳），不剃光头。\n3. 不留长指甲，不在裸露皮肤纹身（提倡无纹身），不佩戴夸张饰品。\n4. 保持身体清洁无异味，建议健身或剧烈运动后洗澡、更换衣物后再进入公共场合。\n\n**二、公共场合行为**\n1. **教室/图书馆**：手机调至静音或震动，不得接打电话。吃零食或喝饮料不得发出声响，不得吃味道浓烈的食物（如韭菜盒子、螺蛳粉）。\n2. **食堂**：排队取餐，一人一位，不得用书包占座。倡导“光盘行动”，残渣剩菜倒入泔水桶。\n3. **公共卫生间**：文明如厕，便后冲水。卫生纸丢入纸篓，不得丢入便池（以免堵塞）。\n4. **校园道路**：男女交往行为得体，不得在公共区域搂抱亲热、卿卿我我。\n\n**三、语言文明**\n1. 提倡使用文明用语“请、谢谢、对不起、你好”。\n2. 严禁讲脏话、粗话、侮辱性言语，严禁说挖苦嘲讽的话。\n\n**四、违规劝导**\n对于违反上述规范的学生，任何人都有权提醒和劝止。对于屡教不改、态度恶劣者，学校将视情节进行通报批评。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (44, 2, '毕业生档案转递及报到证办理指南', '毕业生档案是学生毕业前家庭情况、学习成绩、政治思想表现、身体状况的记载材料，是用人单位选拔、聘用毕业生的重要依据。毕业时务必办理档案转递手续：\n\n**一、档案转递类型与流程**\n1. **已就业（单位接收档案）**：\n   - 与用人单位签订《三方协议》，且单位具备人事档案管理权（国企、事业单位、公务员单位）。\n   - 毕业前将《接收函》或调档函交至学院。\n   - 学校于7月中旬通过EMS“高校毕业生档案专用通道”统一寄送至单位。\n2. **已就业（单位不接收档案）或未就业**：\n   - 档案转回生源地（户籍所在地）的公共就业和人才服务机构（一般为市级或区县级人才中心）。\n   - 毕业前确认生源地接收单位名称及地址，登录“智慧就业平台”填写。\n   - 学校于7月底前寄出档案。\n3. **考研/升学**：\n   - 凭录取学校的《调档函》到学院办理档案转寄。\n\n**二、报到证办理**\n1. 报到证是毕业生到就业单位报到的凭证，也是干部身份、落户、转正定级的依据。\n2. 2023年起，国家不再发放纸质《报到证》，改为电子版《就业报到证》或取消报到证。请务必关注“天津市大中专学校就业信息网”最新政策。\n3. 如有需要，可联系招生就业处开具《就业推荐表》或《在职证明》。\n\n**三、注意事项**\n1. 档案严禁个人携带，严禁私自拆封（拆封即失效，任何单位不予接收）。\n2. 毕业后三个月内，务必向档案接收单位确认档案是否已寄达。\n3. 如档案丢失或去向不明，应及时联系学校就业指导中心查询EMS底单或派发记录。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (45, 2, '校内学术资源使用指南（知网、Web of Science、VPN）', '为支持师生教学科研，我校购买了多个国内外主流学术数据库，师生可免费使用校内IP地址访问。如需校外访问，需使用VPN。指南如下：\n\n**一、常用数据库及访问入口**\n1. **中国知网（CNKI）**：`https://www.cnki.net` 收录期刊、硕博论文、会议论文、报纸、年鉴等。\n2. **万方数据**：`https://www.wanfangdata.com.cn` 侧重于学术期刊、学位论文、专利。\n3. **Web of Science (SCI/SSCI)**：`https://www.webofscience.com` 全球权威的引文索引数据库。\n4. **IEEE Xplore**：`https://ieeexplore.ieee.org` 电子电气及计算机领域顶级文献库。\n5. **Elsevier (ScienceDirect)**：`https://www.sciencedirect.com` 收录爱思唯尔旗下期刊。\n\n**二、校内访问方法**\n1. 连接校园网（WiFi名称：`ZHIHUITONG-EDU` 或宿舍有线网络）。\n2. 直接点击图书馆网站提供的数据库链接，系统自动识别IP，无需额外付费。\n3. 下载文献前，注意查看该期刊是否被我校订购（如未订购，仅能查看摘要）。\n\n**三、校外访问方法（VPN）**\n1. 访问图书馆网站 -> “校外访问” -> “VPN客户端下载”。\n2. 安装客户端后，输入学号/工号及校园网密码登录（需在信息办开通VPN权限）。\n3. 或使用WebVPN（网页版）：`https://vpn.zhihuitong.edu.cn`，登录后即可像校内一样访问数据库。\n4. **注意**：严禁使用迅雷、IDM等多线程工具批量下载文献，否则IP会被数据库商封禁。\n\n**四、文献传递服务**\n如我校未订购某篇文献，可通过“CALIS文献传递”或“读秀学术搜索”的“图书馆文献传递”功能，提交申请后一般2个工作日内会发送到邮箱。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (46, 4, '关于严禁在宿舍楼内吸烟及使用明火的通告', '全体住宿生：\n\n近期接到多起关于宿舍楼内吸烟及存在烟味的投诉，且烟头引发火情的安全隐患极大。为保障全体住宿生的生命财产安全，根据消防法律法规及学校安全管理规定，现就严禁在宿舍楼内吸烟及使用明火通告如下：\n\n**一、严禁范围**\n1. **严禁在宿舍房间内、阳台、楼道、卫生间、盥洗室、楼梯间等楼内任何区域吸烟。**\n2. 严禁使用蜡烛、蚊香、酒精灯、煤气罐等明火。\n3. 严禁焚烧纸张、杂物。\n\n**二、吸烟区设置**\n1. 学校在每栋宿舍楼**外**设置了专门的吸烟区（配有烟灰缸及灭火器），具体位置：\n   - 1-4号楼：南侧花坛旁\n   - 5-8号楼：北侧自行车棚对面\n   - 9-12号楼：东侧小广场\n2. 有吸烟习惯的学生请移步至室外吸烟区，吸烟后确保烟头完全熄灭，并丢入烟灰缸。\n\n**三、违规处罚**\n1. **第一次查获**：通报所在学院，辅导员约谈，责令其打扫宿舍楼内公共区域卫生一周。\n2. **第二次查获**：给予警告处分，取消当年评优评先资格，并发文通报批评。\n3. **第三次查获**：给予严重警告处分，并通知家长，取消住宿资格（需搬离宿舍，自行解决住宿）。\n4. 因吸烟或使用明火引发火情的，无论后果大小，一律给予留校察看及以上处分，并承担相应经济赔偿及法律责任。\n\n**四、监督举报**\n鼓励广大学生相互监督，发现违规吸烟或使用明火行为，可向宿管员或保卫处举报。举报一经查实，对举报人给予一定物质奖励（50元/次）。\n\n消防安全，人人有责。请各位同学珍爱生命，远离火灾隐患！', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (47, 1, '学生综合素质测评实施办法', '为全面贯彻党的教育方针，引导学生德智体美劳全面发展，特制定《学生综合素质测评实施办法》。测评结果作为奖学金评定、评优评先、推优入党、毕业鉴定等重要依据。\n\n**一、测评内容及权重**\n综合素质测评总分100分，由以下四部分构成：\n1. **思想道德素质（20分）**：包含政治态度、思想品德、集体观念、遵纪守法、诚实守信等。基准分14分，表现突出加分，违规违纪扣分（如受警告处分扣5分）。\n2. **学业成绩（55分）**：依据学年平均学分绩点（GPA）折算。\n   - 计算公式：`（个人GPA / 4.5） * 55`\n   - GPA4.0以上可得50分以上。\n3. **文体活动与社会实践（15分）**：\n   - 参加学术竞赛、文体比赛、志愿服务、社会实践、科创项目等。\n   - 国家级获奖加5分，省部级加3分，校级加1-2分，累计不超过15分。\n4. **公寓表现（10分）**：\n   - 依据宿舍卫生检查结果及遵守宿管纪律情况。\n   - 满分10分，一次不合格扣2分，违纪（晚归、使用违规电器）一次扣3分。\n\n**二、测评流程**\n1. **个人自评**：每学年9月，学生登录学工系统填写自评表，提交加分证明材料。\n2. **班级评议**：班委会和团支部组成测评小组，审核材料真实性。\n3. **辅导员审核**：辅导员结合日常记录，核定最终得分。\n4. **公示**：学院审核后在班级群、公告栏公示3天，无异议后备案。\n\n**三、结果应用**\n1. 综合测评排名在专业前10%者可申请“三好学生标兵”。\n2. 排名在专业前30%者可申请“三好学生”、“优秀学生干部”。\n3. 排名在后10%者，辅导员需进行学业预警谈话。', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (48, 2, '征兵入伍学费补偿及学籍保留流程', '为鼓励大学生投身国防事业，国家对应征入伍服义务兵役的高校学生实行学费补偿、助学贷款代偿及学籍保留政策。具体流程如下：\n\n**一、申请条件**\n1. 我校全日制在籍本科生、研究生。\n2. 政治审查、体格检查双合格，被批准入伍。\n\n**二、学费补偿/贷款代偿标准**\n1. 本科生每人每年最高**12000元**，研究生每人每年最高**16000元**。\n2. 在校期间已缴纳的学费或获得的助学贷款，国家一次性补偿或代偿。\n\n**三、办理流程（入伍前）**\n1. 登录“全国征兵网” `www.gfbzb.gov.cn`，填写《应征入伍服兵役高等学校学生国家教育资助申请表》（一式两份），打印并签字。\n2. 持《申请表》到财务处审核学费缴纳情况 -> 学生处审核资助资格 -> 校领导签字盖章。\n3. 将《申请表》及《入伍通知书》复印件交至学生处资助管理中心。\n4. 学校复核汇总后报送全国学生资助管理中心，审批通过后约3-6个月将补偿款打入学生银行卡。\n\n**四、学籍保留**\n1. 凭《入伍通知书》到教务处办理休学手续，休学原因选择“参军入伍”。\n2. 学校为其保留学籍至退伍后两年。\n3. 退伍后持《退伍证》到教务处办理复学手续，可申请转专业（限一次）。\n4. 退役大学生士兵完成本科学业后，3年内参加全国硕士研究生招生考试，初试总分加10分，同等条件下优先录取。（部分省份有专项招生计划）', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');
INSERT INTO `sys_campus_knowledge` VALUES (49, 4, '关于2024级新生入学体检及军训安排的通知', '2024级新同学：\n\n欢迎加入智慧通大学！为保障你的健康和顺利开展军训工作，现将入学体检及军训安排通知如下：\n\n**一、入学体检**\n1. 时间：2024年9月2日-9月5日（按学院分批进行）。\n2. 地点：校医院（综合楼东侧）。\n3. 项目：身高体重、视力、内外科、肝功能、胸片等。\n4. 注意事项：\n   - 体检前一天清淡饮食，体检当日需抽血，请保持空腹（禁食8小时，禁水4小时）。\n   - 携带身份证及一寸免冠照片一张。\n   - 如身体有特殊情况（心脏病、哮喘、癫痫、骨折等），请提前告知医生。\n\n**二、军训安排**\n1. 时间：2024年9月6日 — 9月20日（共15天）。\n2. 地点：主校区田径场、篮球场。\n3. 内容：队列训练、军体拳、内务整理、国防教育讲座、歌咏比赛、汇报表演等。\n4. **军训服装**：学校统一招标采购，含迷彩服、短袖T恤、迷彩帽、解放鞋、腰带。费用85元/套。领取时间：9月4日-5日，地点：大学生活动中心。\n\n**三、军训纪律与要求**\n1. 全体新生必须参加军训，军训成绩记入学分（2学分）。\n2. 因身体原因不能参加剧烈运动的，须凭三甲医院诊断证明向学院申请“跟训”（参加理论学习及后勤服务）。\n3. 军训期间严格考勤，迟到、早退、旷训者按《学生违纪处分条例》处理。\n4. 注意防暑防晒，及时补充水分，如有身体不适立即报告教官和辅导员。\n\n**四、温馨提示**\n1. 准备一两双软底、透气的运动鞋垫，解放鞋底较硬。\n2. 大容量水杯（1.5L以上），可适量补充淡盐水。\n3. 做好防晒措施，防止晒伤。\n4. 不要佩戴首饰、手表，以免划伤或损坏。\n\n请同学们按时参检、参训，展现新时代大学生的昂扬斗志和良好风貌！', NULL, '1', '', '2026-05-12 06:53:59', '2026-05-12 06:53:59');

-- ----------------------------
-- Table structure for sys_campus_knowledge_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_campus_knowledge_type`;
CREATE TABLE `sys_campus_knowledge_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名称：规章制度/办事流程/校风校纪/通告批评',
  `sort` int NULL DEFAULT 0 COMMENT '排序号',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态 0正常 1停用',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '校园知识分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_campus_knowledge_type
-- ----------------------------
INSERT INTO `sys_campus_knowledge_type` VALUES (1, '规章制度', 1, '0', '2026-05-10 08:03:51');
INSERT INTO `sys_campus_knowledge_type` VALUES (2, '办事流程', 2, '0', '2026-05-10 08:03:51');
INSERT INTO `sys_campus_knowledge_type` VALUES (3, '校风校纪', 3, '0', '2026-05-10 08:03:51');
INSERT INTO `sys_campus_knowledge_type` VALUES (4, '通告批评', 4, '0', '2026-05-10 08:03:51');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2026-05-07 14:50:30', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2026-05-07 14:50:30', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2026-05-07 14:50:30', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2026-05-07 14:50:30', 'admin', '2026-05-08 14:31:15', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2026-05-07 14:50:30', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2026-05-07 14:50:30', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
INSERT INTO `sys_config` VALUES (7, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '1', 'Y', 'admin', '2026-05-07 14:50:30', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2026-05-07 14:50:30', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (9, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2026-05-07 14:50:30', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2026-05-07 14:50:16', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2026-05-07 14:50:29', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '星期一', '1', 'course_week', NULL, 'default', 'N', '0', 'admin', '2026-05-08 11:45:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '星期二', '2', 'course_week', NULL, 'default', 'N', '0', 'admin', '2026-05-08 11:45:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 3, '星期三', '3', 'course_week', NULL, 'default', 'N', '0', 'admin', '2026-05-08 11:45:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 4, '星期四', '4', 'course_week', NULL, 'default', 'N', '0', 'admin', '2026-05-08 11:45:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 5, '星期五', '5', 'course_week', NULL, 'default', 'N', '0', 'admin', '2026-05-08 11:45:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 0, '规章制度', 'rulesRegulations', 'rules_regulations', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:24:46', '', NULL, '这是校园的规章制度');
INSERT INTO `sys_dict_data` VALUES (106, 0, '办事流程', 'workProcess', 'rules_regulations', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:25:18', '', NULL, '这是校园事项的操作流程');
INSERT INTO `sys_dict_data` VALUES (107, 0, '校风校纪', 'schoolDiscipline', 'rules_regulations', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:25:44', '', NULL, '这是校风校纪');
INSERT INTO `sys_dict_data` VALUES (108, 0, '通告批评', 'criticismNotice', 'rules_regulations', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:26:16', '', NULL, '这是有关的通告批评记录');
INSERT INTO `sys_dict_data` VALUES (109, 0, '草稿', '0', 'statue', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:33:57', '', NULL, '没有发布');
INSERT INTO `sys_dict_data` VALUES (110, 0, '已发布', '1', 'statue', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:34:07', '', NULL, '已经发布了');
INSERT INTO `sys_dict_data` VALUES (111, 0, '正常', '0', 'sys_campus_knowledge_type', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:43:09', '', NULL, '正常');
INSERT INTO `sys_dict_data` VALUES (112, 0, '停用', '1', 'sys_campus_knowledge_type', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:43:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 0, '草稿', '0', 'sys_campus_knowledge', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:44:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 0, '已发布', '1', 'sys_campus_knowledge', NULL, 'default', 'N', '0', 'admin', '2026-05-10 07:44:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 0, '正常', '0', 'logistics_use_status', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:01:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 0, '异常', '1', 'logistics_use_status', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:01:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (117, 0, '离线', '2', 'logistics_use_status', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:01:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (118, 0, '水控', '0', 'repair_type', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:03:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (119, 0, '电控', '1', 'repair_type', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:03:53', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (120, 0, '其他', '2', 'repair_type', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:03:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (121, 0, '待处理', '0', 'repair_status', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:04:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (122, 0, '处理中', '1', 'repair_status', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:05:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (123, 0, '已完成', '2', 'repair_status', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:05:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (124, 0, '已取消', '2', 'repair_status', NULL, 'default', 'N', '0', 'admin', '2026-05-12 03:05:33', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2026-05-07 14:50:28', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '星期几', 'course_week', '0', 'admin', '2026-05-08 11:44:48', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '校园知识', 'rules_regulations', '0', 'admin', '2026-05-10 07:11:47', 'admin', '2026-05-10 07:23:59', '这是校园的所有知识类型');
INSERT INTO `sys_dict_type` VALUES (105, '校园信息', 'statue', '0', 'admin', '2026-05-10 07:33:16', 'admin', '2026-05-10 07:33:22', '校园信息是否发布');
INSERT INTO `sys_dict_type` VALUES (106, '知识内容分类', 'sys_campus_knowledge_type', '0', 'admin', '2026-05-10 07:42:44', '', NULL, '这是知识分类表的字典');
INSERT INTO `sys_dict_type` VALUES (107, '知识内容', 'sys_campus_knowledge', '0', 'admin', '2026-05-10 07:43:52', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (108, '使用状态', 'logistics_use_status', '0', 'admin', '2026-05-12 03:00:41', 'admin', '2026-05-12 03:18:04', NULL);
INSERT INTO `sys_dict_type` VALUES (109, '报修类型', 'repair_type', '0', 'admin', '2026-05-12 03:03:19', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (110, '报修状态', 'repair_status', '0', 'admin', '2026-05-12 03:04:36', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2026-05-07 14:50:32', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2026-05-07 14:50:32', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2026-05-07 14:50:32', '', NULL, '');
INSERT INTO `sys_job` VALUES (100, '输出时间', 'DEFAULT', 'myTask.showTime()', '0/5 * * * * ?', '1', '1', '1', 'admin', '2026-05-08 14:51:34', '', '2026-05-09 09:53:02', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `start_time` datetime NULL DEFAULT NULL COMMENT '执行开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '执行结束时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2404 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 14:51:49', '2026-05-08 14:51:49', '2026-05-08 14:51:48');
INSERT INTO `sys_job_log` VALUES (2, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:51:49', '2026-05-08 14:51:49', '2026-05-08 14:51:48');
INSERT INTO `sys_job_log` VALUES (3, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:51:49', '2026-05-08 14:51:49', '2026-05-08 14:51:48');
INSERT INTO `sys_job_log` VALUES (4, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:51:50', '2026-05-08 14:51:50', '2026-05-08 14:51:50');
INSERT INTO `sys_job_log` VALUES (5, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:51:55', '2026-05-08 14:51:55', '2026-05-08 14:51:55');
INSERT INTO `sys_job_log` VALUES (6, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:00', '2026-05-08 14:52:00', '2026-05-08 14:52:00');
INSERT INTO `sys_job_log` VALUES (7, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:05', '2026-05-08 14:52:05', '2026-05-08 14:52:05');
INSERT INTO `sys_job_log` VALUES (8, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:10', '2026-05-08 14:52:10', '2026-05-08 14:52:10');
INSERT INTO `sys_job_log` VALUES (9, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:15', '2026-05-08 14:52:15', '2026-05-08 14:52:15');
INSERT INTO `sys_job_log` VALUES (10, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:20', '2026-05-08 14:52:20', '2026-05-08 14:52:20');
INSERT INTO `sys_job_log` VALUES (11, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:25', '2026-05-08 14:52:25', '2026-05-08 14:52:25');
INSERT INTO `sys_job_log` VALUES (12, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:30', '2026-05-08 14:52:30', '2026-05-08 14:52:30');
INSERT INTO `sys_job_log` VALUES (13, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:35', '2026-05-08 14:52:35', '2026-05-08 14:52:35');
INSERT INTO `sys_job_log` VALUES (14, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:40', '2026-05-08 14:52:40', '2026-05-08 14:52:40');
INSERT INTO `sys_job_log` VALUES (15, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:45', '2026-05-08 14:52:45', '2026-05-08 14:52:45');
INSERT INTO `sys_job_log` VALUES (16, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:50', '2026-05-08 14:52:50', '2026-05-08 14:52:50');
INSERT INTO `sys_job_log` VALUES (17, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:52:55', '2026-05-08 14:52:55', '2026-05-08 14:52:55');
INSERT INTO `sys_job_log` VALUES (18, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:53:00', '2026-05-08 14:53:00', '2026-05-08 14:53:00');
INSERT INTO `sys_job_log` VALUES (19, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:53:05', '2026-05-08 14:53:05', '2026-05-08 14:53:05');
INSERT INTO `sys_job_log` VALUES (20, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:53:10', '2026-05-08 14:53:10', '2026-05-08 14:53:10');
INSERT INTO `sys_job_log` VALUES (21, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:53:15', '2026-05-08 14:53:15', '2026-05-08 14:53:15');
INSERT INTO `sys_job_log` VALUES (22, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:53:20', '2026-05-08 14:53:20', '2026-05-08 14:53:20');
INSERT INTO `sys_job_log` VALUES (23, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:53:25', '2026-05-08 14:53:25', '2026-05-08 14:53:25');
INSERT INTO `sys_job_log` VALUES (24, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:53:30', '2026-05-08 14:53:30', '2026-05-08 14:53:30');
INSERT INTO `sys_job_log` VALUES (25, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 14:53:35', '2026-05-08 14:53:35', '2026-05-08 14:53:35');
INSERT INTO `sys_job_log` VALUES (26, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:53:40', '2026-05-08 14:53:40', '2026-05-08 14:53:40');
INSERT INTO `sys_job_log` VALUES (27, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:53:45', '2026-05-08 14:53:45', '2026-05-08 14:53:45');
INSERT INTO `sys_job_log` VALUES (28, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:53:50', '2026-05-08 14:53:50', '2026-05-08 14:53:50');
INSERT INTO `sys_job_log` VALUES (29, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 14:53:55', '2026-05-08 14:53:55', '2026-05-08 14:53:55');
INSERT INTO `sys_job_log` VALUES (30, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:54:00', '2026-05-08 14:54:00', '2026-05-08 14:54:00');
INSERT INTO `sys_job_log` VALUES (31, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:54:05', '2026-05-08 14:54:05', '2026-05-08 14:54:05');
INSERT INTO `sys_job_log` VALUES (32, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:54:10', '2026-05-08 14:54:10', '2026-05-08 14:54:10');
INSERT INTO `sys_job_log` VALUES (33, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:54:15', '2026-05-08 14:54:15', '2026-05-08 14:54:15');
INSERT INTO `sys_job_log` VALUES (34, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:54:20', '2026-05-08 14:54:20', '2026-05-08 14:54:20');
INSERT INTO `sys_job_log` VALUES (35, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:54:25', '2026-05-08 14:54:25', '2026-05-08 14:54:25');
INSERT INTO `sys_job_log` VALUES (36, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:54:30', '2026-05-08 14:54:30', '2026-05-08 14:54:30');
INSERT INTO `sys_job_log` VALUES (37, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:54:35', '2026-05-08 14:54:35', '2026-05-08 14:54:35');
INSERT INTO `sys_job_log` VALUES (38, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:54:40', '2026-05-08 14:54:40', '2026-05-08 14:54:40');
INSERT INTO `sys_job_log` VALUES (39, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:54:45', '2026-05-08 14:54:45', '2026-05-08 14:54:45');
INSERT INTO `sys_job_log` VALUES (40, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:54:50', '2026-05-08 14:54:50', '2026-05-08 14:54:50');
INSERT INTO `sys_job_log` VALUES (41, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:54:55', '2026-05-08 14:54:55', '2026-05-08 14:54:55');
INSERT INTO `sys_job_log` VALUES (42, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:55:00', '2026-05-08 14:55:00', '2026-05-08 14:55:00');
INSERT INTO `sys_job_log` VALUES (43, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:55:05', '2026-05-08 14:55:05', '2026-05-08 14:55:05');
INSERT INTO `sys_job_log` VALUES (44, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:55:10', '2026-05-08 14:55:10', '2026-05-08 14:55:10');
INSERT INTO `sys_job_log` VALUES (45, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:55:15', '2026-05-08 14:55:15', '2026-05-08 14:55:15');
INSERT INTO `sys_job_log` VALUES (46, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:55:20', '2026-05-08 14:55:20', '2026-05-08 14:55:20');
INSERT INTO `sys_job_log` VALUES (47, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:55:25', '2026-05-08 14:55:25', '2026-05-08 14:55:25');
INSERT INTO `sys_job_log` VALUES (48, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:55:30', '2026-05-08 14:55:30', '2026-05-08 14:55:30');
INSERT INTO `sys_job_log` VALUES (49, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:55:35', '2026-05-08 14:55:35', '2026-05-08 14:55:35');
INSERT INTO `sys_job_log` VALUES (50, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:55:40', '2026-05-08 14:55:40', '2026-05-08 14:55:40');
INSERT INTO `sys_job_log` VALUES (51, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 14:55:45', '2026-05-08 14:55:45', '2026-05-08 14:55:45');
INSERT INTO `sys_job_log` VALUES (52, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:55:50', '2026-05-08 14:55:50', '2026-05-08 14:55:50');
INSERT INTO `sys_job_log` VALUES (53, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:55:55', '2026-05-08 14:55:55', '2026-05-08 14:55:55');
INSERT INTO `sys_job_log` VALUES (54, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:00', '2026-05-08 14:56:00', '2026-05-08 14:56:00');
INSERT INTO `sys_job_log` VALUES (55, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:05', '2026-05-08 14:56:05', '2026-05-08 14:56:05');
INSERT INTO `sys_job_log` VALUES (56, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:10', '2026-05-08 14:56:10', '2026-05-08 14:56:10');
INSERT INTO `sys_job_log` VALUES (57, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:15', '2026-05-08 14:56:15', '2026-05-08 14:56:15');
INSERT INTO `sys_job_log` VALUES (58, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:20', '2026-05-08 14:56:20', '2026-05-08 14:56:20');
INSERT INTO `sys_job_log` VALUES (59, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:25', '2026-05-08 14:56:25', '2026-05-08 14:56:25');
INSERT INTO `sys_job_log` VALUES (60, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:30', '2026-05-08 14:56:30', '2026-05-08 14:56:30');
INSERT INTO `sys_job_log` VALUES (61, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:35', '2026-05-08 14:56:35', '2026-05-08 14:56:35');
INSERT INTO `sys_job_log` VALUES (62, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 14:56:40', '2026-05-08 14:56:40', '2026-05-08 14:56:40');
INSERT INTO `sys_job_log` VALUES (63, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:56:45', '2026-05-08 14:56:45', '2026-05-08 14:56:45');
INSERT INTO `sys_job_log` VALUES (64, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:50', '2026-05-08 14:56:50', '2026-05-08 14:56:50');
INSERT INTO `sys_job_log` VALUES (65, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:56:55', '2026-05-08 14:56:55', '2026-05-08 14:56:55');
INSERT INTO `sys_job_log` VALUES (66, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 14:57:00', '2026-05-08 14:57:00', '2026-05-08 14:57:00');
INSERT INTO `sys_job_log` VALUES (67, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:05', '2026-05-08 14:57:05', '2026-05-08 14:57:05');
INSERT INTO `sys_job_log` VALUES (68, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:10', '2026-05-08 14:57:10', '2026-05-08 14:57:10');
INSERT INTO `sys_job_log` VALUES (69, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:15', '2026-05-08 14:57:15', '2026-05-08 14:57:15');
INSERT INTO `sys_job_log` VALUES (70, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:20', '2026-05-08 14:57:20', '2026-05-08 14:57:20');
INSERT INTO `sys_job_log` VALUES (71, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:25', '2026-05-08 14:57:25', '2026-05-08 14:57:25');
INSERT INTO `sys_job_log` VALUES (72, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:30', '2026-05-08 14:57:30', '2026-05-08 14:57:30');
INSERT INTO `sys_job_log` VALUES (73, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:35', '2026-05-08 14:57:35', '2026-05-08 14:57:35');
INSERT INTO `sys_job_log` VALUES (74, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:40', '2026-05-08 14:57:40', '2026-05-08 14:57:40');
INSERT INTO `sys_job_log` VALUES (75, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:45', '2026-05-08 14:57:45', '2026-05-08 14:57:45');
INSERT INTO `sys_job_log` VALUES (76, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:50', '2026-05-08 14:57:50', '2026-05-08 14:57:50');
INSERT INTO `sys_job_log` VALUES (77, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:57:55', '2026-05-08 14:57:55', '2026-05-08 14:57:55');
INSERT INTO `sys_job_log` VALUES (78, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:00', '2026-05-08 14:58:00', '2026-05-08 14:58:00');
INSERT INTO `sys_job_log` VALUES (79, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:58:05', '2026-05-08 14:58:05', '2026-05-08 14:58:05');
INSERT INTO `sys_job_log` VALUES (80, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:10', '2026-05-08 14:58:10', '2026-05-08 14:58:10');
INSERT INTO `sys_job_log` VALUES (81, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:15', '2026-05-08 14:58:15', '2026-05-08 14:58:15');
INSERT INTO `sys_job_log` VALUES (82, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:20', '2026-05-08 14:58:20', '2026-05-08 14:58:20');
INSERT INTO `sys_job_log` VALUES (83, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:58:25', '2026-05-08 14:58:25', '2026-05-08 14:58:25');
INSERT INTO `sys_job_log` VALUES (84, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:30', '2026-05-08 14:58:30', '2026-05-08 14:58:30');
INSERT INTO `sys_job_log` VALUES (85, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:35', '2026-05-08 14:58:35', '2026-05-08 14:58:35');
INSERT INTO `sys_job_log` VALUES (86, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:40', '2026-05-08 14:58:40', '2026-05-08 14:58:40');
INSERT INTO `sys_job_log` VALUES (87, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:45', '2026-05-08 14:58:45', '2026-05-08 14:58:45');
INSERT INTO `sys_job_log` VALUES (88, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:50', '2026-05-08 14:58:50', '2026-05-08 14:58:50');
INSERT INTO `sys_job_log` VALUES (89, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:58:55', '2026-05-08 14:58:55', '2026-05-08 14:58:55');
INSERT INTO `sys_job_log` VALUES (90, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:00', '2026-05-08 14:59:00', '2026-05-08 14:59:00');
INSERT INTO `sys_job_log` VALUES (91, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:05', '2026-05-08 14:59:05', '2026-05-08 14:59:05');
INSERT INTO `sys_job_log` VALUES (92, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:10', '2026-05-08 14:59:10', '2026-05-08 14:59:10');
INSERT INTO `sys_job_log` VALUES (93, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:15', '2026-05-08 14:59:15', '2026-05-08 14:59:15');
INSERT INTO `sys_job_log` VALUES (94, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:20', '2026-05-08 14:59:20', '2026-05-08 14:59:20');
INSERT INTO `sys_job_log` VALUES (95, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:25', '2026-05-08 14:59:25', '2026-05-08 14:59:25');
INSERT INTO `sys_job_log` VALUES (96, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:30', '2026-05-08 14:59:30', '2026-05-08 14:59:30');
INSERT INTO `sys_job_log` VALUES (97, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:35', '2026-05-08 14:59:35', '2026-05-08 14:59:35');
INSERT INTO `sys_job_log` VALUES (98, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:40', '2026-05-08 14:59:40', '2026-05-08 14:59:40');
INSERT INTO `sys_job_log` VALUES (99, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 14:59:45', '2026-05-08 14:59:45', '2026-05-08 14:59:45');
INSERT INTO `sys_job_log` VALUES (100, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:50', '2026-05-08 14:59:50', '2026-05-08 14:59:50');
INSERT INTO `sys_job_log` VALUES (101, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 14:59:55', '2026-05-08 14:59:55', '2026-05-08 14:59:55');
INSERT INTO `sys_job_log` VALUES (102, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:00:00', '2026-05-08 15:00:00', '2026-05-08 15:00:00');
INSERT INTO `sys_job_log` VALUES (103, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:00:05', '2026-05-08 15:00:05', '2026-05-08 15:00:05');
INSERT INTO `sys_job_log` VALUES (104, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:10', '2026-05-08 15:00:10', '2026-05-08 15:00:10');
INSERT INTO `sys_job_log` VALUES (105, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:15', '2026-05-08 15:00:15', '2026-05-08 15:00:15');
INSERT INTO `sys_job_log` VALUES (106, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:20', '2026-05-08 15:00:20', '2026-05-08 15:00:20');
INSERT INTO `sys_job_log` VALUES (107, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:25', '2026-05-08 15:00:25', '2026-05-08 15:00:25');
INSERT INTO `sys_job_log` VALUES (108, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:30', '2026-05-08 15:00:30', '2026-05-08 15:00:30');
INSERT INTO `sys_job_log` VALUES (109, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:35', '2026-05-08 15:00:35', '2026-05-08 15:00:35');
INSERT INTO `sys_job_log` VALUES (110, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:40', '2026-05-08 15:00:40', '2026-05-08 15:00:40');
INSERT INTO `sys_job_log` VALUES (111, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:45', '2026-05-08 15:00:45', '2026-05-08 15:00:45');
INSERT INTO `sys_job_log` VALUES (112, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:50', '2026-05-08 15:00:50', '2026-05-08 15:00:50');
INSERT INTO `sys_job_log` VALUES (113, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:00:55', '2026-05-08 15:00:55', '2026-05-08 15:00:55');
INSERT INTO `sys_job_log` VALUES (114, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:01:00', '2026-05-08 15:01:00', '2026-05-08 15:01:00');
INSERT INTO `sys_job_log` VALUES (115, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:01:05', '2026-05-08 15:01:05', '2026-05-08 15:01:05');
INSERT INTO `sys_job_log` VALUES (116, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:01:10', '2026-05-08 15:01:10', '2026-05-08 15:01:10');
INSERT INTO `sys_job_log` VALUES (117, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:01:15', '2026-05-08 15:01:15', '2026-05-08 15:01:15');
INSERT INTO `sys_job_log` VALUES (118, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:01:20', '2026-05-08 15:01:20', '2026-05-08 15:01:20');
INSERT INTO `sys_job_log` VALUES (119, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:01:25', '2026-05-08 15:01:25', '2026-05-08 15:01:25');
INSERT INTO `sys_job_log` VALUES (120, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:01:30', '2026-05-08 15:01:30', '2026-05-08 15:01:30');
INSERT INTO `sys_job_log` VALUES (121, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:01:35', '2026-05-08 15:01:35', '2026-05-08 15:01:35');
INSERT INTO `sys_job_log` VALUES (122, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:01:40', '2026-05-08 15:01:40', '2026-05-08 15:01:40');
INSERT INTO `sys_job_log` VALUES (123, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:01:45', '2026-05-08 15:01:45', '2026-05-08 15:01:45');
INSERT INTO `sys_job_log` VALUES (124, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:01:50', '2026-05-08 15:01:50', '2026-05-08 15:01:50');
INSERT INTO `sys_job_log` VALUES (125, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:01:55', '2026-05-08 15:01:55', '2026-05-08 15:01:55');
INSERT INTO `sys_job_log` VALUES (126, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:00', '2026-05-08 15:02:00', '2026-05-08 15:02:00');
INSERT INTO `sys_job_log` VALUES (127, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:05', '2026-05-08 15:02:05', '2026-05-08 15:02:05');
INSERT INTO `sys_job_log` VALUES (128, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:10', '2026-05-08 15:02:10', '2026-05-08 15:02:10');
INSERT INTO `sys_job_log` VALUES (129, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:15', '2026-05-08 15:02:15', '2026-05-08 15:02:15');
INSERT INTO `sys_job_log` VALUES (130, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:20', '2026-05-08 15:02:20', '2026-05-08 15:02:20');
INSERT INTO `sys_job_log` VALUES (131, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:25', '2026-05-08 15:02:25', '2026-05-08 15:02:25');
INSERT INTO `sys_job_log` VALUES (132, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:30', '2026-05-08 15:02:30', '2026-05-08 15:02:30');
INSERT INTO `sys_job_log` VALUES (133, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:02:35', '2026-05-08 15:02:35', '2026-05-08 15:02:35');
INSERT INTO `sys_job_log` VALUES (134, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:40', '2026-05-08 15:02:40', '2026-05-08 15:02:40');
INSERT INTO `sys_job_log` VALUES (135, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:45', '2026-05-08 15:02:45', '2026-05-08 15:02:45');
INSERT INTO `sys_job_log` VALUES (136, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:02:50', '2026-05-08 15:02:50', '2026-05-08 15:02:50');
INSERT INTO `sys_job_log` VALUES (137, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:02:55', '2026-05-08 15:02:55', '2026-05-08 15:02:55');
INSERT INTO `sys_job_log` VALUES (138, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:00', '2026-05-08 15:03:00', '2026-05-08 15:03:00');
INSERT INTO `sys_job_log` VALUES (139, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:05', '2026-05-08 15:03:05', '2026-05-08 15:03:05');
INSERT INTO `sys_job_log` VALUES (140, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:10', '2026-05-08 15:03:10', '2026-05-08 15:03:10');
INSERT INTO `sys_job_log` VALUES (141, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:15', '2026-05-08 15:03:15', '2026-05-08 15:03:15');
INSERT INTO `sys_job_log` VALUES (142, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:20', '2026-05-08 15:03:20', '2026-05-08 15:03:20');
INSERT INTO `sys_job_log` VALUES (143, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:25', '2026-05-08 15:03:25', '2026-05-08 15:03:25');
INSERT INTO `sys_job_log` VALUES (144, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:03:30', '2026-05-08 15:03:30', '2026-05-08 15:03:30');
INSERT INTO `sys_job_log` VALUES (145, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:35', '2026-05-08 15:03:35', '2026-05-08 15:03:35');
INSERT INTO `sys_job_log` VALUES (146, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:40', '2026-05-08 15:03:40', '2026-05-08 15:03:40');
INSERT INTO `sys_job_log` VALUES (147, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:45', '2026-05-08 15:03:45', '2026-05-08 15:03:45');
INSERT INTO `sys_job_log` VALUES (148, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:03:50', '2026-05-08 15:03:50', '2026-05-08 15:03:50');
INSERT INTO `sys_job_log` VALUES (149, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:03:55', '2026-05-08 15:03:55', '2026-05-08 15:03:55');
INSERT INTO `sys_job_log` VALUES (150, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:04:00', '2026-05-08 15:04:00', '2026-05-08 15:04:00');
INSERT INTO `sys_job_log` VALUES (151, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:04:05', '2026-05-08 15:04:05', '2026-05-08 15:04:05');
INSERT INTO `sys_job_log` VALUES (152, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:04:10', '2026-05-08 15:04:10', '2026-05-08 15:04:10');
INSERT INTO `sys_job_log` VALUES (153, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:04:15', '2026-05-08 15:04:15', '2026-05-08 15:04:15');
INSERT INTO `sys_job_log` VALUES (154, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:04:20', '2026-05-08 15:04:20', '2026-05-08 15:04:20');
INSERT INTO `sys_job_log` VALUES (155, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:04:25', '2026-05-08 15:04:25', '2026-05-08 15:04:25');
INSERT INTO `sys_job_log` VALUES (156, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:04:30', '2026-05-08 15:04:30', '2026-05-08 15:04:30');
INSERT INTO `sys_job_log` VALUES (157, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:04:35', '2026-05-08 15:04:35', '2026-05-08 15:04:35');
INSERT INTO `sys_job_log` VALUES (158, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:04:40', '2026-05-08 15:04:40', '2026-05-08 15:04:40');
INSERT INTO `sys_job_log` VALUES (159, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:04:45', '2026-05-08 15:04:45', '2026-05-08 15:04:45');
INSERT INTO `sys_job_log` VALUES (160, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:04:50', '2026-05-08 15:04:50', '2026-05-08 15:04:50');
INSERT INTO `sys_job_log` VALUES (161, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:04:55', '2026-05-08 15:04:55', '2026-05-08 15:04:55');
INSERT INTO `sys_job_log` VALUES (162, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:00', '2026-05-08 15:05:00', '2026-05-08 15:05:00');
INSERT INTO `sys_job_log` VALUES (163, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:05', '2026-05-08 15:05:05', '2026-05-08 15:05:05');
INSERT INTO `sys_job_log` VALUES (164, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:05:10', '2026-05-08 15:05:10', '2026-05-08 15:05:10');
INSERT INTO `sys_job_log` VALUES (165, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:15', '2026-05-08 15:05:15', '2026-05-08 15:05:15');
INSERT INTO `sys_job_log` VALUES (166, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:20', '2026-05-08 15:05:20', '2026-05-08 15:05:20');
INSERT INTO `sys_job_log` VALUES (167, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:25', '2026-05-08 15:05:25', '2026-05-08 15:05:25');
INSERT INTO `sys_job_log` VALUES (168, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:30', '2026-05-08 15:05:30', '2026-05-08 15:05:30');
INSERT INTO `sys_job_log` VALUES (169, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:35', '2026-05-08 15:05:35', '2026-05-08 15:05:35');
INSERT INTO `sys_job_log` VALUES (170, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:40', '2026-05-08 15:05:40', '2026-05-08 15:05:40');
INSERT INTO `sys_job_log` VALUES (171, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:45', '2026-05-08 15:05:45', '2026-05-08 15:05:45');
INSERT INTO `sys_job_log` VALUES (172, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:50', '2026-05-08 15:05:50', '2026-05-08 15:05:50');
INSERT INTO `sys_job_log` VALUES (173, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:05:55', '2026-05-08 15:05:55', '2026-05-08 15:05:55');
INSERT INTO `sys_job_log` VALUES (174, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:00', '2026-05-08 15:06:00', '2026-05-08 15:06:00');
INSERT INTO `sys_job_log` VALUES (175, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:05', '2026-05-08 15:06:05', '2026-05-08 15:06:05');
INSERT INTO `sys_job_log` VALUES (176, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:10', '2026-05-08 15:06:10', '2026-05-08 15:06:10');
INSERT INTO `sys_job_log` VALUES (177, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:15', '2026-05-08 15:06:15', '2026-05-08 15:06:15');
INSERT INTO `sys_job_log` VALUES (178, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:20', '2026-05-08 15:06:20', '2026-05-08 15:06:20');
INSERT INTO `sys_job_log` VALUES (179, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:25', '2026-05-08 15:06:25', '2026-05-08 15:06:25');
INSERT INTO `sys_job_log` VALUES (180, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:06:30', '2026-05-08 15:06:30', '2026-05-08 15:06:30');
INSERT INTO `sys_job_log` VALUES (181, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:35', '2026-05-08 15:06:35', '2026-05-08 15:06:35');
INSERT INTO `sys_job_log` VALUES (182, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:40', '2026-05-08 15:06:40', '2026-05-08 15:06:40');
INSERT INTO `sys_job_log` VALUES (183, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:45', '2026-05-08 15:06:45', '2026-05-08 15:06:45');
INSERT INTO `sys_job_log` VALUES (184, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:50', '2026-05-08 15:06:50', '2026-05-08 15:06:50');
INSERT INTO `sys_job_log` VALUES (185, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:06:55', '2026-05-08 15:06:55', '2026-05-08 15:06:55');
INSERT INTO `sys_job_log` VALUES (186, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:07:00', '2026-05-08 15:07:00', '2026-05-08 15:07:00');
INSERT INTO `sys_job_log` VALUES (187, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:07:05', '2026-05-08 15:07:05', '2026-05-08 15:07:05');
INSERT INTO `sys_job_log` VALUES (188, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:10', '2026-05-08 15:07:10', '2026-05-08 15:07:10');
INSERT INTO `sys_job_log` VALUES (189, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:15', '2026-05-08 15:07:15', '2026-05-08 15:07:15');
INSERT INTO `sys_job_log` VALUES (190, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:20', '2026-05-08 15:07:20', '2026-05-08 15:07:20');
INSERT INTO `sys_job_log` VALUES (191, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:25', '2026-05-08 15:07:25', '2026-05-08 15:07:25');
INSERT INTO `sys_job_log` VALUES (192, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:30', '2026-05-08 15:07:30', '2026-05-08 15:07:30');
INSERT INTO `sys_job_log` VALUES (193, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:35', '2026-05-08 15:07:35', '2026-05-08 15:07:35');
INSERT INTO `sys_job_log` VALUES (194, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:40', '2026-05-08 15:07:40', '2026-05-08 15:07:40');
INSERT INTO `sys_job_log` VALUES (195, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:45', '2026-05-08 15:07:45', '2026-05-08 15:07:45');
INSERT INTO `sys_job_log` VALUES (196, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:50', '2026-05-08 15:07:50', '2026-05-08 15:07:50');
INSERT INTO `sys_job_log` VALUES (197, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:07:55', '2026-05-08 15:07:55', '2026-05-08 15:07:55');
INSERT INTO `sys_job_log` VALUES (198, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:00', '2026-05-08 15:08:00', '2026-05-08 15:08:00');
INSERT INTO `sys_job_log` VALUES (199, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:08:05', '2026-05-08 15:08:05', '2026-05-08 15:08:05');
INSERT INTO `sys_job_log` VALUES (200, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:10', '2026-05-08 15:08:10', '2026-05-08 15:08:10');
INSERT INTO `sys_job_log` VALUES (201, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:15', '2026-05-08 15:08:15', '2026-05-08 15:08:15');
INSERT INTO `sys_job_log` VALUES (202, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:20', '2026-05-08 15:08:20', '2026-05-08 15:08:20');
INSERT INTO `sys_job_log` VALUES (203, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:25', '2026-05-08 15:08:25', '2026-05-08 15:08:25');
INSERT INTO `sys_job_log` VALUES (204, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:30', '2026-05-08 15:08:30', '2026-05-08 15:08:30');
INSERT INTO `sys_job_log` VALUES (205, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:08:35', '2026-05-08 15:08:35', '2026-05-08 15:08:35');
INSERT INTO `sys_job_log` VALUES (206, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:40', '2026-05-08 15:08:40', '2026-05-08 15:08:40');
INSERT INTO `sys_job_log` VALUES (207, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:45', '2026-05-08 15:08:45', '2026-05-08 15:08:45');
INSERT INTO `sys_job_log` VALUES (208, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:50', '2026-05-08 15:08:50', '2026-05-08 15:08:50');
INSERT INTO `sys_job_log` VALUES (209, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:08:55', '2026-05-08 15:08:55', '2026-05-08 15:08:55');
INSERT INTO `sys_job_log` VALUES (210, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:09:00', '2026-05-08 15:09:00', '2026-05-08 15:09:00');
INSERT INTO `sys_job_log` VALUES (211, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:09:05', '2026-05-08 15:09:05', '2026-05-08 15:09:05');
INSERT INTO `sys_job_log` VALUES (212, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:09:10', '2026-05-08 15:09:10', '2026-05-08 15:09:10');
INSERT INTO `sys_job_log` VALUES (213, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:09:15', '2026-05-08 15:09:15', '2026-05-08 15:09:15');
INSERT INTO `sys_job_log` VALUES (214, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：6毫秒', '0', '', '2026-05-08 15:09:20', '2026-05-08 15:09:20', '2026-05-08 15:09:20');
INSERT INTO `sys_job_log` VALUES (215, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:09:25', '2026-05-08 15:09:25', '2026-05-08 15:09:25');
INSERT INTO `sys_job_log` VALUES (216, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:09:30', '2026-05-08 15:09:30', '2026-05-08 15:09:30');
INSERT INTO `sys_job_log` VALUES (217, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:09:35', '2026-05-08 15:09:35', '2026-05-08 15:09:35');
INSERT INTO `sys_job_log` VALUES (218, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:09:40', '2026-05-08 15:09:40', '2026-05-08 15:09:40');
INSERT INTO `sys_job_log` VALUES (219, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:09:45', '2026-05-08 15:09:45', '2026-05-08 15:09:45');
INSERT INTO `sys_job_log` VALUES (220, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:09:50', '2026-05-08 15:09:50', '2026-05-08 15:09:50');
INSERT INTO `sys_job_log` VALUES (221, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:09:55', '2026-05-08 15:09:55', '2026-05-08 15:09:55');
INSERT INTO `sys_job_log` VALUES (222, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:00', '2026-05-08 15:10:00', '2026-05-08 15:10:00');
INSERT INTO `sys_job_log` VALUES (223, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:05', '2026-05-08 15:10:05', '2026-05-08 15:10:05');
INSERT INTO `sys_job_log` VALUES (224, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:10', '2026-05-08 15:10:10', '2026-05-08 15:10:10');
INSERT INTO `sys_job_log` VALUES (225, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:15', '2026-05-08 15:10:15', '2026-05-08 15:10:15');
INSERT INTO `sys_job_log` VALUES (226, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:20', '2026-05-08 15:10:20', '2026-05-08 15:10:20');
INSERT INTO `sys_job_log` VALUES (227, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:10:25', '2026-05-08 15:10:25', '2026-05-08 15:10:25');
INSERT INTO `sys_job_log` VALUES (228, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:30', '2026-05-08 15:10:30', '2026-05-08 15:10:30');
INSERT INTO `sys_job_log` VALUES (229, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:10:35', '2026-05-08 15:10:35', '2026-05-08 15:10:35');
INSERT INTO `sys_job_log` VALUES (230, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:40', '2026-05-08 15:10:40', '2026-05-08 15:10:40');
INSERT INTO `sys_job_log` VALUES (231, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:45', '2026-05-08 15:10:45', '2026-05-08 15:10:45');
INSERT INTO `sys_job_log` VALUES (232, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:50', '2026-05-08 15:10:50', '2026-05-08 15:10:50');
INSERT INTO `sys_job_log` VALUES (233, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:10:55', '2026-05-08 15:10:55', '2026-05-08 15:10:55');
INSERT INTO `sys_job_log` VALUES (234, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:11:00', '2026-05-08 15:11:00', '2026-05-08 15:11:00');
INSERT INTO `sys_job_log` VALUES (235, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:11:05', '2026-05-08 15:11:05', '2026-05-08 15:11:05');
INSERT INTO `sys_job_log` VALUES (236, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:11:10', '2026-05-08 15:11:10', '2026-05-08 15:11:10');
INSERT INTO `sys_job_log` VALUES (237, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:11:15', '2026-05-08 15:11:15', '2026-05-08 15:11:15');
INSERT INTO `sys_job_log` VALUES (238, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:11:20', '2026-05-08 15:11:20', '2026-05-08 15:11:20');
INSERT INTO `sys_job_log` VALUES (239, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:11:25', '2026-05-08 15:11:25', '2026-05-08 15:11:25');
INSERT INTO `sys_job_log` VALUES (240, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:11:30', '2026-05-08 15:11:30', '2026-05-08 15:11:30');
INSERT INTO `sys_job_log` VALUES (241, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:11:35', '2026-05-08 15:11:35', '2026-05-08 15:11:35');
INSERT INTO `sys_job_log` VALUES (242, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:11:40', '2026-05-08 15:11:40', '2026-05-08 15:11:40');
INSERT INTO `sys_job_log` VALUES (243, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:11:45', '2026-05-08 15:11:45', '2026-05-08 15:11:45');
INSERT INTO `sys_job_log` VALUES (244, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:11:50', '2026-05-08 15:11:50', '2026-05-08 15:11:50');
INSERT INTO `sys_job_log` VALUES (245, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:11:55', '2026-05-08 15:11:55', '2026-05-08 15:11:55');
INSERT INTO `sys_job_log` VALUES (246, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:12:00', '2026-05-08 15:12:00', '2026-05-08 15:12:00');
INSERT INTO `sys_job_log` VALUES (247, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:12:05', '2026-05-08 15:12:05', '2026-05-08 15:12:05');
INSERT INTO `sys_job_log` VALUES (248, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:12:10', '2026-05-08 15:12:10', '2026-05-08 15:12:10');
INSERT INTO `sys_job_log` VALUES (249, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:12:15', '2026-05-08 15:12:15', '2026-05-08 15:12:15');
INSERT INTO `sys_job_log` VALUES (250, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:12:20', '2026-05-08 15:12:20', '2026-05-08 15:12:20');
INSERT INTO `sys_job_log` VALUES (251, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:12:25', '2026-05-08 15:12:25', '2026-05-08 15:12:25');
INSERT INTO `sys_job_log` VALUES (252, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:12:30', '2026-05-08 15:12:30', '2026-05-08 15:12:30');
INSERT INTO `sys_job_log` VALUES (253, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:12:35', '2026-05-08 15:12:35', '2026-05-08 15:12:35');
INSERT INTO `sys_job_log` VALUES (254, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:12:40', '2026-05-08 15:12:40', '2026-05-08 15:12:40');
INSERT INTO `sys_job_log` VALUES (255, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:12:45', '2026-05-08 15:12:45', '2026-05-08 15:12:45');
INSERT INTO `sys_job_log` VALUES (256, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:12:50', '2026-05-08 15:12:50', '2026-05-08 15:12:50');
INSERT INTO `sys_job_log` VALUES (257, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:12:55', '2026-05-08 15:12:55', '2026-05-08 15:12:55');
INSERT INTO `sys_job_log` VALUES (258, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:13:00', '2026-05-08 15:13:00', '2026-05-08 15:13:00');
INSERT INTO `sys_job_log` VALUES (259, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:13:05', '2026-05-08 15:13:05', '2026-05-08 15:13:05');
INSERT INTO `sys_job_log` VALUES (260, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:13:10', '2026-05-08 15:13:10', '2026-05-08 15:13:10');
INSERT INTO `sys_job_log` VALUES (261, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:13:15', '2026-05-08 15:13:15', '2026-05-08 15:13:15');
INSERT INTO `sys_job_log` VALUES (262, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:13:20', '2026-05-08 15:13:20', '2026-05-08 15:13:20');
INSERT INTO `sys_job_log` VALUES (263, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:13:25', '2026-05-08 15:13:25', '2026-05-08 15:13:25');
INSERT INTO `sys_job_log` VALUES (264, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:13:30', '2026-05-08 15:13:30', '2026-05-08 15:13:30');
INSERT INTO `sys_job_log` VALUES (265, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:13:35', '2026-05-08 15:13:35', '2026-05-08 15:13:35');
INSERT INTO `sys_job_log` VALUES (266, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:13:40', '2026-05-08 15:13:40', '2026-05-08 15:13:40');
INSERT INTO `sys_job_log` VALUES (267, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:13:45', '2026-05-08 15:13:45', '2026-05-08 15:13:45');
INSERT INTO `sys_job_log` VALUES (268, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:13:50', '2026-05-08 15:13:50', '2026-05-08 15:13:50');
INSERT INTO `sys_job_log` VALUES (269, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:13:55', '2026-05-08 15:13:55', '2026-05-08 15:13:55');
INSERT INTO `sys_job_log` VALUES (270, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:00', '2026-05-08 15:14:00', '2026-05-08 15:14:00');
INSERT INTO `sys_job_log` VALUES (271, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:14:05', '2026-05-08 15:14:05', '2026-05-08 15:14:05');
INSERT INTO `sys_job_log` VALUES (272, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:10', '2026-05-08 15:14:10', '2026-05-08 15:14:10');
INSERT INTO `sys_job_log` VALUES (273, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:15', '2026-05-08 15:14:15', '2026-05-08 15:14:15');
INSERT INTO `sys_job_log` VALUES (274, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:20', '2026-05-08 15:14:20', '2026-05-08 15:14:20');
INSERT INTO `sys_job_log` VALUES (275, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:14:25', '2026-05-08 15:14:25', '2026-05-08 15:14:25');
INSERT INTO `sys_job_log` VALUES (276, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:30', '2026-05-08 15:14:30', '2026-05-08 15:14:30');
INSERT INTO `sys_job_log` VALUES (277, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:35', '2026-05-08 15:14:35', '2026-05-08 15:14:35');
INSERT INTO `sys_job_log` VALUES (278, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:40', '2026-05-08 15:14:40', '2026-05-08 15:14:40');
INSERT INTO `sys_job_log` VALUES (279, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:45', '2026-05-08 15:14:45', '2026-05-08 15:14:45');
INSERT INTO `sys_job_log` VALUES (280, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:50', '2026-05-08 15:14:50', '2026-05-08 15:14:50');
INSERT INTO `sys_job_log` VALUES (281, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:14:55', '2026-05-08 15:14:55', '2026-05-08 15:14:55');
INSERT INTO `sys_job_log` VALUES (282, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:00', '2026-05-08 15:15:00', '2026-05-08 15:15:00');
INSERT INTO `sys_job_log` VALUES (283, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:15:05', '2026-05-08 15:15:05', '2026-05-08 15:15:05');
INSERT INTO `sys_job_log` VALUES (284, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:10', '2026-05-08 15:15:10', '2026-05-08 15:15:10');
INSERT INTO `sys_job_log` VALUES (285, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:15', '2026-05-08 15:15:15', '2026-05-08 15:15:15');
INSERT INTO `sys_job_log` VALUES (286, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:20', '2026-05-08 15:15:20', '2026-05-08 15:15:20');
INSERT INTO `sys_job_log` VALUES (287, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:25', '2026-05-08 15:15:25', '2026-05-08 15:15:25');
INSERT INTO `sys_job_log` VALUES (288, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:30', '2026-05-08 15:15:30', '2026-05-08 15:15:30');
INSERT INTO `sys_job_log` VALUES (289, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:35', '2026-05-08 15:15:35', '2026-05-08 15:15:35');
INSERT INTO `sys_job_log` VALUES (290, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:40', '2026-05-08 15:15:40', '2026-05-08 15:15:40');
INSERT INTO `sys_job_log` VALUES (291, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:15:45', '2026-05-08 15:15:45', '2026-05-08 15:15:45');
INSERT INTO `sys_job_log` VALUES (292, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:50', '2026-05-08 15:15:50', '2026-05-08 15:15:50');
INSERT INTO `sys_job_log` VALUES (293, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:15:55', '2026-05-08 15:15:55', '2026-05-08 15:15:55');
INSERT INTO `sys_job_log` VALUES (294, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:00', '2026-05-08 15:16:00', '2026-05-08 15:16:00');
INSERT INTO `sys_job_log` VALUES (295, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:05', '2026-05-08 15:16:05', '2026-05-08 15:16:05');
INSERT INTO `sys_job_log` VALUES (296, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:10', '2026-05-08 15:16:10', '2026-05-08 15:16:10');
INSERT INTO `sys_job_log` VALUES (297, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:15', '2026-05-08 15:16:15', '2026-05-08 15:16:15');
INSERT INTO `sys_job_log` VALUES (298, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:20', '2026-05-08 15:16:20', '2026-05-08 15:16:20');
INSERT INTO `sys_job_log` VALUES (299, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:25', '2026-05-08 15:16:25', '2026-05-08 15:16:25');
INSERT INTO `sys_job_log` VALUES (300, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:30', '2026-05-08 15:16:30', '2026-05-08 15:16:30');
INSERT INTO `sys_job_log` VALUES (301, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:35', '2026-05-08 15:16:35', '2026-05-08 15:16:35');
INSERT INTO `sys_job_log` VALUES (302, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:40', '2026-05-08 15:16:40', '2026-05-08 15:16:40');
INSERT INTO `sys_job_log` VALUES (303, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:45', '2026-05-08 15:16:45', '2026-05-08 15:16:45');
INSERT INTO `sys_job_log` VALUES (304, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:16:50', '2026-05-08 15:16:50', '2026-05-08 15:16:50');
INSERT INTO `sys_job_log` VALUES (305, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:16:55', '2026-05-08 15:16:55', '2026-05-08 15:16:55');
INSERT INTO `sys_job_log` VALUES (306, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:17:00', '2026-05-08 15:17:00', '2026-05-08 15:17:00');
INSERT INTO `sys_job_log` VALUES (307, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:17:05', '2026-05-08 15:17:05', '2026-05-08 15:17:05');
INSERT INTO `sys_job_log` VALUES (308, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:17:10', '2026-05-08 15:17:10', '2026-05-08 15:17:10');
INSERT INTO `sys_job_log` VALUES (309, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:17:15', '2026-05-08 15:17:15', '2026-05-08 15:17:15');
INSERT INTO `sys_job_log` VALUES (310, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:17:20', '2026-05-08 15:17:20', '2026-05-08 15:17:20');
INSERT INTO `sys_job_log` VALUES (311, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:17:25', '2026-05-08 15:17:25', '2026-05-08 15:17:25');
INSERT INTO `sys_job_log` VALUES (312, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:17:30', '2026-05-08 15:17:30', '2026-05-08 15:17:30');
INSERT INTO `sys_job_log` VALUES (313, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:17:35', '2026-05-08 15:17:35', '2026-05-08 15:17:35');
INSERT INTO `sys_job_log` VALUES (314, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:17:40', '2026-05-08 15:17:40', '2026-05-08 15:17:40');
INSERT INTO `sys_job_log` VALUES (315, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:17:45', '2026-05-08 15:17:45', '2026-05-08 15:17:45');
INSERT INTO `sys_job_log` VALUES (316, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:17:50', '2026-05-08 15:17:50', '2026-05-08 15:17:50');
INSERT INTO `sys_job_log` VALUES (317, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:17:55', '2026-05-08 15:17:55', '2026-05-08 15:17:55');
INSERT INTO `sys_job_log` VALUES (318, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:00', '2026-05-08 15:18:00', '2026-05-08 15:18:00');
INSERT INTO `sys_job_log` VALUES (319, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:05', '2026-05-08 15:18:05', '2026-05-08 15:18:05');
INSERT INTO `sys_job_log` VALUES (320, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:10', '2026-05-08 15:18:10', '2026-05-08 15:18:10');
INSERT INTO `sys_job_log` VALUES (321, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:15', '2026-05-08 15:18:15', '2026-05-08 15:18:15');
INSERT INTO `sys_job_log` VALUES (322, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:20', '2026-05-08 15:18:20', '2026-05-08 15:18:20');
INSERT INTO `sys_job_log` VALUES (323, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:25', '2026-05-08 15:18:25', '2026-05-08 15:18:25');
INSERT INTO `sys_job_log` VALUES (324, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:30', '2026-05-08 15:18:30', '2026-05-08 15:18:30');
INSERT INTO `sys_job_log` VALUES (325, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:35', '2026-05-08 15:18:35', '2026-05-08 15:18:35');
INSERT INTO `sys_job_log` VALUES (326, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:40', '2026-05-08 15:18:40', '2026-05-08 15:18:40');
INSERT INTO `sys_job_log` VALUES (327, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:45', '2026-05-08 15:18:45', '2026-05-08 15:18:45');
INSERT INTO `sys_job_log` VALUES (328, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:50', '2026-05-08 15:18:50', '2026-05-08 15:18:50');
INSERT INTO `sys_job_log` VALUES (329, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:18:55', '2026-05-08 15:18:55', '2026-05-08 15:18:55');
INSERT INTO `sys_job_log` VALUES (330, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:00', '2026-05-08 15:19:00', '2026-05-08 15:19:00');
INSERT INTO `sys_job_log` VALUES (331, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:05', '2026-05-08 15:19:05', '2026-05-08 15:19:05');
INSERT INTO `sys_job_log` VALUES (332, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:10', '2026-05-08 15:19:10', '2026-05-08 15:19:10');
INSERT INTO `sys_job_log` VALUES (333, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:15', '2026-05-08 15:19:15', '2026-05-08 15:19:15');
INSERT INTO `sys_job_log` VALUES (334, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:20', '2026-05-08 15:19:20', '2026-05-08 15:19:20');
INSERT INTO `sys_job_log` VALUES (335, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:25', '2026-05-08 15:19:25', '2026-05-08 15:19:25');
INSERT INTO `sys_job_log` VALUES (336, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:30', '2026-05-08 15:19:30', '2026-05-08 15:19:30');
INSERT INTO `sys_job_log` VALUES (337, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:35', '2026-05-08 15:19:35', '2026-05-08 15:19:35');
INSERT INTO `sys_job_log` VALUES (338, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:19:40', '2026-05-08 15:19:40', '2026-05-08 15:19:40');
INSERT INTO `sys_job_log` VALUES (339, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:45', '2026-05-08 15:19:45', '2026-05-08 15:19:45');
INSERT INTO `sys_job_log` VALUES (340, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:50', '2026-05-08 15:19:50', '2026-05-08 15:19:50');
INSERT INTO `sys_job_log` VALUES (341, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:19:55', '2026-05-08 15:19:55', '2026-05-08 15:19:55');
INSERT INTO `sys_job_log` VALUES (342, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:00', '2026-05-08 15:20:00', '2026-05-08 15:20:00');
INSERT INTO `sys_job_log` VALUES (343, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:05', '2026-05-08 15:20:05', '2026-05-08 15:20:05');
INSERT INTO `sys_job_log` VALUES (344, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:10', '2026-05-08 15:20:10', '2026-05-08 15:20:10');
INSERT INTO `sys_job_log` VALUES (345, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:20:15', '2026-05-08 15:20:15', '2026-05-08 15:20:15');
INSERT INTO `sys_job_log` VALUES (346, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:20', '2026-05-08 15:20:20', '2026-05-08 15:20:20');
INSERT INTO `sys_job_log` VALUES (347, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:25', '2026-05-08 15:20:25', '2026-05-08 15:20:25');
INSERT INTO `sys_job_log` VALUES (348, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:30', '2026-05-08 15:20:30', '2026-05-08 15:20:30');
INSERT INTO `sys_job_log` VALUES (349, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:35', '2026-05-08 15:20:35', '2026-05-08 15:20:35');
INSERT INTO `sys_job_log` VALUES (350, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:20:40', '2026-05-08 15:20:40', '2026-05-08 15:20:40');
INSERT INTO `sys_job_log` VALUES (351, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:45', '2026-05-08 15:20:45', '2026-05-08 15:20:45');
INSERT INTO `sys_job_log` VALUES (352, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:50', '2026-05-08 15:20:50', '2026-05-08 15:20:50');
INSERT INTO `sys_job_log` VALUES (353, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:20:55', '2026-05-08 15:20:55', '2026-05-08 15:20:55');
INSERT INTO `sys_job_log` VALUES (354, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:00', '2026-05-08 15:21:00', '2026-05-08 15:21:00');
INSERT INTO `sys_job_log` VALUES (355, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:05', '2026-05-08 15:21:05', '2026-05-08 15:21:05');
INSERT INTO `sys_job_log` VALUES (356, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:10', '2026-05-08 15:21:10', '2026-05-08 15:21:10');
INSERT INTO `sys_job_log` VALUES (357, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:15', '2026-05-08 15:21:15', '2026-05-08 15:21:15');
INSERT INTO `sys_job_log` VALUES (358, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:20', '2026-05-08 15:21:20', '2026-05-08 15:21:20');
INSERT INTO `sys_job_log` VALUES (359, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:25', '2026-05-08 15:21:25', '2026-05-08 15:21:25');
INSERT INTO `sys_job_log` VALUES (360, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:30', '2026-05-08 15:21:30', '2026-05-08 15:21:30');
INSERT INTO `sys_job_log` VALUES (361, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:35', '2026-05-08 15:21:35', '2026-05-08 15:21:35');
INSERT INTO `sys_job_log` VALUES (362, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:21:40', '2026-05-08 15:21:40', '2026-05-08 15:21:40');
INSERT INTO `sys_job_log` VALUES (363, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:45', '2026-05-08 15:21:45', '2026-05-08 15:21:45');
INSERT INTO `sys_job_log` VALUES (364, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:21:50', '2026-05-08 15:21:50', '2026-05-08 15:21:50');
INSERT INTO `sys_job_log` VALUES (365, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:21:55', '2026-05-08 15:21:55', '2026-05-08 15:21:55');
INSERT INTO `sys_job_log` VALUES (366, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:00', '2026-05-08 15:22:00', '2026-05-08 15:22:00');
INSERT INTO `sys_job_log` VALUES (367, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:05', '2026-05-08 15:22:05', '2026-05-08 15:22:05');
INSERT INTO `sys_job_log` VALUES (368, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:22:10', '2026-05-08 15:22:10', '2026-05-08 15:22:10');
INSERT INTO `sys_job_log` VALUES (369, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:15', '2026-05-08 15:22:15', '2026-05-08 15:22:15');
INSERT INTO `sys_job_log` VALUES (370, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:20', '2026-05-08 15:22:20', '2026-05-08 15:22:20');
INSERT INTO `sys_job_log` VALUES (371, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:25', '2026-05-08 15:22:25', '2026-05-08 15:22:25');
INSERT INTO `sys_job_log` VALUES (372, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:30', '2026-05-08 15:22:30', '2026-05-08 15:22:30');
INSERT INTO `sys_job_log` VALUES (373, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:22:35', '2026-05-08 15:22:35', '2026-05-08 15:22:35');
INSERT INTO `sys_job_log` VALUES (374, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:40', '2026-05-08 15:22:40', '2026-05-08 15:22:40');
INSERT INTO `sys_job_log` VALUES (375, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:45', '2026-05-08 15:22:45', '2026-05-08 15:22:45');
INSERT INTO `sys_job_log` VALUES (376, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:50', '2026-05-08 15:22:50', '2026-05-08 15:22:50');
INSERT INTO `sys_job_log` VALUES (377, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:22:55', '2026-05-08 15:22:55', '2026-05-08 15:22:55');
INSERT INTO `sys_job_log` VALUES (378, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:00', '2026-05-08 15:23:00', '2026-05-08 15:23:00');
INSERT INTO `sys_job_log` VALUES (379, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:05', '2026-05-08 15:23:05', '2026-05-08 15:23:05');
INSERT INTO `sys_job_log` VALUES (380, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:10', '2026-05-08 15:23:10', '2026-05-08 15:23:10');
INSERT INTO `sys_job_log` VALUES (381, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:15', '2026-05-08 15:23:15', '2026-05-08 15:23:15');
INSERT INTO `sys_job_log` VALUES (382, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:20', '2026-05-08 15:23:20', '2026-05-08 15:23:20');
INSERT INTO `sys_job_log` VALUES (383, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:25', '2026-05-08 15:23:25', '2026-05-08 15:23:25');
INSERT INTO `sys_job_log` VALUES (384, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:23:30', '2026-05-08 15:23:30', '2026-05-08 15:23:30');
INSERT INTO `sys_job_log` VALUES (385, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:35', '2026-05-08 15:23:35', '2026-05-08 15:23:35');
INSERT INTO `sys_job_log` VALUES (386, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:40', '2026-05-08 15:23:40', '2026-05-08 15:23:40');
INSERT INTO `sys_job_log` VALUES (387, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:45', '2026-05-08 15:23:45', '2026-05-08 15:23:45');
INSERT INTO `sys_job_log` VALUES (388, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:50', '2026-05-08 15:23:50', '2026-05-08 15:23:50');
INSERT INTO `sys_job_log` VALUES (389, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:23:55', '2026-05-08 15:23:55', '2026-05-08 15:23:55');
INSERT INTO `sys_job_log` VALUES (390, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:00', '2026-05-08 15:24:00', '2026-05-08 15:24:00');
INSERT INTO `sys_job_log` VALUES (391, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:05', '2026-05-08 15:24:05', '2026-05-08 15:24:05');
INSERT INTO `sys_job_log` VALUES (392, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:10', '2026-05-08 15:24:10', '2026-05-08 15:24:10');
INSERT INTO `sys_job_log` VALUES (393, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:15', '2026-05-08 15:24:15', '2026-05-08 15:24:15');
INSERT INTO `sys_job_log` VALUES (394, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:20', '2026-05-08 15:24:20', '2026-05-08 15:24:20');
INSERT INTO `sys_job_log` VALUES (395, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:25', '2026-05-08 15:24:25', '2026-05-08 15:24:25');
INSERT INTO `sys_job_log` VALUES (396, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:30', '2026-05-08 15:24:30', '2026-05-08 15:24:30');
INSERT INTO `sys_job_log` VALUES (397, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:35', '2026-05-08 15:24:35', '2026-05-08 15:24:35');
INSERT INTO `sys_job_log` VALUES (398, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:40', '2026-05-08 15:24:40', '2026-05-08 15:24:40');
INSERT INTO `sys_job_log` VALUES (399, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:45', '2026-05-08 15:24:45', '2026-05-08 15:24:45');
INSERT INTO `sys_job_log` VALUES (400, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:50', '2026-05-08 15:24:50', '2026-05-08 15:24:50');
INSERT INTO `sys_job_log` VALUES (401, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:24:55', '2026-05-08 15:24:55', '2026-05-08 15:24:55');
INSERT INTO `sys_job_log` VALUES (402, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:00', '2026-05-08 15:25:00', '2026-05-08 15:25:00');
INSERT INTO `sys_job_log` VALUES (403, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:05', '2026-05-08 15:25:05', '2026-05-08 15:25:05');
INSERT INTO `sys_job_log` VALUES (404, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:10', '2026-05-08 15:25:10', '2026-05-08 15:25:10');
INSERT INTO `sys_job_log` VALUES (405, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:15', '2026-05-08 15:25:15', '2026-05-08 15:25:15');
INSERT INTO `sys_job_log` VALUES (406, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:20', '2026-05-08 15:25:20', '2026-05-08 15:25:20');
INSERT INTO `sys_job_log` VALUES (407, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:25', '2026-05-08 15:25:25', '2026-05-08 15:25:25');
INSERT INTO `sys_job_log` VALUES (408, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:30', '2026-05-08 15:25:30', '2026-05-08 15:25:30');
INSERT INTO `sys_job_log` VALUES (409, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:35', '2026-05-08 15:25:35', '2026-05-08 15:25:35');
INSERT INTO `sys_job_log` VALUES (410, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:40', '2026-05-08 15:25:40', '2026-05-08 15:25:40');
INSERT INTO `sys_job_log` VALUES (411, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:45', '2026-05-08 15:25:45', '2026-05-08 15:25:45');
INSERT INTO `sys_job_log` VALUES (412, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:50', '2026-05-08 15:25:50', '2026-05-08 15:25:50');
INSERT INTO `sys_job_log` VALUES (413, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:25:55', '2026-05-08 15:25:55', '2026-05-08 15:25:55');
INSERT INTO `sys_job_log` VALUES (414, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:26:00', '2026-05-08 15:26:00', '2026-05-08 15:26:00');
INSERT INTO `sys_job_log` VALUES (415, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:26:05', '2026-05-08 15:26:05', '2026-05-08 15:26:05');
INSERT INTO `sys_job_log` VALUES (416, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:26:10', '2026-05-08 15:26:10', '2026-05-08 15:26:10');
INSERT INTO `sys_job_log` VALUES (417, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:26:15', '2026-05-08 15:26:15', '2026-05-08 15:26:15');
INSERT INTO `sys_job_log` VALUES (418, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:26:20', '2026-05-08 15:26:20', '2026-05-08 15:26:20');
INSERT INTO `sys_job_log` VALUES (419, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:26:25', '2026-05-08 15:26:25', '2026-05-08 15:26:25');
INSERT INTO `sys_job_log` VALUES (420, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:26:30', '2026-05-08 15:26:30', '2026-05-08 15:26:30');
INSERT INTO `sys_job_log` VALUES (421, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:26:35', '2026-05-08 15:26:35', '2026-05-08 15:26:35');
INSERT INTO `sys_job_log` VALUES (422, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:26:40', '2026-05-08 15:26:40', '2026-05-08 15:26:40');
INSERT INTO `sys_job_log` VALUES (423, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:26:45', '2026-05-08 15:26:45', '2026-05-08 15:26:45');
INSERT INTO `sys_job_log` VALUES (424, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:26:50', '2026-05-08 15:26:50', '2026-05-08 15:26:50');
INSERT INTO `sys_job_log` VALUES (425, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:26:55', '2026-05-08 15:26:55', '2026-05-08 15:26:55');
INSERT INTO `sys_job_log` VALUES (426, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:00', '2026-05-08 15:27:00', '2026-05-08 15:27:00');
INSERT INTO `sys_job_log` VALUES (427, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 15:27:05', '2026-05-08 15:27:05', '2026-05-08 15:27:05');
INSERT INTO `sys_job_log` VALUES (428, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:10', '2026-05-08 15:27:10', '2026-05-08 15:27:10');
INSERT INTO `sys_job_log` VALUES (429, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:15', '2026-05-08 15:27:15', '2026-05-08 15:27:15');
INSERT INTO `sys_job_log` VALUES (430, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:20', '2026-05-08 15:27:20', '2026-05-08 15:27:20');
INSERT INTO `sys_job_log` VALUES (431, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:25', '2026-05-08 15:27:25', '2026-05-08 15:27:25');
INSERT INTO `sys_job_log` VALUES (432, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:30', '2026-05-08 15:27:30', '2026-05-08 15:27:30');
INSERT INTO `sys_job_log` VALUES (433, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:35', '2026-05-08 15:27:35', '2026-05-08 15:27:35');
INSERT INTO `sys_job_log` VALUES (434, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:40', '2026-05-08 15:27:40', '2026-05-08 15:27:40');
INSERT INTO `sys_job_log` VALUES (435, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:45', '2026-05-08 15:27:45', '2026-05-08 15:27:45');
INSERT INTO `sys_job_log` VALUES (436, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:50', '2026-05-08 15:27:50', '2026-05-08 15:27:50');
INSERT INTO `sys_job_log` VALUES (437, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:27:55', '2026-05-08 15:27:55', '2026-05-08 15:27:55');
INSERT INTO `sys_job_log` VALUES (438, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:00', '2026-05-08 15:28:00', '2026-05-08 15:28:00');
INSERT INTO `sys_job_log` VALUES (439, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:05', '2026-05-08 15:28:05', '2026-05-08 15:28:05');
INSERT INTO `sys_job_log` VALUES (440, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:10', '2026-05-08 15:28:10', '2026-05-08 15:28:10');
INSERT INTO `sys_job_log` VALUES (441, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:15', '2026-05-08 15:28:15', '2026-05-08 15:28:15');
INSERT INTO `sys_job_log` VALUES (442, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:28:20', '2026-05-08 15:28:20', '2026-05-08 15:28:20');
INSERT INTO `sys_job_log` VALUES (443, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:25', '2026-05-08 15:28:25', '2026-05-08 15:28:25');
INSERT INTO `sys_job_log` VALUES (444, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:30', '2026-05-08 15:28:30', '2026-05-08 15:28:30');
INSERT INTO `sys_job_log` VALUES (445, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:35', '2026-05-08 15:28:35', '2026-05-08 15:28:35');
INSERT INTO `sys_job_log` VALUES (446, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:40', '2026-05-08 15:28:40', '2026-05-08 15:28:40');
INSERT INTO `sys_job_log` VALUES (447, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:45', '2026-05-08 15:28:45', '2026-05-08 15:28:45');
INSERT INTO `sys_job_log` VALUES (448, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:50', '2026-05-08 15:28:50', '2026-05-08 15:28:50');
INSERT INTO `sys_job_log` VALUES (449, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:28:55', '2026-05-08 15:28:55', '2026-05-08 15:28:55');
INSERT INTO `sys_job_log` VALUES (450, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:00', '2026-05-08 15:29:00', '2026-05-08 15:29:00');
INSERT INTO `sys_job_log` VALUES (451, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:05', '2026-05-08 15:29:05', '2026-05-08 15:29:05');
INSERT INTO `sys_job_log` VALUES (452, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:29:10', '2026-05-08 15:29:10', '2026-05-08 15:29:10');
INSERT INTO `sys_job_log` VALUES (453, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:15', '2026-05-08 15:29:15', '2026-05-08 15:29:15');
INSERT INTO `sys_job_log` VALUES (454, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:20', '2026-05-08 15:29:20', '2026-05-08 15:29:20');
INSERT INTO `sys_job_log` VALUES (455, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:25', '2026-05-08 15:29:25', '2026-05-08 15:29:25');
INSERT INTO `sys_job_log` VALUES (456, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:30', '2026-05-08 15:29:30', '2026-05-08 15:29:30');
INSERT INTO `sys_job_log` VALUES (457, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:35', '2026-05-08 15:29:35', '2026-05-08 15:29:35');
INSERT INTO `sys_job_log` VALUES (458, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:29:40', '2026-05-08 15:29:40', '2026-05-08 15:29:40');
INSERT INTO `sys_job_log` VALUES (459, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:45', '2026-05-08 15:29:45', '2026-05-08 15:29:45');
INSERT INTO `sys_job_log` VALUES (460, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:50', '2026-05-08 15:29:50', '2026-05-08 15:29:50');
INSERT INTO `sys_job_log` VALUES (461, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:29:55', '2026-05-08 15:29:55', '2026-05-08 15:29:55');
INSERT INTO `sys_job_log` VALUES (462, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:00', '2026-05-08 15:30:00', '2026-05-08 15:30:00');
INSERT INTO `sys_job_log` VALUES (463, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:05', '2026-05-08 15:30:05', '2026-05-08 15:30:05');
INSERT INTO `sys_job_log` VALUES (464, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:10', '2026-05-08 15:30:10', '2026-05-08 15:30:10');
INSERT INTO `sys_job_log` VALUES (465, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:15', '2026-05-08 15:30:15', '2026-05-08 15:30:15');
INSERT INTO `sys_job_log` VALUES (466, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:20', '2026-05-08 15:30:20', '2026-05-08 15:30:20');
INSERT INTO `sys_job_log` VALUES (467, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:25', '2026-05-08 15:30:25', '2026-05-08 15:30:25');
INSERT INTO `sys_job_log` VALUES (468, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:30', '2026-05-08 15:30:30', '2026-05-08 15:30:30');
INSERT INTO `sys_job_log` VALUES (469, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:35', '2026-05-08 15:30:35', '2026-05-08 15:30:35');
INSERT INTO `sys_job_log` VALUES (470, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:40', '2026-05-08 15:30:40', '2026-05-08 15:30:40');
INSERT INTO `sys_job_log` VALUES (471, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:30:45', '2026-05-08 15:30:45', '2026-05-08 15:30:45');
INSERT INTO `sys_job_log` VALUES (472, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:50', '2026-05-08 15:30:50', '2026-05-08 15:30:50');
INSERT INTO `sys_job_log` VALUES (473, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:30:55', '2026-05-08 15:30:55', '2026-05-08 15:30:55');
INSERT INTO `sys_job_log` VALUES (474, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:00', '2026-05-08 15:31:00', '2026-05-08 15:31:00');
INSERT INTO `sys_job_log` VALUES (475, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:05', '2026-05-08 15:31:05', '2026-05-08 15:31:05');
INSERT INTO `sys_job_log` VALUES (476, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:10', '2026-05-08 15:31:10', '2026-05-08 15:31:10');
INSERT INTO `sys_job_log` VALUES (477, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:15', '2026-05-08 15:31:15', '2026-05-08 15:31:15');
INSERT INTO `sys_job_log` VALUES (478, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:20', '2026-05-08 15:31:20', '2026-05-08 15:31:20');
INSERT INTO `sys_job_log` VALUES (479, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:25', '2026-05-08 15:31:25', '2026-05-08 15:31:25');
INSERT INTO `sys_job_log` VALUES (480, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:30', '2026-05-08 15:31:30', '2026-05-08 15:31:30');
INSERT INTO `sys_job_log` VALUES (481, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:35', '2026-05-08 15:31:35', '2026-05-08 15:31:35');
INSERT INTO `sys_job_log` VALUES (482, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:40', '2026-05-08 15:31:40', '2026-05-08 15:31:40');
INSERT INTO `sys_job_log` VALUES (483, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:45', '2026-05-08 15:31:45', '2026-05-08 15:31:45');
INSERT INTO `sys_job_log` VALUES (484, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:50', '2026-05-08 15:31:50', '2026-05-08 15:31:50');
INSERT INTO `sys_job_log` VALUES (485, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:31:55', '2026-05-08 15:31:55', '2026-05-08 15:31:55');
INSERT INTO `sys_job_log` VALUES (486, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:00', '2026-05-08 15:32:00', '2026-05-08 15:32:00');
INSERT INTO `sys_job_log` VALUES (487, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:05', '2026-05-08 15:32:05', '2026-05-08 15:32:05');
INSERT INTO `sys_job_log` VALUES (488, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:10', '2026-05-08 15:32:10', '2026-05-08 15:32:10');
INSERT INTO `sys_job_log` VALUES (489, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:15', '2026-05-08 15:32:15', '2026-05-08 15:32:15');
INSERT INTO `sys_job_log` VALUES (490, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:20', '2026-05-08 15:32:20', '2026-05-08 15:32:20');
INSERT INTO `sys_job_log` VALUES (491, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:25', '2026-05-08 15:32:25', '2026-05-08 15:32:25');
INSERT INTO `sys_job_log` VALUES (492, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:30', '2026-05-08 15:32:30', '2026-05-08 15:32:30');
INSERT INTO `sys_job_log` VALUES (493, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:35', '2026-05-08 15:32:35', '2026-05-08 15:32:35');
INSERT INTO `sys_job_log` VALUES (494, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:40', '2026-05-08 15:32:40', '2026-05-08 15:32:40');
INSERT INTO `sys_job_log` VALUES (495, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:45', '2026-05-08 15:32:45', '2026-05-08 15:32:45');
INSERT INTO `sys_job_log` VALUES (496, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:50', '2026-05-08 15:32:50', '2026-05-08 15:32:50');
INSERT INTO `sys_job_log` VALUES (497, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:32:55', '2026-05-08 15:32:55', '2026-05-08 15:32:55');
INSERT INTO `sys_job_log` VALUES (498, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:00', '2026-05-08 15:33:00', '2026-05-08 15:33:00');
INSERT INTO `sys_job_log` VALUES (499, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:05', '2026-05-08 15:33:05', '2026-05-08 15:33:05');
INSERT INTO `sys_job_log` VALUES (500, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:10', '2026-05-08 15:33:10', '2026-05-08 15:33:10');
INSERT INTO `sys_job_log` VALUES (501, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:15', '2026-05-08 15:33:15', '2026-05-08 15:33:15');
INSERT INTO `sys_job_log` VALUES (502, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:20', '2026-05-08 15:33:20', '2026-05-08 15:33:20');
INSERT INTO `sys_job_log` VALUES (503, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:25', '2026-05-08 15:33:25', '2026-05-08 15:33:25');
INSERT INTO `sys_job_log` VALUES (504, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:30', '2026-05-08 15:33:30', '2026-05-08 15:33:30');
INSERT INTO `sys_job_log` VALUES (505, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:35', '2026-05-08 15:33:35', '2026-05-08 15:33:35');
INSERT INTO `sys_job_log` VALUES (506, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:40', '2026-05-08 15:33:40', '2026-05-08 15:33:40');
INSERT INTO `sys_job_log` VALUES (507, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:45', '2026-05-08 15:33:45', '2026-05-08 15:33:45');
INSERT INTO `sys_job_log` VALUES (508, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:50', '2026-05-08 15:33:50', '2026-05-08 15:33:50');
INSERT INTO `sys_job_log` VALUES (509, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:33:55', '2026-05-08 15:33:55', '2026-05-08 15:33:55');
INSERT INTO `sys_job_log` VALUES (510, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:00', '2026-05-08 15:34:00', '2026-05-08 15:34:00');
INSERT INTO `sys_job_log` VALUES (511, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:05', '2026-05-08 15:34:05', '2026-05-08 15:34:05');
INSERT INTO `sys_job_log` VALUES (512, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:34:10', '2026-05-08 15:34:10', '2026-05-08 15:34:10');
INSERT INTO `sys_job_log` VALUES (513, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:15', '2026-05-08 15:34:15', '2026-05-08 15:34:15');
INSERT INTO `sys_job_log` VALUES (514, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:20', '2026-05-08 15:34:20', '2026-05-08 15:34:20');
INSERT INTO `sys_job_log` VALUES (515, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:25', '2026-05-08 15:34:25', '2026-05-08 15:34:25');
INSERT INTO `sys_job_log` VALUES (516, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:30', '2026-05-08 15:34:30', '2026-05-08 15:34:30');
INSERT INTO `sys_job_log` VALUES (517, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:35', '2026-05-08 15:34:35', '2026-05-08 15:34:35');
INSERT INTO `sys_job_log` VALUES (518, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:40', '2026-05-08 15:34:40', '2026-05-08 15:34:40');
INSERT INTO `sys_job_log` VALUES (519, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:45', '2026-05-08 15:34:45', '2026-05-08 15:34:45');
INSERT INTO `sys_job_log` VALUES (520, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:50', '2026-05-08 15:34:50', '2026-05-08 15:34:50');
INSERT INTO `sys_job_log` VALUES (521, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:34:55', '2026-05-08 15:34:55', '2026-05-08 15:34:55');
INSERT INTO `sys_job_log` VALUES (522, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:00', '2026-05-08 15:35:00', '2026-05-08 15:35:00');
INSERT INTO `sys_job_log` VALUES (523, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:05', '2026-05-08 15:35:05', '2026-05-08 15:35:05');
INSERT INTO `sys_job_log` VALUES (524, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:10', '2026-05-08 15:35:10', '2026-05-08 15:35:10');
INSERT INTO `sys_job_log` VALUES (525, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:15', '2026-05-08 15:35:15', '2026-05-08 15:35:15');
INSERT INTO `sys_job_log` VALUES (526, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:20', '2026-05-08 15:35:20', '2026-05-08 15:35:20');
INSERT INTO `sys_job_log` VALUES (527, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:25', '2026-05-08 15:35:25', '2026-05-08 15:35:25');
INSERT INTO `sys_job_log` VALUES (528, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:30', '2026-05-08 15:35:30', '2026-05-08 15:35:30');
INSERT INTO `sys_job_log` VALUES (529, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:35', '2026-05-08 15:35:35', '2026-05-08 15:35:35');
INSERT INTO `sys_job_log` VALUES (530, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:35:40', '2026-05-08 15:35:40', '2026-05-08 15:35:40');
INSERT INTO `sys_job_log` VALUES (531, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:45', '2026-05-08 15:35:45', '2026-05-08 15:35:45');
INSERT INTO `sys_job_log` VALUES (532, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:50', '2026-05-08 15:35:50', '2026-05-08 15:35:50');
INSERT INTO `sys_job_log` VALUES (533, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:35:55', '2026-05-08 15:35:55', '2026-05-08 15:35:55');
INSERT INTO `sys_job_log` VALUES (534, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:00', '2026-05-08 15:36:00', '2026-05-08 15:36:00');
INSERT INTO `sys_job_log` VALUES (535, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:05', '2026-05-08 15:36:05', '2026-05-08 15:36:05');
INSERT INTO `sys_job_log` VALUES (536, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:36:10', '2026-05-08 15:36:10', '2026-05-08 15:36:10');
INSERT INTO `sys_job_log` VALUES (537, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:15', '2026-05-08 15:36:15', '2026-05-08 15:36:15');
INSERT INTO `sys_job_log` VALUES (538, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:20', '2026-05-08 15:36:20', '2026-05-08 15:36:20');
INSERT INTO `sys_job_log` VALUES (539, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:25', '2026-05-08 15:36:25', '2026-05-08 15:36:25');
INSERT INTO `sys_job_log` VALUES (540, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:30', '2026-05-08 15:36:30', '2026-05-08 15:36:30');
INSERT INTO `sys_job_log` VALUES (541, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:35', '2026-05-08 15:36:35', '2026-05-08 15:36:35');
INSERT INTO `sys_job_log` VALUES (542, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:40', '2026-05-08 15:36:40', '2026-05-08 15:36:40');
INSERT INTO `sys_job_log` VALUES (543, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:45', '2026-05-08 15:36:45', '2026-05-08 15:36:45');
INSERT INTO `sys_job_log` VALUES (544, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:50', '2026-05-08 15:36:50', '2026-05-08 15:36:50');
INSERT INTO `sys_job_log` VALUES (545, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:36:55', '2026-05-08 15:36:55', '2026-05-08 15:36:55');
INSERT INTO `sys_job_log` VALUES (546, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:00', '2026-05-08 15:37:00', '2026-05-08 15:37:00');
INSERT INTO `sys_job_log` VALUES (547, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:05', '2026-05-08 15:37:05', '2026-05-08 15:37:05');
INSERT INTO `sys_job_log` VALUES (548, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:10', '2026-05-08 15:37:10', '2026-05-08 15:37:10');
INSERT INTO `sys_job_log` VALUES (549, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:15', '2026-05-08 15:37:15', '2026-05-08 15:37:15');
INSERT INTO `sys_job_log` VALUES (550, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:20', '2026-05-08 15:37:20', '2026-05-08 15:37:20');
INSERT INTO `sys_job_log` VALUES (551, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:25', '2026-05-08 15:37:25', '2026-05-08 15:37:25');
INSERT INTO `sys_job_log` VALUES (552, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:30', '2026-05-08 15:37:30', '2026-05-08 15:37:30');
INSERT INTO `sys_job_log` VALUES (553, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:35', '2026-05-08 15:37:35', '2026-05-08 15:37:35');
INSERT INTO `sys_job_log` VALUES (554, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:40', '2026-05-08 15:37:40', '2026-05-08 15:37:40');
INSERT INTO `sys_job_log` VALUES (555, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:45', '2026-05-08 15:37:45', '2026-05-08 15:37:45');
INSERT INTO `sys_job_log` VALUES (556, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:50', '2026-05-08 15:37:50', '2026-05-08 15:37:50');
INSERT INTO `sys_job_log` VALUES (557, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:37:55', '2026-05-08 15:37:55', '2026-05-08 15:37:55');
INSERT INTO `sys_job_log` VALUES (558, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:00', '2026-05-08 15:38:00', '2026-05-08 15:38:00');
INSERT INTO `sys_job_log` VALUES (559, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:38:05', '2026-05-08 15:38:05', '2026-05-08 15:38:05');
INSERT INTO `sys_job_log` VALUES (560, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:10', '2026-05-08 15:38:10', '2026-05-08 15:38:10');
INSERT INTO `sys_job_log` VALUES (561, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:15', '2026-05-08 15:38:15', '2026-05-08 15:38:15');
INSERT INTO `sys_job_log` VALUES (562, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:20', '2026-05-08 15:38:20', '2026-05-08 15:38:20');
INSERT INTO `sys_job_log` VALUES (563, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:25', '2026-05-08 15:38:25', '2026-05-08 15:38:25');
INSERT INTO `sys_job_log` VALUES (564, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:30', '2026-05-08 15:38:30', '2026-05-08 15:38:30');
INSERT INTO `sys_job_log` VALUES (565, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:35', '2026-05-08 15:38:35', '2026-05-08 15:38:35');
INSERT INTO `sys_job_log` VALUES (566, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:40', '2026-05-08 15:38:40', '2026-05-08 15:38:40');
INSERT INTO `sys_job_log` VALUES (567, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:45', '2026-05-08 15:38:45', '2026-05-08 15:38:45');
INSERT INTO `sys_job_log` VALUES (568, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:50', '2026-05-08 15:38:50', '2026-05-08 15:38:50');
INSERT INTO `sys_job_log` VALUES (569, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:38:55', '2026-05-08 15:38:55', '2026-05-08 15:38:55');
INSERT INTO `sys_job_log` VALUES (570, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:00', '2026-05-08 15:39:00', '2026-05-08 15:39:00');
INSERT INTO `sys_job_log` VALUES (571, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:05', '2026-05-08 15:39:05', '2026-05-08 15:39:05');
INSERT INTO `sys_job_log` VALUES (572, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 15:39:10', '2026-05-08 15:39:10', '2026-05-08 15:39:10');
INSERT INTO `sys_job_log` VALUES (573, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:15', '2026-05-08 15:39:15', '2026-05-08 15:39:15');
INSERT INTO `sys_job_log` VALUES (574, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:20', '2026-05-08 15:39:20', '2026-05-08 15:39:20');
INSERT INTO `sys_job_log` VALUES (575, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:25', '2026-05-08 15:39:25', '2026-05-08 15:39:25');
INSERT INTO `sys_job_log` VALUES (576, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:30', '2026-05-08 15:39:30', '2026-05-08 15:39:30');
INSERT INTO `sys_job_log` VALUES (577, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:35', '2026-05-08 15:39:35', '2026-05-08 15:39:35');
INSERT INTO `sys_job_log` VALUES (578, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:40', '2026-05-08 15:39:40', '2026-05-08 15:39:40');
INSERT INTO `sys_job_log` VALUES (579, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:45', '2026-05-08 15:39:45', '2026-05-08 15:39:45');
INSERT INTO `sys_job_log` VALUES (580, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:50', '2026-05-08 15:39:50', '2026-05-08 15:39:50');
INSERT INTO `sys_job_log` VALUES (581, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:39:55', '2026-05-08 15:39:55', '2026-05-08 15:39:55');
INSERT INTO `sys_job_log` VALUES (582, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:00', '2026-05-08 15:40:00', '2026-05-08 15:40:00');
INSERT INTO `sys_job_log` VALUES (583, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:05', '2026-05-08 15:40:05', '2026-05-08 15:40:05');
INSERT INTO `sys_job_log` VALUES (584, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:10', '2026-05-08 15:40:10', '2026-05-08 15:40:10');
INSERT INTO `sys_job_log` VALUES (585, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:15', '2026-05-08 15:40:15', '2026-05-08 15:40:15');
INSERT INTO `sys_job_log` VALUES (586, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:20', '2026-05-08 15:40:20', '2026-05-08 15:40:20');
INSERT INTO `sys_job_log` VALUES (587, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:25', '2026-05-08 15:40:25', '2026-05-08 15:40:25');
INSERT INTO `sys_job_log` VALUES (588, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:30', '2026-05-08 15:40:30', '2026-05-08 15:40:30');
INSERT INTO `sys_job_log` VALUES (589, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:35', '2026-05-08 15:40:35', '2026-05-08 15:40:35');
INSERT INTO `sys_job_log` VALUES (590, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:40', '2026-05-08 15:40:40', '2026-05-08 15:40:40');
INSERT INTO `sys_job_log` VALUES (591, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:45', '2026-05-08 15:40:45', '2026-05-08 15:40:45');
INSERT INTO `sys_job_log` VALUES (592, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:50', '2026-05-08 15:40:50', '2026-05-08 15:40:50');
INSERT INTO `sys_job_log` VALUES (593, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:40:55', '2026-05-08 15:40:55', '2026-05-08 15:40:55');
INSERT INTO `sys_job_log` VALUES (594, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:00', '2026-05-08 15:41:00', '2026-05-08 15:41:00');
INSERT INTO `sys_job_log` VALUES (595, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:05', '2026-05-08 15:41:05', '2026-05-08 15:41:05');
INSERT INTO `sys_job_log` VALUES (596, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:10', '2026-05-08 15:41:10', '2026-05-08 15:41:10');
INSERT INTO `sys_job_log` VALUES (597, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:15', '2026-05-08 15:41:15', '2026-05-08 15:41:15');
INSERT INTO `sys_job_log` VALUES (598, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:20', '2026-05-08 15:41:20', '2026-05-08 15:41:20');
INSERT INTO `sys_job_log` VALUES (599, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:25', '2026-05-08 15:41:25', '2026-05-08 15:41:25');
INSERT INTO `sys_job_log` VALUES (600, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:30', '2026-05-08 15:41:30', '2026-05-08 15:41:30');
INSERT INTO `sys_job_log` VALUES (601, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:35', '2026-05-08 15:41:35', '2026-05-08 15:41:35');
INSERT INTO `sys_job_log` VALUES (602, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:40', '2026-05-08 15:41:40', '2026-05-08 15:41:40');
INSERT INTO `sys_job_log` VALUES (603, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:45', '2026-05-08 15:41:45', '2026-05-08 15:41:45');
INSERT INTO `sys_job_log` VALUES (604, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:50', '2026-05-08 15:41:50', '2026-05-08 15:41:50');
INSERT INTO `sys_job_log` VALUES (605, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:41:55', '2026-05-08 15:41:55', '2026-05-08 15:41:55');
INSERT INTO `sys_job_log` VALUES (606, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:00', '2026-05-08 15:42:00', '2026-05-08 15:42:00');
INSERT INTO `sys_job_log` VALUES (607, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:05', '2026-05-08 15:42:05', '2026-05-08 15:42:05');
INSERT INTO `sys_job_log` VALUES (608, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:10', '2026-05-08 15:42:10', '2026-05-08 15:42:10');
INSERT INTO `sys_job_log` VALUES (609, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:15', '2026-05-08 15:42:15', '2026-05-08 15:42:15');
INSERT INTO `sys_job_log` VALUES (610, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:20', '2026-05-08 15:42:20', '2026-05-08 15:42:20');
INSERT INTO `sys_job_log` VALUES (611, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:25', '2026-05-08 15:42:25', '2026-05-08 15:42:25');
INSERT INTO `sys_job_log` VALUES (612, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:30', '2026-05-08 15:42:30', '2026-05-08 15:42:30');
INSERT INTO `sys_job_log` VALUES (613, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:35', '2026-05-08 15:42:35', '2026-05-08 15:42:35');
INSERT INTO `sys_job_log` VALUES (614, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:40', '2026-05-08 15:42:40', '2026-05-08 15:42:40');
INSERT INTO `sys_job_log` VALUES (615, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:45', '2026-05-08 15:42:45', '2026-05-08 15:42:45');
INSERT INTO `sys_job_log` VALUES (616, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:50', '2026-05-08 15:42:50', '2026-05-08 15:42:50');
INSERT INTO `sys_job_log` VALUES (617, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:42:55', '2026-05-08 15:42:55', '2026-05-08 15:42:55');
INSERT INTO `sys_job_log` VALUES (618, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:00', '2026-05-08 15:43:00', '2026-05-08 15:43:00');
INSERT INTO `sys_job_log` VALUES (619, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:05', '2026-05-08 15:43:05', '2026-05-08 15:43:05');
INSERT INTO `sys_job_log` VALUES (620, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:10', '2026-05-08 15:43:10', '2026-05-08 15:43:10');
INSERT INTO `sys_job_log` VALUES (621, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:15', '2026-05-08 15:43:15', '2026-05-08 15:43:15');
INSERT INTO `sys_job_log` VALUES (622, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:20', '2026-05-08 15:43:20', '2026-05-08 15:43:20');
INSERT INTO `sys_job_log` VALUES (623, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:25', '2026-05-08 15:43:25', '2026-05-08 15:43:25');
INSERT INTO `sys_job_log` VALUES (624, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:30', '2026-05-08 15:43:30', '2026-05-08 15:43:30');
INSERT INTO `sys_job_log` VALUES (625, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:35', '2026-05-08 15:43:35', '2026-05-08 15:43:35');
INSERT INTO `sys_job_log` VALUES (626, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:40', '2026-05-08 15:43:40', '2026-05-08 15:43:40');
INSERT INTO `sys_job_log` VALUES (627, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:45', '2026-05-08 15:43:45', '2026-05-08 15:43:45');
INSERT INTO `sys_job_log` VALUES (628, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:50', '2026-05-08 15:43:50', '2026-05-08 15:43:50');
INSERT INTO `sys_job_log` VALUES (629, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:43:55', '2026-05-08 15:43:55', '2026-05-08 15:43:55');
INSERT INTO `sys_job_log` VALUES (630, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:44:00', '2026-05-08 15:44:00', '2026-05-08 15:44:00');
INSERT INTO `sys_job_log` VALUES (631, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:44:05', '2026-05-08 15:44:05', '2026-05-08 15:44:05');
INSERT INTO `sys_job_log` VALUES (632, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:44:10', '2026-05-08 15:44:10', '2026-05-08 15:44:10');
INSERT INTO `sys_job_log` VALUES (633, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:44:15', '2026-05-08 15:44:15', '2026-05-08 15:44:15');
INSERT INTO `sys_job_log` VALUES (634, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 15:44:20', '2026-05-08 15:44:20', '2026-05-08 15:44:20');
INSERT INTO `sys_job_log` VALUES (635, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:38:45', '2026-05-08 16:38:45', '2026-05-08 16:38:45');
INSERT INTO `sys_job_log` VALUES (636, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:38:50', '2026-05-08 16:38:50', '2026-05-08 16:38:50');
INSERT INTO `sys_job_log` VALUES (637, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:38:55', '2026-05-08 16:38:55', '2026-05-08 16:38:55');
INSERT INTO `sys_job_log` VALUES (638, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:00', '2026-05-08 16:39:00', '2026-05-08 16:39:00');
INSERT INTO `sys_job_log` VALUES (639, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:05', '2026-05-08 16:39:05', '2026-05-08 16:39:05');
INSERT INTO `sys_job_log` VALUES (640, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:10', '2026-05-08 16:39:10', '2026-05-08 16:39:10');
INSERT INTO `sys_job_log` VALUES (641, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:15', '2026-05-08 16:39:15', '2026-05-08 16:39:15');
INSERT INTO `sys_job_log` VALUES (642, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:20', '2026-05-08 16:39:20', '2026-05-08 16:39:20');
INSERT INTO `sys_job_log` VALUES (643, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:25', '2026-05-08 16:39:25', '2026-05-08 16:39:25');
INSERT INTO `sys_job_log` VALUES (644, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:30', '2026-05-08 16:39:30', '2026-05-08 16:39:30');
INSERT INTO `sys_job_log` VALUES (645, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:35', '2026-05-08 16:39:35', '2026-05-08 16:39:35');
INSERT INTO `sys_job_log` VALUES (646, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:40', '2026-05-08 16:39:40', '2026-05-08 16:39:40');
INSERT INTO `sys_job_log` VALUES (647, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:45', '2026-05-08 16:39:45', '2026-05-08 16:39:45');
INSERT INTO `sys_job_log` VALUES (648, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:50', '2026-05-08 16:39:50', '2026-05-08 16:39:50');
INSERT INTO `sys_job_log` VALUES (649, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:39:55', '2026-05-08 16:39:55', '2026-05-08 16:39:55');
INSERT INTO `sys_job_log` VALUES (650, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:00', '2026-05-08 16:40:00', '2026-05-08 16:40:00');
INSERT INTO `sys_job_log` VALUES (651, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:05', '2026-05-08 16:40:05', '2026-05-08 16:40:05');
INSERT INTO `sys_job_log` VALUES (652, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:10', '2026-05-08 16:40:10', '2026-05-08 16:40:10');
INSERT INTO `sys_job_log` VALUES (653, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:15', '2026-05-08 16:40:15', '2026-05-08 16:40:15');
INSERT INTO `sys_job_log` VALUES (654, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:20', '2026-05-08 16:40:20', '2026-05-08 16:40:20');
INSERT INTO `sys_job_log` VALUES (655, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:25', '2026-05-08 16:40:25', '2026-05-08 16:40:25');
INSERT INTO `sys_job_log` VALUES (656, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:30', '2026-05-08 16:40:30', '2026-05-08 16:40:30');
INSERT INTO `sys_job_log` VALUES (657, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:40:35', '2026-05-08 16:40:35', '2026-05-08 16:40:35');
INSERT INTO `sys_job_log` VALUES (658, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:40', '2026-05-08 16:40:40', '2026-05-08 16:40:40');
INSERT INTO `sys_job_log` VALUES (659, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:45', '2026-05-08 16:40:45', '2026-05-08 16:40:45');
INSERT INTO `sys_job_log` VALUES (660, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:50', '2026-05-08 16:40:50', '2026-05-08 16:40:50');
INSERT INTO `sys_job_log` VALUES (661, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:40:55', '2026-05-08 16:40:55', '2026-05-08 16:40:55');
INSERT INTO `sys_job_log` VALUES (662, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:41:00', '2026-05-08 16:41:00', '2026-05-08 16:41:00');
INSERT INTO `sys_job_log` VALUES (663, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:41:05', '2026-05-08 16:41:05', '2026-05-08 16:41:05');
INSERT INTO `sys_job_log` VALUES (664, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:41:10', '2026-05-08 16:41:10', '2026-05-08 16:41:10');
INSERT INTO `sys_job_log` VALUES (665, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:41:15', '2026-05-08 16:41:15', '2026-05-08 16:41:15');
INSERT INTO `sys_job_log` VALUES (666, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:41:20', '2026-05-08 16:41:20', '2026-05-08 16:41:20');
INSERT INTO `sys_job_log` VALUES (667, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:41:25', '2026-05-08 16:41:25', '2026-05-08 16:41:25');
INSERT INTO `sys_job_log` VALUES (668, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:41:30', '2026-05-08 16:41:30', '2026-05-08 16:41:30');
INSERT INTO `sys_job_log` VALUES (669, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:41:35', '2026-05-08 16:41:35', '2026-05-08 16:41:35');
INSERT INTO `sys_job_log` VALUES (670, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:41:40', '2026-05-08 16:41:40', '2026-05-08 16:41:40');
INSERT INTO `sys_job_log` VALUES (671, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 16:48:47', '2026-05-08 16:48:47', '2026-05-08 16:48:46');
INSERT INTO `sys_job_log` VALUES (672, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:48:50', '2026-05-08 16:48:50', '2026-05-08 16:48:50');
INSERT INTO `sys_job_log` VALUES (673, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:48:55', '2026-05-08 16:48:55', '2026-05-08 16:48:55');
INSERT INTO `sys_job_log` VALUES (674, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:49:00', '2026-05-08 16:49:00', '2026-05-08 16:49:00');
INSERT INTO `sys_job_log` VALUES (675, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:49:05', '2026-05-08 16:49:05', '2026-05-08 16:49:05');
INSERT INTO `sys_job_log` VALUES (676, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:49:10', '2026-05-08 16:49:10', '2026-05-08 16:49:10');
INSERT INTO `sys_job_log` VALUES (677, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:49:15', '2026-05-08 16:49:15', '2026-05-08 16:49:15');
INSERT INTO `sys_job_log` VALUES (678, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:49:20', '2026-05-08 16:49:20', '2026-05-08 16:49:20');
INSERT INTO `sys_job_log` VALUES (679, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:49:25', '2026-05-08 16:49:25', '2026-05-08 16:49:25');
INSERT INTO `sys_job_log` VALUES (680, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:49:30', '2026-05-08 16:49:30', '2026-05-08 16:49:30');
INSERT INTO `sys_job_log` VALUES (681, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:49:35', '2026-05-08 16:49:35', '2026-05-08 16:49:35');
INSERT INTO `sys_job_log` VALUES (682, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:49:40', '2026-05-08 16:49:40', '2026-05-08 16:49:40');
INSERT INTO `sys_job_log` VALUES (683, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:49:45', '2026-05-08 16:49:45', '2026-05-08 16:49:45');
INSERT INTO `sys_job_log` VALUES (684, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:49:50', '2026-05-08 16:49:50', '2026-05-08 16:49:50');
INSERT INTO `sys_job_log` VALUES (685, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:49:55', '2026-05-08 16:49:55', '2026-05-08 16:49:55');
INSERT INTO `sys_job_log` VALUES (686, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:50:00', '2026-05-08 16:50:00', '2026-05-08 16:50:00');
INSERT INTO `sys_job_log` VALUES (687, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:50:05', '2026-05-08 16:50:05', '2026-05-08 16:50:05');
INSERT INTO `sys_job_log` VALUES (688, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:50:10', '2026-05-08 16:50:10', '2026-05-08 16:50:10');
INSERT INTO `sys_job_log` VALUES (689, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:50:15', '2026-05-08 16:50:15', '2026-05-08 16:50:15');
INSERT INTO `sys_job_log` VALUES (690, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:50:20', '2026-05-08 16:50:20', '2026-05-08 16:50:20');
INSERT INTO `sys_job_log` VALUES (691, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:50:25', '2026-05-08 16:50:25', '2026-05-08 16:50:25');
INSERT INTO `sys_job_log` VALUES (692, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:50:30', '2026-05-08 16:50:30', '2026-05-08 16:50:30');
INSERT INTO `sys_job_log` VALUES (693, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:50:35', '2026-05-08 16:50:35', '2026-05-08 16:50:35');
INSERT INTO `sys_job_log` VALUES (694, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:50:40', '2026-05-08 16:50:40', '2026-05-08 16:50:40');
INSERT INTO `sys_job_log` VALUES (695, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:50:45', '2026-05-08 16:50:45', '2026-05-08 16:50:45');
INSERT INTO `sys_job_log` VALUES (696, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:50:50', '2026-05-08 16:50:50', '2026-05-08 16:50:50');
INSERT INTO `sys_job_log` VALUES (697, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:50:55', '2026-05-08 16:50:55', '2026-05-08 16:50:55');
INSERT INTO `sys_job_log` VALUES (698, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:00', '2026-05-08 16:51:00', '2026-05-08 16:51:00');
INSERT INTO `sys_job_log` VALUES (699, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:05', '2026-05-08 16:51:05', '2026-05-08 16:51:05');
INSERT INTO `sys_job_log` VALUES (700, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:10', '2026-05-08 16:51:10', '2026-05-08 16:51:10');
INSERT INTO `sys_job_log` VALUES (701, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:15', '2026-05-08 16:51:15', '2026-05-08 16:51:15');
INSERT INTO `sys_job_log` VALUES (702, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:20', '2026-05-08 16:51:20', '2026-05-08 16:51:20');
INSERT INTO `sys_job_log` VALUES (703, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:25', '2026-05-08 16:51:25', '2026-05-08 16:51:25');
INSERT INTO `sys_job_log` VALUES (704, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:30', '2026-05-08 16:51:30', '2026-05-08 16:51:30');
INSERT INTO `sys_job_log` VALUES (705, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:35', '2026-05-08 16:51:35', '2026-05-08 16:51:35');
INSERT INTO `sys_job_log` VALUES (706, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:51:40', '2026-05-08 16:51:40', '2026-05-08 16:51:40');
INSERT INTO `sys_job_log` VALUES (707, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:51:45', '2026-05-08 16:51:45', '2026-05-08 16:51:45');
INSERT INTO `sys_job_log` VALUES (708, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:50', '2026-05-08 16:51:50', '2026-05-08 16:51:50');
INSERT INTO `sys_job_log` VALUES (709, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:51:55', '2026-05-08 16:51:55', '2026-05-08 16:51:55');
INSERT INTO `sys_job_log` VALUES (710, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:00', '2026-05-08 16:52:00', '2026-05-08 16:52:00');
INSERT INTO `sys_job_log` VALUES (711, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:05', '2026-05-08 16:52:05', '2026-05-08 16:52:05');
INSERT INTO `sys_job_log` VALUES (712, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:10', '2026-05-08 16:52:10', '2026-05-08 16:52:10');
INSERT INTO `sys_job_log` VALUES (713, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:15', '2026-05-08 16:52:15', '2026-05-08 16:52:15');
INSERT INTO `sys_job_log` VALUES (714, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:20', '2026-05-08 16:52:20', '2026-05-08 16:52:20');
INSERT INTO `sys_job_log` VALUES (715, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:25', '2026-05-08 16:52:25', '2026-05-08 16:52:25');
INSERT INTO `sys_job_log` VALUES (716, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:30', '2026-05-08 16:52:30', '2026-05-08 16:52:30');
INSERT INTO `sys_job_log` VALUES (717, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:35', '2026-05-08 16:52:35', '2026-05-08 16:52:35');
INSERT INTO `sys_job_log` VALUES (718, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:40', '2026-05-08 16:52:40', '2026-05-08 16:52:40');
INSERT INTO `sys_job_log` VALUES (719, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:52:45', '2026-05-08 16:52:45', '2026-05-08 16:52:45');
INSERT INTO `sys_job_log` VALUES (720, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:52:50', '2026-05-08 16:52:50', '2026-05-08 16:52:50');
INSERT INTO `sys_job_log` VALUES (721, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:52:55', '2026-05-08 16:52:55', '2026-05-08 16:52:55');
INSERT INTO `sys_job_log` VALUES (722, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:53:00', '2026-05-08 16:53:00', '2026-05-08 16:53:00');
INSERT INTO `sys_job_log` VALUES (723, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:53:05', '2026-05-08 16:53:05', '2026-05-08 16:53:05');
INSERT INTO `sys_job_log` VALUES (724, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:53:10', '2026-05-08 16:53:10', '2026-05-08 16:53:10');
INSERT INTO `sys_job_log` VALUES (725, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:53:15', '2026-05-08 16:53:15', '2026-05-08 16:53:15');
INSERT INTO `sys_job_log` VALUES (726, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 16:53:20', '2026-05-08 16:53:20', '2026-05-08 16:53:20');
INSERT INTO `sys_job_log` VALUES (727, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:53:25', '2026-05-08 16:53:25', '2026-05-08 16:53:25');
INSERT INTO `sys_job_log` VALUES (728, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:53:30', '2026-05-08 16:53:30', '2026-05-08 16:53:30');
INSERT INTO `sys_job_log` VALUES (729, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:53:35', '2026-05-08 16:53:35', '2026-05-08 16:53:35');
INSERT INTO `sys_job_log` VALUES (730, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:53:40', '2026-05-08 16:53:40', '2026-05-08 16:53:40');
INSERT INTO `sys_job_log` VALUES (731, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:53:45', '2026-05-08 16:53:45', '2026-05-08 16:53:45');
INSERT INTO `sys_job_log` VALUES (732, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:53:50', '2026-05-08 16:53:50', '2026-05-08 16:53:50');
INSERT INTO `sys_job_log` VALUES (733, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:53:55', '2026-05-08 16:53:55', '2026-05-08 16:53:55');
INSERT INTO `sys_job_log` VALUES (734, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 16:54:00', '2026-05-08 16:54:00', '2026-05-08 16:54:00');
INSERT INTO `sys_job_log` VALUES (735, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:54:05', '2026-05-08 16:54:05', '2026-05-08 16:54:05');
INSERT INTO `sys_job_log` VALUES (736, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:54:10', '2026-05-08 16:54:10', '2026-05-08 16:54:10');
INSERT INTO `sys_job_log` VALUES (737, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:54:15', '2026-05-08 16:54:15', '2026-05-08 16:54:15');
INSERT INTO `sys_job_log` VALUES (738, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:54:20', '2026-05-08 16:54:20', '2026-05-08 16:54:20');
INSERT INTO `sys_job_log` VALUES (739, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:54:25', '2026-05-08 16:54:25', '2026-05-08 16:54:25');
INSERT INTO `sys_job_log` VALUES (740, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:54:30', '2026-05-08 16:54:30', '2026-05-08 16:54:30');
INSERT INTO `sys_job_log` VALUES (741, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:54:35', '2026-05-08 16:54:35', '2026-05-08 16:54:35');
INSERT INTO `sys_job_log` VALUES (742, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 16:54:40', '2026-05-08 16:54:40', '2026-05-08 16:54:40');
INSERT INTO `sys_job_log` VALUES (743, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:54:45', '2026-05-08 16:54:45', '2026-05-08 16:54:45');
INSERT INTO `sys_job_log` VALUES (744, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:54:50', '2026-05-08 16:54:50', '2026-05-08 16:54:50');
INSERT INTO `sys_job_log` VALUES (745, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:54:55', '2026-05-08 16:54:55', '2026-05-08 16:54:55');
INSERT INTO `sys_job_log` VALUES (746, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:00', '2026-05-08 16:55:00', '2026-05-08 16:55:00');
INSERT INTO `sys_job_log` VALUES (747, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:05', '2026-05-08 16:55:05', '2026-05-08 16:55:05');
INSERT INTO `sys_job_log` VALUES (748, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:10', '2026-05-08 16:55:10', '2026-05-08 16:55:10');
INSERT INTO `sys_job_log` VALUES (749, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:15', '2026-05-08 16:55:15', '2026-05-08 16:55:15');
INSERT INTO `sys_job_log` VALUES (750, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:20', '2026-05-08 16:55:20', '2026-05-08 16:55:20');
INSERT INTO `sys_job_log` VALUES (751, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:25', '2026-05-08 16:55:25', '2026-05-08 16:55:25');
INSERT INTO `sys_job_log` VALUES (752, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:30', '2026-05-08 16:55:30', '2026-05-08 16:55:30');
INSERT INTO `sys_job_log` VALUES (753, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:35', '2026-05-08 16:55:35', '2026-05-08 16:55:35');
INSERT INTO `sys_job_log` VALUES (754, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:40', '2026-05-08 16:55:40', '2026-05-08 16:55:40');
INSERT INTO `sys_job_log` VALUES (755, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:45', '2026-05-08 16:55:45', '2026-05-08 16:55:45');
INSERT INTO `sys_job_log` VALUES (756, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:50', '2026-05-08 16:55:50', '2026-05-08 16:55:50');
INSERT INTO `sys_job_log` VALUES (757, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:55:55', '2026-05-08 16:55:55', '2026-05-08 16:55:55');
INSERT INTO `sys_job_log` VALUES (758, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:56:00', '2026-05-08 16:56:00', '2026-05-08 16:56:00');
INSERT INTO `sys_job_log` VALUES (759, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:56:05', '2026-05-08 16:56:05', '2026-05-08 16:56:05');
INSERT INTO `sys_job_log` VALUES (760, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:56:10', '2026-05-08 16:56:10', '2026-05-08 16:56:10');
INSERT INTO `sys_job_log` VALUES (761, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:56:15', '2026-05-08 16:56:15', '2026-05-08 16:56:15');
INSERT INTO `sys_job_log` VALUES (762, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:56:20', '2026-05-08 16:56:20', '2026-05-08 16:56:20');
INSERT INTO `sys_job_log` VALUES (763, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:56:25', '2026-05-08 16:56:25', '2026-05-08 16:56:25');
INSERT INTO `sys_job_log` VALUES (764, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:56:30', '2026-05-08 16:56:30', '2026-05-08 16:56:30');
INSERT INTO `sys_job_log` VALUES (765, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:56:35', '2026-05-08 16:56:35', '2026-05-08 16:56:35');
INSERT INTO `sys_job_log` VALUES (766, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:56:40', '2026-05-08 16:56:40', '2026-05-08 16:56:40');
INSERT INTO `sys_job_log` VALUES (767, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:56:45', '2026-05-08 16:56:45', '2026-05-08 16:56:45');
INSERT INTO `sys_job_log` VALUES (768, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:56:50', '2026-05-08 16:56:50', '2026-05-08 16:56:50');
INSERT INTO `sys_job_log` VALUES (769, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:56:55', '2026-05-08 16:56:55', '2026-05-08 16:56:55');
INSERT INTO `sys_job_log` VALUES (770, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:57:00', '2026-05-08 16:57:00', '2026-05-08 16:57:00');
INSERT INTO `sys_job_log` VALUES (771, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:57:05', '2026-05-08 16:57:05', '2026-05-08 16:57:05');
INSERT INTO `sys_job_log` VALUES (772, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:57:10', '2026-05-08 16:57:10', '2026-05-08 16:57:10');
INSERT INTO `sys_job_log` VALUES (773, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:57:15', '2026-05-08 16:57:15', '2026-05-08 16:57:15');
INSERT INTO `sys_job_log` VALUES (774, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:57:20', '2026-05-08 16:57:20', '2026-05-08 16:57:20');
INSERT INTO `sys_job_log` VALUES (775, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:57:25', '2026-05-08 16:57:25', '2026-05-08 16:57:25');
INSERT INTO `sys_job_log` VALUES (776, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:57:30', '2026-05-08 16:57:30', '2026-05-08 16:57:30');
INSERT INTO `sys_job_log` VALUES (777, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:57:35', '2026-05-08 16:57:35', '2026-05-08 16:57:35');
INSERT INTO `sys_job_log` VALUES (778, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 16:57:40', '2026-05-08 16:57:40', '2026-05-08 16:57:40');
INSERT INTO `sys_job_log` VALUES (779, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:57:45', '2026-05-08 16:57:45', '2026-05-08 16:57:45');
INSERT INTO `sys_job_log` VALUES (780, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:57:50', '2026-05-08 16:57:50', '2026-05-08 16:57:50');
INSERT INTO `sys_job_log` VALUES (781, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:57:55', '2026-05-08 16:57:55', '2026-05-08 16:57:55');
INSERT INTO `sys_job_log` VALUES (782, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:58:00', '2026-05-08 16:58:00', '2026-05-08 16:58:00');
INSERT INTO `sys_job_log` VALUES (783, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:05', '2026-05-08 16:58:05', '2026-05-08 16:58:05');
INSERT INTO `sys_job_log` VALUES (784, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:10', '2026-05-08 16:58:10', '2026-05-08 16:58:10');
INSERT INTO `sys_job_log` VALUES (785, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:15', '2026-05-08 16:58:15', '2026-05-08 16:58:15');
INSERT INTO `sys_job_log` VALUES (786, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:20', '2026-05-08 16:58:20', '2026-05-08 16:58:20');
INSERT INTO `sys_job_log` VALUES (787, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:25', '2026-05-08 16:58:25', '2026-05-08 16:58:25');
INSERT INTO `sys_job_log` VALUES (788, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:30', '2026-05-08 16:58:30', '2026-05-08 16:58:30');
INSERT INTO `sys_job_log` VALUES (789, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 16:58:35', '2026-05-08 16:58:35', '2026-05-08 16:58:35');
INSERT INTO `sys_job_log` VALUES (790, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:40', '2026-05-08 16:58:40', '2026-05-08 16:58:40');
INSERT INTO `sys_job_log` VALUES (791, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:45', '2026-05-08 16:58:45', '2026-05-08 16:58:45');
INSERT INTO `sys_job_log` VALUES (792, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:50', '2026-05-08 16:58:50', '2026-05-08 16:58:50');
INSERT INTO `sys_job_log` VALUES (793, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:58:55', '2026-05-08 16:58:55', '2026-05-08 16:58:55');
INSERT INTO `sys_job_log` VALUES (794, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:00', '2026-05-08 16:59:00', '2026-05-08 16:59:00');
INSERT INTO `sys_job_log` VALUES (795, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:05', '2026-05-08 16:59:05', '2026-05-08 16:59:05');
INSERT INTO `sys_job_log` VALUES (796, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:10', '2026-05-08 16:59:10', '2026-05-08 16:59:10');
INSERT INTO `sys_job_log` VALUES (797, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:15', '2026-05-08 16:59:15', '2026-05-08 16:59:15');
INSERT INTO `sys_job_log` VALUES (798, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:20', '2026-05-08 16:59:20', '2026-05-08 16:59:20');
INSERT INTO `sys_job_log` VALUES (799, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:25', '2026-05-08 16:59:25', '2026-05-08 16:59:25');
INSERT INTO `sys_job_log` VALUES (800, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:30', '2026-05-08 16:59:30', '2026-05-08 16:59:30');
INSERT INTO `sys_job_log` VALUES (801, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:35', '2026-05-08 16:59:35', '2026-05-08 16:59:35');
INSERT INTO `sys_job_log` VALUES (802, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:40', '2026-05-08 16:59:40', '2026-05-08 16:59:40');
INSERT INTO `sys_job_log` VALUES (803, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:45', '2026-05-08 16:59:45', '2026-05-08 16:59:45');
INSERT INTO `sys_job_log` VALUES (804, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 16:59:50', '2026-05-08 16:59:50', '2026-05-08 16:59:50');
INSERT INTO `sys_job_log` VALUES (805, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 16:59:55', '2026-05-08 16:59:55', '2026-05-08 16:59:55');
INSERT INTO `sys_job_log` VALUES (806, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:00:00', '2026-05-08 17:00:00', '2026-05-08 17:00:00');
INSERT INTO `sys_job_log` VALUES (807, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:00:05', '2026-05-08 17:00:05', '2026-05-08 17:00:05');
INSERT INTO `sys_job_log` VALUES (808, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:00:10', '2026-05-08 17:00:10', '2026-05-08 17:00:10');
INSERT INTO `sys_job_log` VALUES (809, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:00:15', '2026-05-08 17:00:15', '2026-05-08 17:00:15');
INSERT INTO `sys_job_log` VALUES (810, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:00:20', '2026-05-08 17:00:20', '2026-05-08 17:00:20');
INSERT INTO `sys_job_log` VALUES (811, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:00:25', '2026-05-08 17:00:25', '2026-05-08 17:00:25');
INSERT INTO `sys_job_log` VALUES (812, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:00:30', '2026-05-08 17:00:30', '2026-05-08 17:00:30');
INSERT INTO `sys_job_log` VALUES (813, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:00:35', '2026-05-08 17:00:35', '2026-05-08 17:00:35');
INSERT INTO `sys_job_log` VALUES (814, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:00:40', '2026-05-08 17:00:40', '2026-05-08 17:00:40');
INSERT INTO `sys_job_log` VALUES (815, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:00:45', '2026-05-08 17:00:45', '2026-05-08 17:00:45');
INSERT INTO `sys_job_log` VALUES (816, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:00:50', '2026-05-08 17:00:50', '2026-05-08 17:00:50');
INSERT INTO `sys_job_log` VALUES (817, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:00:55', '2026-05-08 17:00:55', '2026-05-08 17:00:55');
INSERT INTO `sys_job_log` VALUES (818, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:00', '2026-05-08 17:01:00', '2026-05-08 17:01:00');
INSERT INTO `sys_job_log` VALUES (819, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:05', '2026-05-08 17:01:05', '2026-05-08 17:01:05');
INSERT INTO `sys_job_log` VALUES (820, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:10', '2026-05-08 17:01:10', '2026-05-08 17:01:10');
INSERT INTO `sys_job_log` VALUES (821, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:15', '2026-05-08 17:01:15', '2026-05-08 17:01:15');
INSERT INTO `sys_job_log` VALUES (822, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:20', '2026-05-08 17:01:20', '2026-05-08 17:01:20');
INSERT INTO `sys_job_log` VALUES (823, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:25', '2026-05-08 17:01:25', '2026-05-08 17:01:25');
INSERT INTO `sys_job_log` VALUES (824, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:30', '2026-05-08 17:01:30', '2026-05-08 17:01:30');
INSERT INTO `sys_job_log` VALUES (825, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:35', '2026-05-08 17:01:35', '2026-05-08 17:01:35');
INSERT INTO `sys_job_log` VALUES (826, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:40', '2026-05-08 17:01:40', '2026-05-08 17:01:40');
INSERT INTO `sys_job_log` VALUES (827, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:45', '2026-05-08 17:01:45', '2026-05-08 17:01:45');
INSERT INTO `sys_job_log` VALUES (828, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:50', '2026-05-08 17:01:50', '2026-05-08 17:01:50');
INSERT INTO `sys_job_log` VALUES (829, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:01:55', '2026-05-08 17:01:55', '2026-05-08 17:01:55');
INSERT INTO `sys_job_log` VALUES (830, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:00', '2026-05-08 17:02:00', '2026-05-08 17:02:00');
INSERT INTO `sys_job_log` VALUES (831, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:05', '2026-05-08 17:02:05', '2026-05-08 17:02:05');
INSERT INTO `sys_job_log` VALUES (832, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:10', '2026-05-08 17:02:10', '2026-05-08 17:02:10');
INSERT INTO `sys_job_log` VALUES (833, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:15', '2026-05-08 17:02:15', '2026-05-08 17:02:15');
INSERT INTO `sys_job_log` VALUES (834, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:20', '2026-05-08 17:02:20', '2026-05-08 17:02:20');
INSERT INTO `sys_job_log` VALUES (835, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:25', '2026-05-08 17:02:25', '2026-05-08 17:02:25');
INSERT INTO `sys_job_log` VALUES (836, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:30', '2026-05-08 17:02:30', '2026-05-08 17:02:30');
INSERT INTO `sys_job_log` VALUES (837, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:35', '2026-05-08 17:02:35', '2026-05-08 17:02:35');
INSERT INTO `sys_job_log` VALUES (838, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:40', '2026-05-08 17:02:40', '2026-05-08 17:02:40');
INSERT INTO `sys_job_log` VALUES (839, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:45', '2026-05-08 17:02:45', '2026-05-08 17:02:45');
INSERT INTO `sys_job_log` VALUES (840, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:02:50', '2026-05-08 17:02:50', '2026-05-08 17:02:50');
INSERT INTO `sys_job_log` VALUES (841, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:02:55', '2026-05-08 17:02:55', '2026-05-08 17:02:55');
INSERT INTO `sys_job_log` VALUES (842, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:03:00', '2026-05-08 17:03:00', '2026-05-08 17:03:00');
INSERT INTO `sys_job_log` VALUES (843, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：4毫秒', '0', '', '2026-05-08 17:03:07', '2026-05-08 17:03:07', '2026-05-08 17:03:06');
INSERT INTO `sys_job_log` VALUES (844, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:03:15', '2026-05-08 17:03:15', '2026-05-08 17:03:15');
INSERT INTO `sys_job_log` VALUES (845, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:03:20', '2026-05-08 17:03:20', '2026-05-08 17:03:20');
INSERT INTO `sys_job_log` VALUES (846, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:03:25', '2026-05-08 17:03:25', '2026-05-08 17:03:25');
INSERT INTO `sys_job_log` VALUES (847, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:03:30', '2026-05-08 17:03:30', '2026-05-08 17:03:30');
INSERT INTO `sys_job_log` VALUES (848, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:03:35', '2026-05-08 17:03:35', '2026-05-08 17:03:35');
INSERT INTO `sys_job_log` VALUES (849, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:03:40', '2026-05-08 17:03:40', '2026-05-08 17:03:40');
INSERT INTO `sys_job_log` VALUES (850, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:03:45', '2026-05-08 17:03:45', '2026-05-08 17:03:45');
INSERT INTO `sys_job_log` VALUES (851, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:03:50', '2026-05-08 17:03:50', '2026-05-08 17:03:50');
INSERT INTO `sys_job_log` VALUES (852, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:03:55', '2026-05-08 17:03:55', '2026-05-08 17:03:55');
INSERT INTO `sys_job_log` VALUES (853, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:00', '2026-05-08 17:04:00', '2026-05-08 17:04:00');
INSERT INTO `sys_job_log` VALUES (854, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:05', '2026-05-08 17:04:05', '2026-05-08 17:04:05');
INSERT INTO `sys_job_log` VALUES (855, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:10', '2026-05-08 17:04:10', '2026-05-08 17:04:10');
INSERT INTO `sys_job_log` VALUES (856, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:15', '2026-05-08 17:04:15', '2026-05-08 17:04:15');
INSERT INTO `sys_job_log` VALUES (857, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:20', '2026-05-08 17:04:20', '2026-05-08 17:04:20');
INSERT INTO `sys_job_log` VALUES (858, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:25', '2026-05-08 17:04:25', '2026-05-08 17:04:25');
INSERT INTO `sys_job_log` VALUES (859, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:30', '2026-05-08 17:04:30', '2026-05-08 17:04:30');
INSERT INTO `sys_job_log` VALUES (860, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:35', '2026-05-08 17:04:35', '2026-05-08 17:04:35');
INSERT INTO `sys_job_log` VALUES (861, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:40', '2026-05-08 17:04:40', '2026-05-08 17:04:40');
INSERT INTO `sys_job_log` VALUES (862, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:45', '2026-05-08 17:04:45', '2026-05-08 17:04:45');
INSERT INTO `sys_job_log` VALUES (863, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:50', '2026-05-08 17:04:50', '2026-05-08 17:04:50');
INSERT INTO `sys_job_log` VALUES (864, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:04:55', '2026-05-08 17:04:55', '2026-05-08 17:04:55');
INSERT INTO `sys_job_log` VALUES (865, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:00', '2026-05-08 17:05:00', '2026-05-08 17:05:00');
INSERT INTO `sys_job_log` VALUES (866, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:05', '2026-05-08 17:05:05', '2026-05-08 17:05:05');
INSERT INTO `sys_job_log` VALUES (867, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:10', '2026-05-08 17:05:10', '2026-05-08 17:05:10');
INSERT INTO `sys_job_log` VALUES (868, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:15', '2026-05-08 17:05:15', '2026-05-08 17:05:15');
INSERT INTO `sys_job_log` VALUES (869, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:20', '2026-05-08 17:05:20', '2026-05-08 17:05:20');
INSERT INTO `sys_job_log` VALUES (870, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:25', '2026-05-08 17:05:25', '2026-05-08 17:05:25');
INSERT INTO `sys_job_log` VALUES (871, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:30', '2026-05-08 17:05:30', '2026-05-08 17:05:30');
INSERT INTO `sys_job_log` VALUES (872, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:35', '2026-05-08 17:05:35', '2026-05-08 17:05:35');
INSERT INTO `sys_job_log` VALUES (873, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:40', '2026-05-08 17:05:40', '2026-05-08 17:05:40');
INSERT INTO `sys_job_log` VALUES (874, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:45', '2026-05-08 17:05:45', '2026-05-08 17:05:45');
INSERT INTO `sys_job_log` VALUES (875, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:05:50', '2026-05-08 17:05:50', '2026-05-08 17:05:50');
INSERT INTO `sys_job_log` VALUES (876, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:05:55', '2026-05-08 17:05:55', '2026-05-08 17:05:55');
INSERT INTO `sys_job_log` VALUES (877, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:00', '2026-05-08 17:06:00', '2026-05-08 17:06:00');
INSERT INTO `sys_job_log` VALUES (878, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:05', '2026-05-08 17:06:05', '2026-05-08 17:06:05');
INSERT INTO `sys_job_log` VALUES (879, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:06:10', '2026-05-08 17:06:10', '2026-05-08 17:06:10');
INSERT INTO `sys_job_log` VALUES (880, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:15', '2026-05-08 17:06:15', '2026-05-08 17:06:15');
INSERT INTO `sys_job_log` VALUES (881, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:20', '2026-05-08 17:06:20', '2026-05-08 17:06:20');
INSERT INTO `sys_job_log` VALUES (882, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:25', '2026-05-08 17:06:25', '2026-05-08 17:06:25');
INSERT INTO `sys_job_log` VALUES (883, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:30', '2026-05-08 17:06:30', '2026-05-08 17:06:30');
INSERT INTO `sys_job_log` VALUES (884, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:35', '2026-05-08 17:06:35', '2026-05-08 17:06:35');
INSERT INTO `sys_job_log` VALUES (885, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:40', '2026-05-08 17:06:40', '2026-05-08 17:06:40');
INSERT INTO `sys_job_log` VALUES (886, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:45', '2026-05-08 17:06:45', '2026-05-08 17:06:45');
INSERT INTO `sys_job_log` VALUES (887, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:50', '2026-05-08 17:06:50', '2026-05-08 17:06:50');
INSERT INTO `sys_job_log` VALUES (888, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:06:55', '2026-05-08 17:06:55', '2026-05-08 17:06:55');
INSERT INTO `sys_job_log` VALUES (889, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:07:00', '2026-05-08 17:07:00', '2026-05-08 17:07:00');
INSERT INTO `sys_job_log` VALUES (890, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:07:05', '2026-05-08 17:07:05', '2026-05-08 17:07:05');
INSERT INTO `sys_job_log` VALUES (891, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:07:10', '2026-05-08 17:07:10', '2026-05-08 17:07:10');
INSERT INTO `sys_job_log` VALUES (892, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:07:15', '2026-05-08 17:07:15', '2026-05-08 17:07:15');
INSERT INTO `sys_job_log` VALUES (893, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:07:20', '2026-05-08 17:07:20', '2026-05-08 17:07:20');
INSERT INTO `sys_job_log` VALUES (894, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:07:25', '2026-05-08 17:07:25', '2026-05-08 17:07:25');
INSERT INTO `sys_job_log` VALUES (895, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:07:30', '2026-05-08 17:07:30', '2026-05-08 17:07:30');
INSERT INTO `sys_job_log` VALUES (896, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:07:35', '2026-05-08 17:07:35', '2026-05-08 17:07:35');
INSERT INTO `sys_job_log` VALUES (897, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:07:40', '2026-05-08 17:07:40', '2026-05-08 17:07:40');
INSERT INTO `sys_job_log` VALUES (898, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:07:45', '2026-05-08 17:07:45', '2026-05-08 17:07:45');
INSERT INTO `sys_job_log` VALUES (899, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:07:50', '2026-05-08 17:07:50', '2026-05-08 17:07:50');
INSERT INTO `sys_job_log` VALUES (900, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:07:55', '2026-05-08 17:07:55', '2026-05-08 17:07:55');
INSERT INTO `sys_job_log` VALUES (901, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:00', '2026-05-08 17:08:00', '2026-05-08 17:08:00');
INSERT INTO `sys_job_log` VALUES (902, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:05', '2026-05-08 17:08:05', '2026-05-08 17:08:05');
INSERT INTO `sys_job_log` VALUES (903, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:08:10', '2026-05-08 17:08:10', '2026-05-08 17:08:10');
INSERT INTO `sys_job_log` VALUES (904, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:15', '2026-05-08 17:08:15', '2026-05-08 17:08:15');
INSERT INTO `sys_job_log` VALUES (905, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:20', '2026-05-08 17:08:20', '2026-05-08 17:08:20');
INSERT INTO `sys_job_log` VALUES (906, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:25', '2026-05-08 17:08:25', '2026-05-08 17:08:25');
INSERT INTO `sys_job_log` VALUES (907, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:30', '2026-05-08 17:08:30', '2026-05-08 17:08:30');
INSERT INTO `sys_job_log` VALUES (908, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:35', '2026-05-08 17:08:35', '2026-05-08 17:08:35');
INSERT INTO `sys_job_log` VALUES (909, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:40', '2026-05-08 17:08:40', '2026-05-08 17:08:40');
INSERT INTO `sys_job_log` VALUES (910, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:45', '2026-05-08 17:08:45', '2026-05-08 17:08:45');
INSERT INTO `sys_job_log` VALUES (911, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:50', '2026-05-08 17:08:50', '2026-05-08 17:08:50');
INSERT INTO `sys_job_log` VALUES (912, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:08:55', '2026-05-08 17:08:55', '2026-05-08 17:08:55');
INSERT INTO `sys_job_log` VALUES (913, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:09:00', '2026-05-08 17:09:00', '2026-05-08 17:09:00');
INSERT INTO `sys_job_log` VALUES (914, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:09:05', '2026-05-08 17:09:05', '2026-05-08 17:09:05');
INSERT INTO `sys_job_log` VALUES (915, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:09:10', '2026-05-08 17:09:10', '2026-05-08 17:09:10');
INSERT INTO `sys_job_log` VALUES (916, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:09:15', '2026-05-08 17:09:15', '2026-05-08 17:09:15');
INSERT INTO `sys_job_log` VALUES (917, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:09:20', '2026-05-08 17:09:20', '2026-05-08 17:09:20');
INSERT INTO `sys_job_log` VALUES (918, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:09:25', '2026-05-08 17:09:25', '2026-05-08 17:09:25');
INSERT INTO `sys_job_log` VALUES (919, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:09:30', '2026-05-08 17:09:30', '2026-05-08 17:09:30');
INSERT INTO `sys_job_log` VALUES (920, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:09:35', '2026-05-08 17:09:35', '2026-05-08 17:09:35');
INSERT INTO `sys_job_log` VALUES (921, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:09:40', '2026-05-08 17:09:40', '2026-05-08 17:09:40');
INSERT INTO `sys_job_log` VALUES (922, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:09:45', '2026-05-08 17:09:45', '2026-05-08 17:09:45');
INSERT INTO `sys_job_log` VALUES (923, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:09:50', '2026-05-08 17:09:50', '2026-05-08 17:09:50');
INSERT INTO `sys_job_log` VALUES (924, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:09:55', '2026-05-08 17:09:55', '2026-05-08 17:09:55');
INSERT INTO `sys_job_log` VALUES (925, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:10:00', '2026-05-08 17:10:00', '2026-05-08 17:10:00');
INSERT INTO `sys_job_log` VALUES (926, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:10:05', '2026-05-08 17:10:05', '2026-05-08 17:10:05');
INSERT INTO `sys_job_log` VALUES (927, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:10:10', '2026-05-08 17:10:10', '2026-05-08 17:10:10');
INSERT INTO `sys_job_log` VALUES (928, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:10:15', '2026-05-08 17:10:15', '2026-05-08 17:10:15');
INSERT INTO `sys_job_log` VALUES (929, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:10:20', '2026-05-08 17:10:20', '2026-05-08 17:10:20');
INSERT INTO `sys_job_log` VALUES (930, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:10:25', '2026-05-08 17:10:25', '2026-05-08 17:10:25');
INSERT INTO `sys_job_log` VALUES (931, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:10:30', '2026-05-08 17:10:30', '2026-05-08 17:10:30');
INSERT INTO `sys_job_log` VALUES (932, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:10:35', '2026-05-08 17:10:35', '2026-05-08 17:10:35');
INSERT INTO `sys_job_log` VALUES (933, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:10:40', '2026-05-08 17:10:40', '2026-05-08 17:10:40');
INSERT INTO `sys_job_log` VALUES (934, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:10:45', '2026-05-08 17:10:45', '2026-05-08 17:10:45');
INSERT INTO `sys_job_log` VALUES (935, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:10:50', '2026-05-08 17:10:50', '2026-05-08 17:10:50');
INSERT INTO `sys_job_log` VALUES (936, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:10:55', '2026-05-08 17:10:55', '2026-05-08 17:10:55');
INSERT INTO `sys_job_log` VALUES (937, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:00', '2026-05-08 17:11:00', '2026-05-08 17:11:00');
INSERT INTO `sys_job_log` VALUES (938, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:05', '2026-05-08 17:11:05', '2026-05-08 17:11:05');
INSERT INTO `sys_job_log` VALUES (939, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:10', '2026-05-08 17:11:10', '2026-05-08 17:11:10');
INSERT INTO `sys_job_log` VALUES (940, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:15', '2026-05-08 17:11:15', '2026-05-08 17:11:15');
INSERT INTO `sys_job_log` VALUES (941, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:20', '2026-05-08 17:11:20', '2026-05-08 17:11:20');
INSERT INTO `sys_job_log` VALUES (942, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:25', '2026-05-08 17:11:25', '2026-05-08 17:11:25');
INSERT INTO `sys_job_log` VALUES (943, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:30', '2026-05-08 17:11:30', '2026-05-08 17:11:30');
INSERT INTO `sys_job_log` VALUES (944, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:35', '2026-05-08 17:11:35', '2026-05-08 17:11:35');
INSERT INTO `sys_job_log` VALUES (945, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:40', '2026-05-08 17:11:40', '2026-05-08 17:11:40');
INSERT INTO `sys_job_log` VALUES (946, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:45', '2026-05-08 17:11:45', '2026-05-08 17:11:45');
INSERT INTO `sys_job_log` VALUES (947, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:11:50', '2026-05-08 17:11:50', '2026-05-08 17:11:50');
INSERT INTO `sys_job_log` VALUES (948, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:11:55', '2026-05-08 17:11:55', '2026-05-08 17:11:55');
INSERT INTO `sys_job_log` VALUES (949, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:00', '2026-05-08 17:12:00', '2026-05-08 17:12:00');
INSERT INTO `sys_job_log` VALUES (950, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:05', '2026-05-08 17:12:05', '2026-05-08 17:12:05');
INSERT INTO `sys_job_log` VALUES (951, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:10', '2026-05-08 17:12:10', '2026-05-08 17:12:10');
INSERT INTO `sys_job_log` VALUES (952, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:15', '2026-05-08 17:12:15', '2026-05-08 17:12:15');
INSERT INTO `sys_job_log` VALUES (953, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:20', '2026-05-08 17:12:20', '2026-05-08 17:12:20');
INSERT INTO `sys_job_log` VALUES (954, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:25', '2026-05-08 17:12:25', '2026-05-08 17:12:25');
INSERT INTO `sys_job_log` VALUES (955, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:30', '2026-05-08 17:12:30', '2026-05-08 17:12:30');
INSERT INTO `sys_job_log` VALUES (956, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:35', '2026-05-08 17:12:35', '2026-05-08 17:12:35');
INSERT INTO `sys_job_log` VALUES (957, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:40', '2026-05-08 17:12:40', '2026-05-08 17:12:40');
INSERT INTO `sys_job_log` VALUES (958, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:45', '2026-05-08 17:12:45', '2026-05-08 17:12:45');
INSERT INTO `sys_job_log` VALUES (959, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:50', '2026-05-08 17:12:50', '2026-05-08 17:12:50');
INSERT INTO `sys_job_log` VALUES (960, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:12:55', '2026-05-08 17:12:55', '2026-05-08 17:12:55');
INSERT INTO `sys_job_log` VALUES (961, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:13:00', '2026-05-08 17:13:00', '2026-05-08 17:13:00');
INSERT INTO `sys_job_log` VALUES (962, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:13:05', '2026-05-08 17:13:05', '2026-05-08 17:13:05');
INSERT INTO `sys_job_log` VALUES (963, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:13:10', '2026-05-08 17:13:10', '2026-05-08 17:13:10');
INSERT INTO `sys_job_log` VALUES (964, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:13:15', '2026-05-08 17:13:15', '2026-05-08 17:13:15');
INSERT INTO `sys_job_log` VALUES (965, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:13:20', '2026-05-08 17:13:20', '2026-05-08 17:13:20');
INSERT INTO `sys_job_log` VALUES (966, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:13:25', '2026-05-08 17:13:25', '2026-05-08 17:13:25');
INSERT INTO `sys_job_log` VALUES (967, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:13:30', '2026-05-08 17:13:30', '2026-05-08 17:13:30');
INSERT INTO `sys_job_log` VALUES (968, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:13:35', '2026-05-08 17:13:35', '2026-05-08 17:13:35');
INSERT INTO `sys_job_log` VALUES (969, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:13:40', '2026-05-08 17:13:40', '2026-05-08 17:13:40');
INSERT INTO `sys_job_log` VALUES (970, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:13:45', '2026-05-08 17:13:45', '2026-05-08 17:13:45');
INSERT INTO `sys_job_log` VALUES (971, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:13:50', '2026-05-08 17:13:50', '2026-05-08 17:13:50');
INSERT INTO `sys_job_log` VALUES (972, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:13:55', '2026-05-08 17:13:55', '2026-05-08 17:13:55');
INSERT INTO `sys_job_log` VALUES (973, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:14:00', '2026-05-08 17:14:00', '2026-05-08 17:14:00');
INSERT INTO `sys_job_log` VALUES (974, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:14:05', '2026-05-08 17:14:05', '2026-05-08 17:14:05');
INSERT INTO `sys_job_log` VALUES (975, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:14:10', '2026-05-08 17:14:10', '2026-05-08 17:14:10');
INSERT INTO `sys_job_log` VALUES (976, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:14:15', '2026-05-08 17:14:15', '2026-05-08 17:14:15');
INSERT INTO `sys_job_log` VALUES (977, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:14:20', '2026-05-08 17:14:20', '2026-05-08 17:14:20');
INSERT INTO `sys_job_log` VALUES (978, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:14:25', '2026-05-08 17:14:25', '2026-05-08 17:14:25');
INSERT INTO `sys_job_log` VALUES (979, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:14:30', '2026-05-08 17:14:30', '2026-05-08 17:14:30');
INSERT INTO `sys_job_log` VALUES (980, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:14:35', '2026-05-08 17:14:35', '2026-05-08 17:14:35');
INSERT INTO `sys_job_log` VALUES (981, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:14:40', '2026-05-08 17:14:40', '2026-05-08 17:14:40');
INSERT INTO `sys_job_log` VALUES (982, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:14:45', '2026-05-08 17:14:45', '2026-05-08 17:14:45');
INSERT INTO `sys_job_log` VALUES (983, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:14:50', '2026-05-08 17:14:50', '2026-05-08 17:14:50');
INSERT INTO `sys_job_log` VALUES (984, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:14:55', '2026-05-08 17:14:55', '2026-05-08 17:14:55');
INSERT INTO `sys_job_log` VALUES (985, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:15:00', '2026-05-08 17:15:00', '2026-05-08 17:15:00');
INSERT INTO `sys_job_log` VALUES (986, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:15:05', '2026-05-08 17:15:05', '2026-05-08 17:15:05');
INSERT INTO `sys_job_log` VALUES (987, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:15:10', '2026-05-08 17:15:10', '2026-05-08 17:15:10');
INSERT INTO `sys_job_log` VALUES (988, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:15:15', '2026-05-08 17:15:15', '2026-05-08 17:15:15');
INSERT INTO `sys_job_log` VALUES (989, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:15:20', '2026-05-08 17:15:20', '2026-05-08 17:15:20');
INSERT INTO `sys_job_log` VALUES (990, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:15:25', '2026-05-08 17:15:25', '2026-05-08 17:15:25');
INSERT INTO `sys_job_log` VALUES (991, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:15:30', '2026-05-08 17:15:30', '2026-05-08 17:15:30');
INSERT INTO `sys_job_log` VALUES (992, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:15:35', '2026-05-08 17:15:35', '2026-05-08 17:15:35');
INSERT INTO `sys_job_log` VALUES (993, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:15:40', '2026-05-08 17:15:40', '2026-05-08 17:15:40');
INSERT INTO `sys_job_log` VALUES (994, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:15:45', '2026-05-08 17:15:45', '2026-05-08 17:15:45');
INSERT INTO `sys_job_log` VALUES (995, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:15:50', '2026-05-08 17:15:50', '2026-05-08 17:15:50');
INSERT INTO `sys_job_log` VALUES (996, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:15:55', '2026-05-08 17:15:55', '2026-05-08 17:15:55');
INSERT INTO `sys_job_log` VALUES (997, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:00', '2026-05-08 17:16:00', '2026-05-08 17:16:00');
INSERT INTO `sys_job_log` VALUES (998, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:05', '2026-05-08 17:16:05', '2026-05-08 17:16:05');
INSERT INTO `sys_job_log` VALUES (999, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:10', '2026-05-08 17:16:10', '2026-05-08 17:16:10');
INSERT INTO `sys_job_log` VALUES (1000, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:15', '2026-05-08 17:16:15', '2026-05-08 17:16:15');
INSERT INTO `sys_job_log` VALUES (1001, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:20', '2026-05-08 17:16:20', '2026-05-08 17:16:20');
INSERT INTO `sys_job_log` VALUES (1002, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:25', '2026-05-08 17:16:25', '2026-05-08 17:16:25');
INSERT INTO `sys_job_log` VALUES (1003, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:30', '2026-05-08 17:16:30', '2026-05-08 17:16:30');
INSERT INTO `sys_job_log` VALUES (1004, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:35', '2026-05-08 17:16:35', '2026-05-08 17:16:35');
INSERT INTO `sys_job_log` VALUES (1005, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-08 17:16:40', '2026-05-08 17:16:40', '2026-05-08 17:16:40');
INSERT INTO `sys_job_log` VALUES (1006, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:45', '2026-05-08 17:16:45', '2026-05-08 17:16:45');
INSERT INTO `sys_job_log` VALUES (1007, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:50', '2026-05-08 17:16:50', '2026-05-08 17:16:50');
INSERT INTO `sys_job_log` VALUES (1008, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:16:55', '2026-05-08 17:16:55', '2026-05-08 17:16:55');
INSERT INTO `sys_job_log` VALUES (1009, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:00', '2026-05-08 17:17:00', '2026-05-08 17:17:00');
INSERT INTO `sys_job_log` VALUES (1010, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:05', '2026-05-08 17:17:05', '2026-05-08 17:17:05');
INSERT INTO `sys_job_log` VALUES (1011, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:10', '2026-05-08 17:17:10', '2026-05-08 17:17:10');
INSERT INTO `sys_job_log` VALUES (1012, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:15', '2026-05-08 17:17:15', '2026-05-08 17:17:15');
INSERT INTO `sys_job_log` VALUES (1013, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:20', '2026-05-08 17:17:20', '2026-05-08 17:17:20');
INSERT INTO `sys_job_log` VALUES (1014, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:25', '2026-05-08 17:17:25', '2026-05-08 17:17:25');
INSERT INTO `sys_job_log` VALUES (1015, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:30', '2026-05-08 17:17:30', '2026-05-08 17:17:30');
INSERT INTO `sys_job_log` VALUES (1016, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:35', '2026-05-08 17:17:35', '2026-05-08 17:17:35');
INSERT INTO `sys_job_log` VALUES (1017, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:40', '2026-05-08 17:17:40', '2026-05-08 17:17:40');
INSERT INTO `sys_job_log` VALUES (1018, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:45', '2026-05-08 17:17:45', '2026-05-08 17:17:45');
INSERT INTO `sys_job_log` VALUES (1019, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:50', '2026-05-08 17:17:50', '2026-05-08 17:17:50');
INSERT INTO `sys_job_log` VALUES (1020, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:17:55', '2026-05-08 17:17:55', '2026-05-08 17:17:55');
INSERT INTO `sys_job_log` VALUES (1021, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:00', '2026-05-08 17:18:00', '2026-05-08 17:18:00');
INSERT INTO `sys_job_log` VALUES (1022, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:05', '2026-05-08 17:18:05', '2026-05-08 17:18:05');
INSERT INTO `sys_job_log` VALUES (1023, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:10', '2026-05-08 17:18:10', '2026-05-08 17:18:10');
INSERT INTO `sys_job_log` VALUES (1024, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:15', '2026-05-08 17:18:15', '2026-05-08 17:18:15');
INSERT INTO `sys_job_log` VALUES (1025, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:20', '2026-05-08 17:18:20', '2026-05-08 17:18:20');
INSERT INTO `sys_job_log` VALUES (1026, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:25', '2026-05-08 17:18:25', '2026-05-08 17:18:25');
INSERT INTO `sys_job_log` VALUES (1027, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:30', '2026-05-08 17:18:30', '2026-05-08 17:18:30');
INSERT INTO `sys_job_log` VALUES (1028, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:35', '2026-05-08 17:18:35', '2026-05-08 17:18:35');
INSERT INTO `sys_job_log` VALUES (1029, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:40', '2026-05-08 17:18:40', '2026-05-08 17:18:40');
INSERT INTO `sys_job_log` VALUES (1030, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:45', '2026-05-08 17:18:45', '2026-05-08 17:18:45');
INSERT INTO `sys_job_log` VALUES (1031, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:18:50', '2026-05-08 17:18:50', '2026-05-08 17:18:50');
INSERT INTO `sys_job_log` VALUES (1032, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:18:55', '2026-05-08 17:18:55', '2026-05-08 17:18:55');
INSERT INTO `sys_job_log` VALUES (1033, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:19:00', '2026-05-08 17:19:00', '2026-05-08 17:19:00');
INSERT INTO `sys_job_log` VALUES (1034, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:19:05', '2026-05-08 17:19:05', '2026-05-08 17:19:05');
INSERT INTO `sys_job_log` VALUES (1035, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:19:10', '2026-05-08 17:19:10', '2026-05-08 17:19:10');
INSERT INTO `sys_job_log` VALUES (1036, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:19:15', '2026-05-08 17:19:15', '2026-05-08 17:19:15');
INSERT INTO `sys_job_log` VALUES (1037, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:19:20', '2026-05-08 17:19:20', '2026-05-08 17:19:20');
INSERT INTO `sys_job_log` VALUES (1038, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:19:25', '2026-05-08 17:19:25', '2026-05-08 17:19:25');
INSERT INTO `sys_job_log` VALUES (1039, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:19:30', '2026-05-08 17:19:30', '2026-05-08 17:19:30');
INSERT INTO `sys_job_log` VALUES (1040, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:19:35', '2026-05-08 17:19:35', '2026-05-08 17:19:35');
INSERT INTO `sys_job_log` VALUES (1041, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:19:40', '2026-05-08 17:19:40', '2026-05-08 17:19:40');
INSERT INTO `sys_job_log` VALUES (1042, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:19:45', '2026-05-08 17:19:45', '2026-05-08 17:19:45');
INSERT INTO `sys_job_log` VALUES (1043, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:19:50', '2026-05-08 17:19:50', '2026-05-08 17:19:50');
INSERT INTO `sys_job_log` VALUES (1044, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:19:55', '2026-05-08 17:19:55', '2026-05-08 17:19:55');
INSERT INTO `sys_job_log` VALUES (1045, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:00', '2026-05-08 17:20:00', '2026-05-08 17:20:00');
INSERT INTO `sys_job_log` VALUES (1046, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:05', '2026-05-08 17:20:05', '2026-05-08 17:20:05');
INSERT INTO `sys_job_log` VALUES (1047, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:10', '2026-05-08 17:20:10', '2026-05-08 17:20:10');
INSERT INTO `sys_job_log` VALUES (1048, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:15', '2026-05-08 17:20:15', '2026-05-08 17:20:15');
INSERT INTO `sys_job_log` VALUES (1049, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:20', '2026-05-08 17:20:20', '2026-05-08 17:20:20');
INSERT INTO `sys_job_log` VALUES (1050, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:25', '2026-05-08 17:20:25', '2026-05-08 17:20:25');
INSERT INTO `sys_job_log` VALUES (1051, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:30', '2026-05-08 17:20:30', '2026-05-08 17:20:30');
INSERT INTO `sys_job_log` VALUES (1052, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:35', '2026-05-08 17:20:35', '2026-05-08 17:20:35');
INSERT INTO `sys_job_log` VALUES (1053, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:40', '2026-05-08 17:20:40', '2026-05-08 17:20:40');
INSERT INTO `sys_job_log` VALUES (1054, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:45', '2026-05-08 17:20:45', '2026-05-08 17:20:45');
INSERT INTO `sys_job_log` VALUES (1055, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:50', '2026-05-08 17:20:50', '2026-05-08 17:20:50');
INSERT INTO `sys_job_log` VALUES (1056, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:20:55', '2026-05-08 17:20:55', '2026-05-08 17:20:55');
INSERT INTO `sys_job_log` VALUES (1057, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:21:00', '2026-05-08 17:21:00', '2026-05-08 17:21:00');
INSERT INTO `sys_job_log` VALUES (1058, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:05', '2026-05-08 17:21:05', '2026-05-08 17:21:05');
INSERT INTO `sys_job_log` VALUES (1059, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:10', '2026-05-08 17:21:10', '2026-05-08 17:21:10');
INSERT INTO `sys_job_log` VALUES (1060, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:15', '2026-05-08 17:21:15', '2026-05-08 17:21:15');
INSERT INTO `sys_job_log` VALUES (1061, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:20', '2026-05-08 17:21:20', '2026-05-08 17:21:20');
INSERT INTO `sys_job_log` VALUES (1062, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:25', '2026-05-08 17:21:25', '2026-05-08 17:21:25');
INSERT INTO `sys_job_log` VALUES (1063, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:30', '2026-05-08 17:21:30', '2026-05-08 17:21:30');
INSERT INTO `sys_job_log` VALUES (1064, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:21:35', '2026-05-08 17:21:35', '2026-05-08 17:21:35');
INSERT INTO `sys_job_log` VALUES (1065, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:40', '2026-05-08 17:21:40', '2026-05-08 17:21:40');
INSERT INTO `sys_job_log` VALUES (1066, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:45', '2026-05-08 17:21:45', '2026-05-08 17:21:45');
INSERT INTO `sys_job_log` VALUES (1067, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:50', '2026-05-08 17:21:50', '2026-05-08 17:21:50');
INSERT INTO `sys_job_log` VALUES (1068, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:21:55', '2026-05-08 17:21:55', '2026-05-08 17:21:55');
INSERT INTO `sys_job_log` VALUES (1069, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:00', '2026-05-08 17:22:00', '2026-05-08 17:22:00');
INSERT INTO `sys_job_log` VALUES (1070, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:05', '2026-05-08 17:22:05', '2026-05-08 17:22:05');
INSERT INTO `sys_job_log` VALUES (1071, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:10', '2026-05-08 17:22:10', '2026-05-08 17:22:10');
INSERT INTO `sys_job_log` VALUES (1072, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:15', '2026-05-08 17:22:15', '2026-05-08 17:22:15');
INSERT INTO `sys_job_log` VALUES (1073, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:20', '2026-05-08 17:22:20', '2026-05-08 17:22:20');
INSERT INTO `sys_job_log` VALUES (1074, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:25', '2026-05-08 17:22:25', '2026-05-08 17:22:25');
INSERT INTO `sys_job_log` VALUES (1075, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:30', '2026-05-08 17:22:30', '2026-05-08 17:22:30');
INSERT INTO `sys_job_log` VALUES (1076, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:35', '2026-05-08 17:22:35', '2026-05-08 17:22:35');
INSERT INTO `sys_job_log` VALUES (1077, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:40', '2026-05-08 17:22:40', '2026-05-08 17:22:40');
INSERT INTO `sys_job_log` VALUES (1078, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:45', '2026-05-08 17:22:45', '2026-05-08 17:22:45');
INSERT INTO `sys_job_log` VALUES (1079, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:50', '2026-05-08 17:22:50', '2026-05-08 17:22:50');
INSERT INTO `sys_job_log` VALUES (1080, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:22:55', '2026-05-08 17:22:55', '2026-05-08 17:22:55');
INSERT INTO `sys_job_log` VALUES (1081, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:00', '2026-05-08 17:23:00', '2026-05-08 17:23:00');
INSERT INTO `sys_job_log` VALUES (1082, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:05', '2026-05-08 17:23:05', '2026-05-08 17:23:05');
INSERT INTO `sys_job_log` VALUES (1083, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:10', '2026-05-08 17:23:10', '2026-05-08 17:23:10');
INSERT INTO `sys_job_log` VALUES (1084, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:15', '2026-05-08 17:23:15', '2026-05-08 17:23:15');
INSERT INTO `sys_job_log` VALUES (1085, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:20', '2026-05-08 17:23:20', '2026-05-08 17:23:20');
INSERT INTO `sys_job_log` VALUES (1086, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:25', '2026-05-08 17:23:25', '2026-05-08 17:23:25');
INSERT INTO `sys_job_log` VALUES (1087, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:30', '2026-05-08 17:23:30', '2026-05-08 17:23:30');
INSERT INTO `sys_job_log` VALUES (1088, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:35', '2026-05-08 17:23:35', '2026-05-08 17:23:35');
INSERT INTO `sys_job_log` VALUES (1089, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:40', '2026-05-08 17:23:40', '2026-05-08 17:23:40');
INSERT INTO `sys_job_log` VALUES (1090, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:45', '2026-05-08 17:23:45', '2026-05-08 17:23:45');
INSERT INTO `sys_job_log` VALUES (1091, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:50', '2026-05-08 17:23:50', '2026-05-08 17:23:50');
INSERT INTO `sys_job_log` VALUES (1092, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:23:55', '2026-05-08 17:23:55', '2026-05-08 17:23:55');
INSERT INTO `sys_job_log` VALUES (1093, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:00', '2026-05-08 17:24:00', '2026-05-08 17:24:00');
INSERT INTO `sys_job_log` VALUES (1094, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:05', '2026-05-08 17:24:05', '2026-05-08 17:24:05');
INSERT INTO `sys_job_log` VALUES (1095, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:10', '2026-05-08 17:24:10', '2026-05-08 17:24:10');
INSERT INTO `sys_job_log` VALUES (1096, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:15', '2026-05-08 17:24:15', '2026-05-08 17:24:15');
INSERT INTO `sys_job_log` VALUES (1097, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:20', '2026-05-08 17:24:20', '2026-05-08 17:24:20');
INSERT INTO `sys_job_log` VALUES (1098, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:25', '2026-05-08 17:24:25', '2026-05-08 17:24:25');
INSERT INTO `sys_job_log` VALUES (1099, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:30', '2026-05-08 17:24:30', '2026-05-08 17:24:30');
INSERT INTO `sys_job_log` VALUES (1100, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:35', '2026-05-08 17:24:35', '2026-05-08 17:24:35');
INSERT INTO `sys_job_log` VALUES (1101, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:40', '2026-05-08 17:24:40', '2026-05-08 17:24:40');
INSERT INTO `sys_job_log` VALUES (1102, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:45', '2026-05-08 17:24:45', '2026-05-08 17:24:45');
INSERT INTO `sys_job_log` VALUES (1103, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:50', '2026-05-08 17:24:50', '2026-05-08 17:24:50');
INSERT INTO `sys_job_log` VALUES (1104, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:24:55', '2026-05-08 17:24:55', '2026-05-08 17:24:55');
INSERT INTO `sys_job_log` VALUES (1105, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:00', '2026-05-08 17:25:00', '2026-05-08 17:25:00');
INSERT INTO `sys_job_log` VALUES (1106, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:05', '2026-05-08 17:25:05', '2026-05-08 17:25:05');
INSERT INTO `sys_job_log` VALUES (1107, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:10', '2026-05-08 17:25:10', '2026-05-08 17:25:10');
INSERT INTO `sys_job_log` VALUES (1108, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:15', '2026-05-08 17:25:15', '2026-05-08 17:25:15');
INSERT INTO `sys_job_log` VALUES (1109, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:20', '2026-05-08 17:25:20', '2026-05-08 17:25:20');
INSERT INTO `sys_job_log` VALUES (1110, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:25', '2026-05-08 17:25:25', '2026-05-08 17:25:25');
INSERT INTO `sys_job_log` VALUES (1111, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:30', '2026-05-08 17:25:30', '2026-05-08 17:25:30');
INSERT INTO `sys_job_log` VALUES (1112, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:35', '2026-05-08 17:25:35', '2026-05-08 17:25:35');
INSERT INTO `sys_job_log` VALUES (1113, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:40', '2026-05-08 17:25:40', '2026-05-08 17:25:40');
INSERT INTO `sys_job_log` VALUES (1114, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:45', '2026-05-08 17:25:45', '2026-05-08 17:25:45');
INSERT INTO `sys_job_log` VALUES (1115, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:50', '2026-05-08 17:25:50', '2026-05-08 17:25:50');
INSERT INTO `sys_job_log` VALUES (1116, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:25:55', '2026-05-08 17:25:55', '2026-05-08 17:25:55');
INSERT INTO `sys_job_log` VALUES (1117, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:00', '2026-05-08 17:26:00', '2026-05-08 17:26:00');
INSERT INTO `sys_job_log` VALUES (1118, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:05', '2026-05-08 17:26:05', '2026-05-08 17:26:05');
INSERT INTO `sys_job_log` VALUES (1119, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:10', '2026-05-08 17:26:10', '2026-05-08 17:26:10');
INSERT INTO `sys_job_log` VALUES (1120, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:15', '2026-05-08 17:26:15', '2026-05-08 17:26:15');
INSERT INTO `sys_job_log` VALUES (1121, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:20', '2026-05-08 17:26:20', '2026-05-08 17:26:20');
INSERT INTO `sys_job_log` VALUES (1122, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:25', '2026-05-08 17:26:25', '2026-05-08 17:26:25');
INSERT INTO `sys_job_log` VALUES (1123, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:30', '2026-05-08 17:26:30', '2026-05-08 17:26:30');
INSERT INTO `sys_job_log` VALUES (1124, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:35', '2026-05-08 17:26:35', '2026-05-08 17:26:35');
INSERT INTO `sys_job_log` VALUES (1125, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:40', '2026-05-08 17:26:40', '2026-05-08 17:26:40');
INSERT INTO `sys_job_log` VALUES (1126, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:45', '2026-05-08 17:26:45', '2026-05-08 17:26:45');
INSERT INTO `sys_job_log` VALUES (1127, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:50', '2026-05-08 17:26:50', '2026-05-08 17:26:50');
INSERT INTO `sys_job_log` VALUES (1128, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:26:55', '2026-05-08 17:26:55', '2026-05-08 17:26:55');
INSERT INTO `sys_job_log` VALUES (1129, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:00', '2026-05-08 17:27:00', '2026-05-08 17:27:00');
INSERT INTO `sys_job_log` VALUES (1130, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:05', '2026-05-08 17:27:05', '2026-05-08 17:27:05');
INSERT INTO `sys_job_log` VALUES (1131, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:10', '2026-05-08 17:27:10', '2026-05-08 17:27:10');
INSERT INTO `sys_job_log` VALUES (1132, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:15', '2026-05-08 17:27:15', '2026-05-08 17:27:15');
INSERT INTO `sys_job_log` VALUES (1133, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:20', '2026-05-08 17:27:20', '2026-05-08 17:27:20');
INSERT INTO `sys_job_log` VALUES (1134, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:25', '2026-05-08 17:27:25', '2026-05-08 17:27:25');
INSERT INTO `sys_job_log` VALUES (1135, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:30', '2026-05-08 17:27:30', '2026-05-08 17:27:30');
INSERT INTO `sys_job_log` VALUES (1136, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:35', '2026-05-08 17:27:35', '2026-05-08 17:27:35');
INSERT INTO `sys_job_log` VALUES (1137, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:40', '2026-05-08 17:27:40', '2026-05-08 17:27:40');
INSERT INTO `sys_job_log` VALUES (1138, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:45', '2026-05-08 17:27:45', '2026-05-08 17:27:45');
INSERT INTO `sys_job_log` VALUES (1139, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:27:50', '2026-05-08 17:27:50', '2026-05-08 17:27:50');
INSERT INTO `sys_job_log` VALUES (1140, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:27:55', '2026-05-08 17:27:55', '2026-05-08 17:27:55');
INSERT INTO `sys_job_log` VALUES (1141, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:00', '2026-05-08 17:28:00', '2026-05-08 17:28:00');
INSERT INTO `sys_job_log` VALUES (1142, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:05', '2026-05-08 17:28:05', '2026-05-08 17:28:05');
INSERT INTO `sys_job_log` VALUES (1143, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:10', '2026-05-08 17:28:10', '2026-05-08 17:28:10');
INSERT INTO `sys_job_log` VALUES (1144, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:15', '2026-05-08 17:28:15', '2026-05-08 17:28:15');
INSERT INTO `sys_job_log` VALUES (1145, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:20', '2026-05-08 17:28:20', '2026-05-08 17:28:20');
INSERT INTO `sys_job_log` VALUES (1146, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:25', '2026-05-08 17:28:25', '2026-05-08 17:28:25');
INSERT INTO `sys_job_log` VALUES (1147, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:30', '2026-05-08 17:28:30', '2026-05-08 17:28:30');
INSERT INTO `sys_job_log` VALUES (1148, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:35', '2026-05-08 17:28:35', '2026-05-08 17:28:35');
INSERT INTO `sys_job_log` VALUES (1149, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:40', '2026-05-08 17:28:40', '2026-05-08 17:28:40');
INSERT INTO `sys_job_log` VALUES (1150, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:28:45', '2026-05-08 17:28:45', '2026-05-08 17:28:45');
INSERT INTO `sys_job_log` VALUES (1151, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:50', '2026-05-08 17:28:50', '2026-05-08 17:28:50');
INSERT INTO `sys_job_log` VALUES (1152, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:28:55', '2026-05-08 17:28:55', '2026-05-08 17:28:55');
INSERT INTO `sys_job_log` VALUES (1153, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:00', '2026-05-08 17:29:00', '2026-05-08 17:29:00');
INSERT INTO `sys_job_log` VALUES (1154, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:05', '2026-05-08 17:29:05', '2026-05-08 17:29:05');
INSERT INTO `sys_job_log` VALUES (1155, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:10', '2026-05-08 17:29:10', '2026-05-08 17:29:10');
INSERT INTO `sys_job_log` VALUES (1156, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:15', '2026-05-08 17:29:15', '2026-05-08 17:29:15');
INSERT INTO `sys_job_log` VALUES (1157, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:29:20', '2026-05-08 17:29:20', '2026-05-08 17:29:20');
INSERT INTO `sys_job_log` VALUES (1158, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:25', '2026-05-08 17:29:25', '2026-05-08 17:29:25');
INSERT INTO `sys_job_log` VALUES (1159, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:30', '2026-05-08 17:29:30', '2026-05-08 17:29:30');
INSERT INTO `sys_job_log` VALUES (1160, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:35', '2026-05-08 17:29:35', '2026-05-08 17:29:35');
INSERT INTO `sys_job_log` VALUES (1161, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:40', '2026-05-08 17:29:40', '2026-05-08 17:29:40');
INSERT INTO `sys_job_log` VALUES (1162, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:45', '2026-05-08 17:29:45', '2026-05-08 17:29:45');
INSERT INTO `sys_job_log` VALUES (1163, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:50', '2026-05-08 17:29:50', '2026-05-08 17:29:50');
INSERT INTO `sys_job_log` VALUES (1164, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:29:55', '2026-05-08 17:29:55', '2026-05-08 17:29:55');
INSERT INTO `sys_job_log` VALUES (1165, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:00', '2026-05-08 17:30:00', '2026-05-08 17:30:00');
INSERT INTO `sys_job_log` VALUES (1166, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:05', '2026-05-08 17:30:05', '2026-05-08 17:30:05');
INSERT INTO `sys_job_log` VALUES (1167, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:10', '2026-05-08 17:30:10', '2026-05-08 17:30:10');
INSERT INTO `sys_job_log` VALUES (1168, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:15', '2026-05-08 17:30:15', '2026-05-08 17:30:15');
INSERT INTO `sys_job_log` VALUES (1169, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:20', '2026-05-08 17:30:20', '2026-05-08 17:30:20');
INSERT INTO `sys_job_log` VALUES (1170, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:25', '2026-05-08 17:30:25', '2026-05-08 17:30:25');
INSERT INTO `sys_job_log` VALUES (1171, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:30', '2026-05-08 17:30:30', '2026-05-08 17:30:30');
INSERT INTO `sys_job_log` VALUES (1172, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:35', '2026-05-08 17:30:35', '2026-05-08 17:30:35');
INSERT INTO `sys_job_log` VALUES (1173, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:40', '2026-05-08 17:30:40', '2026-05-08 17:30:40');
INSERT INTO `sys_job_log` VALUES (1174, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:45', '2026-05-08 17:30:45', '2026-05-08 17:30:45');
INSERT INTO `sys_job_log` VALUES (1175, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:30:50', '2026-05-08 17:30:50', '2026-05-08 17:30:50');
INSERT INTO `sys_job_log` VALUES (1176, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:30:55', '2026-05-08 17:30:55', '2026-05-08 17:30:55');
INSERT INTO `sys_job_log` VALUES (1177, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:00', '2026-05-08 17:31:00', '2026-05-08 17:31:00');
INSERT INTO `sys_job_log` VALUES (1178, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:05', '2026-05-08 17:31:05', '2026-05-08 17:31:05');
INSERT INTO `sys_job_log` VALUES (1179, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:10', '2026-05-08 17:31:10', '2026-05-08 17:31:10');
INSERT INTO `sys_job_log` VALUES (1180, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:15', '2026-05-08 17:31:15', '2026-05-08 17:31:15');
INSERT INTO `sys_job_log` VALUES (1181, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:20', '2026-05-08 17:31:20', '2026-05-08 17:31:20');
INSERT INTO `sys_job_log` VALUES (1182, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:25', '2026-05-08 17:31:25', '2026-05-08 17:31:25');
INSERT INTO `sys_job_log` VALUES (1183, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:30', '2026-05-08 17:31:30', '2026-05-08 17:31:30');
INSERT INTO `sys_job_log` VALUES (1184, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:35', '2026-05-08 17:31:35', '2026-05-08 17:31:35');
INSERT INTO `sys_job_log` VALUES (1185, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:40', '2026-05-08 17:31:40', '2026-05-08 17:31:40');
INSERT INTO `sys_job_log` VALUES (1186, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:45', '2026-05-08 17:31:45', '2026-05-08 17:31:45');
INSERT INTO `sys_job_log` VALUES (1187, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:50', '2026-05-08 17:31:50', '2026-05-08 17:31:50');
INSERT INTO `sys_job_log` VALUES (1188, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:31:55', '2026-05-08 17:31:55', '2026-05-08 17:31:55');
INSERT INTO `sys_job_log` VALUES (1189, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:00', '2026-05-08 17:32:00', '2026-05-08 17:32:00');
INSERT INTO `sys_job_log` VALUES (1190, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:05', '2026-05-08 17:32:05', '2026-05-08 17:32:05');
INSERT INTO `sys_job_log` VALUES (1191, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:10', '2026-05-08 17:32:10', '2026-05-08 17:32:10');
INSERT INTO `sys_job_log` VALUES (1192, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:15', '2026-05-08 17:32:15', '2026-05-08 17:32:15');
INSERT INTO `sys_job_log` VALUES (1193, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:20', '2026-05-08 17:32:20', '2026-05-08 17:32:20');
INSERT INTO `sys_job_log` VALUES (1194, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:25', '2026-05-08 17:32:25', '2026-05-08 17:32:25');
INSERT INTO `sys_job_log` VALUES (1195, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:30', '2026-05-08 17:32:30', '2026-05-08 17:32:30');
INSERT INTO `sys_job_log` VALUES (1196, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:35', '2026-05-08 17:32:35', '2026-05-08 17:32:35');
INSERT INTO `sys_job_log` VALUES (1197, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:40', '2026-05-08 17:32:40', '2026-05-08 17:32:40');
INSERT INTO `sys_job_log` VALUES (1198, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:45', '2026-05-08 17:32:45', '2026-05-08 17:32:45');
INSERT INTO `sys_job_log` VALUES (1199, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:50', '2026-05-08 17:32:50', '2026-05-08 17:32:50');
INSERT INTO `sys_job_log` VALUES (1200, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:32:55', '2026-05-08 17:32:55', '2026-05-08 17:32:55');
INSERT INTO `sys_job_log` VALUES (1201, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:00', '2026-05-08 17:33:00', '2026-05-08 17:33:00');
INSERT INTO `sys_job_log` VALUES (1202, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:05', '2026-05-08 17:33:05', '2026-05-08 17:33:05');
INSERT INTO `sys_job_log` VALUES (1203, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:10', '2026-05-08 17:33:10', '2026-05-08 17:33:10');
INSERT INTO `sys_job_log` VALUES (1204, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:15', '2026-05-08 17:33:15', '2026-05-08 17:33:15');
INSERT INTO `sys_job_log` VALUES (1205, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:33:20', '2026-05-08 17:33:20', '2026-05-08 17:33:20');
INSERT INTO `sys_job_log` VALUES (1206, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:25', '2026-05-08 17:33:25', '2026-05-08 17:33:25');
INSERT INTO `sys_job_log` VALUES (1207, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:30', '2026-05-08 17:33:30', '2026-05-08 17:33:30');
INSERT INTO `sys_job_log` VALUES (1208, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:35', '2026-05-08 17:33:35', '2026-05-08 17:33:35');
INSERT INTO `sys_job_log` VALUES (1209, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:40', '2026-05-08 17:33:40', '2026-05-08 17:33:40');
INSERT INTO `sys_job_log` VALUES (1210, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:45', '2026-05-08 17:33:45', '2026-05-08 17:33:45');
INSERT INTO `sys_job_log` VALUES (1211, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:50', '2026-05-08 17:33:50', '2026-05-08 17:33:50');
INSERT INTO `sys_job_log` VALUES (1212, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:33:55', '2026-05-08 17:33:55', '2026-05-08 17:33:55');
INSERT INTO `sys_job_log` VALUES (1213, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:00', '2026-05-08 17:34:00', '2026-05-08 17:34:00');
INSERT INTO `sys_job_log` VALUES (1214, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:05', '2026-05-08 17:34:05', '2026-05-08 17:34:05');
INSERT INTO `sys_job_log` VALUES (1215, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:10', '2026-05-08 17:34:10', '2026-05-08 17:34:10');
INSERT INTO `sys_job_log` VALUES (1216, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:15', '2026-05-08 17:34:15', '2026-05-08 17:34:15');
INSERT INTO `sys_job_log` VALUES (1217, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:20', '2026-05-08 17:34:20', '2026-05-08 17:34:20');
INSERT INTO `sys_job_log` VALUES (1218, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:25', '2026-05-08 17:34:25', '2026-05-08 17:34:25');
INSERT INTO `sys_job_log` VALUES (1219, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:30', '2026-05-08 17:34:30', '2026-05-08 17:34:30');
INSERT INTO `sys_job_log` VALUES (1220, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:35', '2026-05-08 17:34:35', '2026-05-08 17:34:35');
INSERT INTO `sys_job_log` VALUES (1221, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:40', '2026-05-08 17:34:40', '2026-05-08 17:34:40');
INSERT INTO `sys_job_log` VALUES (1222, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:45', '2026-05-08 17:34:45', '2026-05-08 17:34:45');
INSERT INTO `sys_job_log` VALUES (1223, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:50', '2026-05-08 17:34:50', '2026-05-08 17:34:50');
INSERT INTO `sys_job_log` VALUES (1224, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:34:55', '2026-05-08 17:34:55', '2026-05-08 17:34:55');
INSERT INTO `sys_job_log` VALUES (1225, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:00', '2026-05-08 17:35:00', '2026-05-08 17:35:00');
INSERT INTO `sys_job_log` VALUES (1226, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:05', '2026-05-08 17:35:05', '2026-05-08 17:35:05');
INSERT INTO `sys_job_log` VALUES (1227, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:10', '2026-05-08 17:35:10', '2026-05-08 17:35:10');
INSERT INTO `sys_job_log` VALUES (1228, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:15', '2026-05-08 17:35:15', '2026-05-08 17:35:15');
INSERT INTO `sys_job_log` VALUES (1229, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:20', '2026-05-08 17:35:20', '2026-05-08 17:35:20');
INSERT INTO `sys_job_log` VALUES (1230, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:35:25', '2026-05-08 17:35:25', '2026-05-08 17:35:25');
INSERT INTO `sys_job_log` VALUES (1231, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:30', '2026-05-08 17:35:30', '2026-05-08 17:35:30');
INSERT INTO `sys_job_log` VALUES (1232, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:35', '2026-05-08 17:35:35', '2026-05-08 17:35:35');
INSERT INTO `sys_job_log` VALUES (1233, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:40', '2026-05-08 17:35:40', '2026-05-08 17:35:40');
INSERT INTO `sys_job_log` VALUES (1234, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:45', '2026-05-08 17:35:45', '2026-05-08 17:35:45');
INSERT INTO `sys_job_log` VALUES (1235, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:50', '2026-05-08 17:35:50', '2026-05-08 17:35:50');
INSERT INTO `sys_job_log` VALUES (1236, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:35:55', '2026-05-08 17:35:55', '2026-05-08 17:35:55');
INSERT INTO `sys_job_log` VALUES (1237, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:00', '2026-05-08 17:36:00', '2026-05-08 17:36:00');
INSERT INTO `sys_job_log` VALUES (1238, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:05', '2026-05-08 17:36:05', '2026-05-08 17:36:05');
INSERT INTO `sys_job_log` VALUES (1239, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:10', '2026-05-08 17:36:10', '2026-05-08 17:36:10');
INSERT INTO `sys_job_log` VALUES (1240, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:15', '2026-05-08 17:36:15', '2026-05-08 17:36:15');
INSERT INTO `sys_job_log` VALUES (1241, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:20', '2026-05-08 17:36:20', '2026-05-08 17:36:20');
INSERT INTO `sys_job_log` VALUES (1242, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:25', '2026-05-08 17:36:25', '2026-05-08 17:36:25');
INSERT INTO `sys_job_log` VALUES (1243, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:30', '2026-05-08 17:36:30', '2026-05-08 17:36:30');
INSERT INTO `sys_job_log` VALUES (1244, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:35', '2026-05-08 17:36:35', '2026-05-08 17:36:35');
INSERT INTO `sys_job_log` VALUES (1245, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:40', '2026-05-08 17:36:40', '2026-05-08 17:36:40');
INSERT INTO `sys_job_log` VALUES (1246, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:45', '2026-05-08 17:36:45', '2026-05-08 17:36:45');
INSERT INTO `sys_job_log` VALUES (1247, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:50', '2026-05-08 17:36:50', '2026-05-08 17:36:50');
INSERT INTO `sys_job_log` VALUES (1248, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:36:55', '2026-05-08 17:36:55', '2026-05-08 17:36:55');
INSERT INTO `sys_job_log` VALUES (1249, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:37:00', '2026-05-08 17:37:00', '2026-05-08 17:37:00');
INSERT INTO `sys_job_log` VALUES (1250, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:05', '2026-05-08 17:37:05', '2026-05-08 17:37:05');
INSERT INTO `sys_job_log` VALUES (1251, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:37:10', '2026-05-08 17:37:10', '2026-05-08 17:37:10');
INSERT INTO `sys_job_log` VALUES (1252, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:15', '2026-05-08 17:37:15', '2026-05-08 17:37:15');
INSERT INTO `sys_job_log` VALUES (1253, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:20', '2026-05-08 17:37:20', '2026-05-08 17:37:20');
INSERT INTO `sys_job_log` VALUES (1254, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:25', '2026-05-08 17:37:25', '2026-05-08 17:37:25');
INSERT INTO `sys_job_log` VALUES (1255, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:30', '2026-05-08 17:37:30', '2026-05-08 17:37:30');
INSERT INTO `sys_job_log` VALUES (1256, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:35', '2026-05-08 17:37:35', '2026-05-08 17:37:35');
INSERT INTO `sys_job_log` VALUES (1257, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:40', '2026-05-08 17:37:40', '2026-05-08 17:37:40');
INSERT INTO `sys_job_log` VALUES (1258, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:45', '2026-05-08 17:37:45', '2026-05-08 17:37:45');
INSERT INTO `sys_job_log` VALUES (1259, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:50', '2026-05-08 17:37:50', '2026-05-08 17:37:50');
INSERT INTO `sys_job_log` VALUES (1260, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:37:55', '2026-05-08 17:37:55', '2026-05-08 17:37:55');
INSERT INTO `sys_job_log` VALUES (1261, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:38:00', '2026-05-08 17:38:00', '2026-05-08 17:38:00');
INSERT INTO `sys_job_log` VALUES (1262, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:05', '2026-05-08 17:38:05', '2026-05-08 17:38:05');
INSERT INTO `sys_job_log` VALUES (1263, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:10', '2026-05-08 17:38:10', '2026-05-08 17:38:10');
INSERT INTO `sys_job_log` VALUES (1264, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:15', '2026-05-08 17:38:15', '2026-05-08 17:38:15');
INSERT INTO `sys_job_log` VALUES (1265, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:38:20', '2026-05-08 17:38:20', '2026-05-08 17:38:20');
INSERT INTO `sys_job_log` VALUES (1266, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:25', '2026-05-08 17:38:25', '2026-05-08 17:38:25');
INSERT INTO `sys_job_log` VALUES (1267, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:30', '2026-05-08 17:38:30', '2026-05-08 17:38:30');
INSERT INTO `sys_job_log` VALUES (1268, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:35', '2026-05-08 17:38:35', '2026-05-08 17:38:35');
INSERT INTO `sys_job_log` VALUES (1269, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:40', '2026-05-08 17:38:40', '2026-05-08 17:38:40');
INSERT INTO `sys_job_log` VALUES (1270, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:45', '2026-05-08 17:38:45', '2026-05-08 17:38:45');
INSERT INTO `sys_job_log` VALUES (1271, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:50', '2026-05-08 17:38:50', '2026-05-08 17:38:50');
INSERT INTO `sys_job_log` VALUES (1272, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:38:55', '2026-05-08 17:38:55', '2026-05-08 17:38:55');
INSERT INTO `sys_job_log` VALUES (1273, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:39:00', '2026-05-08 17:39:00', '2026-05-08 17:39:00');
INSERT INTO `sys_job_log` VALUES (1274, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:39:05', '2026-05-08 17:39:05', '2026-05-08 17:39:05');
INSERT INTO `sys_job_log` VALUES (1275, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:39:10', '2026-05-08 17:39:10', '2026-05-08 17:39:10');
INSERT INTO `sys_job_log` VALUES (1276, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:39:15', '2026-05-08 17:39:15', '2026-05-08 17:39:15');
INSERT INTO `sys_job_log` VALUES (1277, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:39:20', '2026-05-08 17:39:20', '2026-05-08 17:39:20');
INSERT INTO `sys_job_log` VALUES (1278, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:39:25', '2026-05-08 17:39:25', '2026-05-08 17:39:25');
INSERT INTO `sys_job_log` VALUES (1279, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:39:30', '2026-05-08 17:39:30', '2026-05-08 17:39:30');
INSERT INTO `sys_job_log` VALUES (1280, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:39:35', '2026-05-08 17:39:35', '2026-05-08 17:39:35');
INSERT INTO `sys_job_log` VALUES (1281, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:39:40', '2026-05-08 17:39:40', '2026-05-08 17:39:40');
INSERT INTO `sys_job_log` VALUES (1282, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:39:45', '2026-05-08 17:39:45', '2026-05-08 17:39:45');
INSERT INTO `sys_job_log` VALUES (1283, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:39:50', '2026-05-08 17:39:50', '2026-05-08 17:39:50');
INSERT INTO `sys_job_log` VALUES (1284, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:39:55', '2026-05-08 17:39:55', '2026-05-08 17:39:55');
INSERT INTO `sys_job_log` VALUES (1285, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:00', '2026-05-08 17:40:00', '2026-05-08 17:40:00');
INSERT INTO `sys_job_log` VALUES (1286, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:05', '2026-05-08 17:40:05', '2026-05-08 17:40:05');
INSERT INTO `sys_job_log` VALUES (1287, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:10', '2026-05-08 17:40:10', '2026-05-08 17:40:10');
INSERT INTO `sys_job_log` VALUES (1288, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:15', '2026-05-08 17:40:15', '2026-05-08 17:40:15');
INSERT INTO `sys_job_log` VALUES (1289, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:20', '2026-05-08 17:40:20', '2026-05-08 17:40:20');
INSERT INTO `sys_job_log` VALUES (1290, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:25', '2026-05-08 17:40:25', '2026-05-08 17:40:25');
INSERT INTO `sys_job_log` VALUES (1291, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:40:30', '2026-05-08 17:40:30', '2026-05-08 17:40:30');
INSERT INTO `sys_job_log` VALUES (1292, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:35', '2026-05-08 17:40:35', '2026-05-08 17:40:35');
INSERT INTO `sys_job_log` VALUES (1293, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:40', '2026-05-08 17:40:40', '2026-05-08 17:40:40');
INSERT INTO `sys_job_log` VALUES (1294, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:45', '2026-05-08 17:40:45', '2026-05-08 17:40:45');
INSERT INTO `sys_job_log` VALUES (1295, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:50', '2026-05-08 17:40:50', '2026-05-08 17:40:50');
INSERT INTO `sys_job_log` VALUES (1296, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:40:55', '2026-05-08 17:40:55', '2026-05-08 17:40:55');
INSERT INTO `sys_job_log` VALUES (1297, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:00', '2026-05-08 17:41:00', '2026-05-08 17:41:00');
INSERT INTO `sys_job_log` VALUES (1298, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:05', '2026-05-08 17:41:05', '2026-05-08 17:41:05');
INSERT INTO `sys_job_log` VALUES (1299, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:10', '2026-05-08 17:41:10', '2026-05-08 17:41:10');
INSERT INTO `sys_job_log` VALUES (1300, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:15', '2026-05-08 17:41:15', '2026-05-08 17:41:15');
INSERT INTO `sys_job_log` VALUES (1301, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:20', '2026-05-08 17:41:20', '2026-05-08 17:41:20');
INSERT INTO `sys_job_log` VALUES (1302, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:25', '2026-05-08 17:41:25', '2026-05-08 17:41:25');
INSERT INTO `sys_job_log` VALUES (1303, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:30', '2026-05-08 17:41:30', '2026-05-08 17:41:30');
INSERT INTO `sys_job_log` VALUES (1304, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:35', '2026-05-08 17:41:35', '2026-05-08 17:41:35');
INSERT INTO `sys_job_log` VALUES (1305, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:40', '2026-05-08 17:41:40', '2026-05-08 17:41:40');
INSERT INTO `sys_job_log` VALUES (1306, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:45', '2026-05-08 17:41:45', '2026-05-08 17:41:45');
INSERT INTO `sys_job_log` VALUES (1307, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:50', '2026-05-08 17:41:50', '2026-05-08 17:41:50');
INSERT INTO `sys_job_log` VALUES (1308, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:41:55', '2026-05-08 17:41:55', '2026-05-08 17:41:55');
INSERT INTO `sys_job_log` VALUES (1309, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:00', '2026-05-08 17:42:00', '2026-05-08 17:42:00');
INSERT INTO `sys_job_log` VALUES (1310, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:05', '2026-05-08 17:42:05', '2026-05-08 17:42:05');
INSERT INTO `sys_job_log` VALUES (1311, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:10', '2026-05-08 17:42:10', '2026-05-08 17:42:10');
INSERT INTO `sys_job_log` VALUES (1312, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:15', '2026-05-08 17:42:15', '2026-05-08 17:42:15');
INSERT INTO `sys_job_log` VALUES (1313, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:20', '2026-05-08 17:42:20', '2026-05-08 17:42:20');
INSERT INTO `sys_job_log` VALUES (1314, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:25', '2026-05-08 17:42:25', '2026-05-08 17:42:25');
INSERT INTO `sys_job_log` VALUES (1315, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:42:30', '2026-05-08 17:42:30', '2026-05-08 17:42:30');
INSERT INTO `sys_job_log` VALUES (1316, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:35', '2026-05-08 17:42:35', '2026-05-08 17:42:35');
INSERT INTO `sys_job_log` VALUES (1317, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:40', '2026-05-08 17:42:40', '2026-05-08 17:42:40');
INSERT INTO `sys_job_log` VALUES (1318, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:45', '2026-05-08 17:42:45', '2026-05-08 17:42:45');
INSERT INTO `sys_job_log` VALUES (1319, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:50', '2026-05-08 17:42:50', '2026-05-08 17:42:50');
INSERT INTO `sys_job_log` VALUES (1320, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:42:55', '2026-05-08 17:42:55', '2026-05-08 17:42:55');
INSERT INTO `sys_job_log` VALUES (1321, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:00', '2026-05-08 17:43:00', '2026-05-08 17:43:00');
INSERT INTO `sys_job_log` VALUES (1322, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:43:05', '2026-05-08 17:43:05', '2026-05-08 17:43:05');
INSERT INTO `sys_job_log` VALUES (1323, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:10', '2026-05-08 17:43:10', '2026-05-08 17:43:10');
INSERT INTO `sys_job_log` VALUES (1324, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:15', '2026-05-08 17:43:15', '2026-05-08 17:43:15');
INSERT INTO `sys_job_log` VALUES (1325, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:20', '2026-05-08 17:43:20', '2026-05-08 17:43:20');
INSERT INTO `sys_job_log` VALUES (1326, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:25', '2026-05-08 17:43:25', '2026-05-08 17:43:25');
INSERT INTO `sys_job_log` VALUES (1327, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:30', '2026-05-08 17:43:30', '2026-05-08 17:43:30');
INSERT INTO `sys_job_log` VALUES (1328, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:35', '2026-05-08 17:43:35', '2026-05-08 17:43:35');
INSERT INTO `sys_job_log` VALUES (1329, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:40', '2026-05-08 17:43:40', '2026-05-08 17:43:40');
INSERT INTO `sys_job_log` VALUES (1330, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:45', '2026-05-08 17:43:45', '2026-05-08 17:43:45');
INSERT INTO `sys_job_log` VALUES (1331, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:50', '2026-05-08 17:43:50', '2026-05-08 17:43:50');
INSERT INTO `sys_job_log` VALUES (1332, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:43:55', '2026-05-08 17:43:55', '2026-05-08 17:43:55');
INSERT INTO `sys_job_log` VALUES (1333, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:00', '2026-05-08 17:44:00', '2026-05-08 17:44:00');
INSERT INTO `sys_job_log` VALUES (1334, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:05', '2026-05-08 17:44:05', '2026-05-08 17:44:05');
INSERT INTO `sys_job_log` VALUES (1335, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:44:10', '2026-05-08 17:44:10', '2026-05-08 17:44:10');
INSERT INTO `sys_job_log` VALUES (1336, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:15', '2026-05-08 17:44:15', '2026-05-08 17:44:15');
INSERT INTO `sys_job_log` VALUES (1337, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:20', '2026-05-08 17:44:20', '2026-05-08 17:44:20');
INSERT INTO `sys_job_log` VALUES (1338, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:25', '2026-05-08 17:44:25', '2026-05-08 17:44:25');
INSERT INTO `sys_job_log` VALUES (1339, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:30', '2026-05-08 17:44:30', '2026-05-08 17:44:30');
INSERT INTO `sys_job_log` VALUES (1340, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:35', '2026-05-08 17:44:35', '2026-05-08 17:44:35');
INSERT INTO `sys_job_log` VALUES (1341, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:40', '2026-05-08 17:44:40', '2026-05-08 17:44:40');
INSERT INTO `sys_job_log` VALUES (1342, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:45', '2026-05-08 17:44:45', '2026-05-08 17:44:45');
INSERT INTO `sys_job_log` VALUES (1343, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:50', '2026-05-08 17:44:50', '2026-05-08 17:44:50');
INSERT INTO `sys_job_log` VALUES (1344, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:44:55', '2026-05-08 17:44:55', '2026-05-08 17:44:55');
INSERT INTO `sys_job_log` VALUES (1345, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:00', '2026-05-08 17:45:00', '2026-05-08 17:45:00');
INSERT INTO `sys_job_log` VALUES (1346, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:05', '2026-05-08 17:45:05', '2026-05-08 17:45:05');
INSERT INTO `sys_job_log` VALUES (1347, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:10', '2026-05-08 17:45:10', '2026-05-08 17:45:10');
INSERT INTO `sys_job_log` VALUES (1348, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:15', '2026-05-08 17:45:15', '2026-05-08 17:45:15');
INSERT INTO `sys_job_log` VALUES (1349, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:20', '2026-05-08 17:45:20', '2026-05-08 17:45:20');
INSERT INTO `sys_job_log` VALUES (1350, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:25', '2026-05-08 17:45:25', '2026-05-08 17:45:25');
INSERT INTO `sys_job_log` VALUES (1351, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:30', '2026-05-08 17:45:30', '2026-05-08 17:45:30');
INSERT INTO `sys_job_log` VALUES (1352, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:35', '2026-05-08 17:45:35', '2026-05-08 17:45:35');
INSERT INTO `sys_job_log` VALUES (1353, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:40', '2026-05-08 17:45:40', '2026-05-08 17:45:40');
INSERT INTO `sys_job_log` VALUES (1354, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:45', '2026-05-08 17:45:45', '2026-05-08 17:45:45');
INSERT INTO `sys_job_log` VALUES (1355, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:50', '2026-05-08 17:45:50', '2026-05-08 17:45:50');
INSERT INTO `sys_job_log` VALUES (1356, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:45:55', '2026-05-08 17:45:55', '2026-05-08 17:45:55');
INSERT INTO `sys_job_log` VALUES (1357, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:00', '2026-05-08 17:46:00', '2026-05-08 17:46:00');
INSERT INTO `sys_job_log` VALUES (1358, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:05', '2026-05-08 17:46:05', '2026-05-08 17:46:05');
INSERT INTO `sys_job_log` VALUES (1359, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:10', '2026-05-08 17:46:10', '2026-05-08 17:46:10');
INSERT INTO `sys_job_log` VALUES (1360, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:15', '2026-05-08 17:46:15', '2026-05-08 17:46:15');
INSERT INTO `sys_job_log` VALUES (1361, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:46:20', '2026-05-08 17:46:20', '2026-05-08 17:46:20');
INSERT INTO `sys_job_log` VALUES (1362, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:25', '2026-05-08 17:46:25', '2026-05-08 17:46:25');
INSERT INTO `sys_job_log` VALUES (1363, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:30', '2026-05-08 17:46:30', '2026-05-08 17:46:30');
INSERT INTO `sys_job_log` VALUES (1364, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:35', '2026-05-08 17:46:35', '2026-05-08 17:46:35');
INSERT INTO `sys_job_log` VALUES (1365, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:40', '2026-05-08 17:46:40', '2026-05-08 17:46:40');
INSERT INTO `sys_job_log` VALUES (1366, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:45', '2026-05-08 17:46:45', '2026-05-08 17:46:45');
INSERT INTO `sys_job_log` VALUES (1367, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:50', '2026-05-08 17:46:50', '2026-05-08 17:46:50');
INSERT INTO `sys_job_log` VALUES (1368, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:46:55', '2026-05-08 17:46:55', '2026-05-08 17:46:55');
INSERT INTO `sys_job_log` VALUES (1369, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:00', '2026-05-08 17:47:00', '2026-05-08 17:47:00');
INSERT INTO `sys_job_log` VALUES (1370, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:05', '2026-05-08 17:47:05', '2026-05-08 17:47:05');
INSERT INTO `sys_job_log` VALUES (1371, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:10', '2026-05-08 17:47:10', '2026-05-08 17:47:10');
INSERT INTO `sys_job_log` VALUES (1372, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:15', '2026-05-08 17:47:15', '2026-05-08 17:47:15');
INSERT INTO `sys_job_log` VALUES (1373, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:20', '2026-05-08 17:47:20', '2026-05-08 17:47:20');
INSERT INTO `sys_job_log` VALUES (1374, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:25', '2026-05-08 17:47:25', '2026-05-08 17:47:25');
INSERT INTO `sys_job_log` VALUES (1375, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:30', '2026-05-08 17:47:30', '2026-05-08 17:47:30');
INSERT INTO `sys_job_log` VALUES (1376, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:35', '2026-05-08 17:47:35', '2026-05-08 17:47:35');
INSERT INTO `sys_job_log` VALUES (1377, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:40', '2026-05-08 17:47:40', '2026-05-08 17:47:40');
INSERT INTO `sys_job_log` VALUES (1378, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:45', '2026-05-08 17:47:45', '2026-05-08 17:47:45');
INSERT INTO `sys_job_log` VALUES (1379, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:50', '2026-05-08 17:47:50', '2026-05-08 17:47:50');
INSERT INTO `sys_job_log` VALUES (1380, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:47:55', '2026-05-08 17:47:55', '2026-05-08 17:47:55');
INSERT INTO `sys_job_log` VALUES (1381, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:00', '2026-05-08 17:48:00', '2026-05-08 17:48:00');
INSERT INTO `sys_job_log` VALUES (1382, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:05', '2026-05-08 17:48:05', '2026-05-08 17:48:05');
INSERT INTO `sys_job_log` VALUES (1383, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:10', '2026-05-08 17:48:10', '2026-05-08 17:48:10');
INSERT INTO `sys_job_log` VALUES (1384, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:15', '2026-05-08 17:48:15', '2026-05-08 17:48:15');
INSERT INTO `sys_job_log` VALUES (1385, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:20', '2026-05-08 17:48:20', '2026-05-08 17:48:20');
INSERT INTO `sys_job_log` VALUES (1386, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:25', '2026-05-08 17:48:25', '2026-05-08 17:48:25');
INSERT INTO `sys_job_log` VALUES (1387, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:30', '2026-05-08 17:48:30', '2026-05-08 17:48:30');
INSERT INTO `sys_job_log` VALUES (1388, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:35', '2026-05-08 17:48:35', '2026-05-08 17:48:35');
INSERT INTO `sys_job_log` VALUES (1389, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:40', '2026-05-08 17:48:40', '2026-05-08 17:48:40');
INSERT INTO `sys_job_log` VALUES (1390, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:45', '2026-05-08 17:48:45', '2026-05-08 17:48:45');
INSERT INTO `sys_job_log` VALUES (1391, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:50', '2026-05-08 17:48:50', '2026-05-08 17:48:50');
INSERT INTO `sys_job_log` VALUES (1392, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:48:55', '2026-05-08 17:48:55', '2026-05-08 17:48:55');
INSERT INTO `sys_job_log` VALUES (1393, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:00', '2026-05-08 17:49:00', '2026-05-08 17:49:00');
INSERT INTO `sys_job_log` VALUES (1394, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:05', '2026-05-08 17:49:05', '2026-05-08 17:49:05');
INSERT INTO `sys_job_log` VALUES (1395, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:10', '2026-05-08 17:49:10', '2026-05-08 17:49:10');
INSERT INTO `sys_job_log` VALUES (1396, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:15', '2026-05-08 17:49:15', '2026-05-08 17:49:15');
INSERT INTO `sys_job_log` VALUES (1397, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:20', '2026-05-08 17:49:20', '2026-05-08 17:49:20');
INSERT INTO `sys_job_log` VALUES (1398, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:25', '2026-05-08 17:49:25', '2026-05-08 17:49:25');
INSERT INTO `sys_job_log` VALUES (1399, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:30', '2026-05-08 17:49:30', '2026-05-08 17:49:30');
INSERT INTO `sys_job_log` VALUES (1400, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:35', '2026-05-08 17:49:35', '2026-05-08 17:49:35');
INSERT INTO `sys_job_log` VALUES (1401, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:40', '2026-05-08 17:49:40', '2026-05-08 17:49:40');
INSERT INTO `sys_job_log` VALUES (1402, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:45', '2026-05-08 17:49:45', '2026-05-08 17:49:45');
INSERT INTO `sys_job_log` VALUES (1403, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:50', '2026-05-08 17:49:50', '2026-05-08 17:49:50');
INSERT INTO `sys_job_log` VALUES (1404, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:49:55', '2026-05-08 17:49:55', '2026-05-08 17:49:55');
INSERT INTO `sys_job_log` VALUES (1405, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:00', '2026-05-08 17:50:00', '2026-05-08 17:50:00');
INSERT INTO `sys_job_log` VALUES (1406, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:05', '2026-05-08 17:50:05', '2026-05-08 17:50:05');
INSERT INTO `sys_job_log` VALUES (1407, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:10', '2026-05-08 17:50:10', '2026-05-08 17:50:10');
INSERT INTO `sys_job_log` VALUES (1408, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:15', '2026-05-08 17:50:15', '2026-05-08 17:50:15');
INSERT INTO `sys_job_log` VALUES (1409, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:20', '2026-05-08 17:50:20', '2026-05-08 17:50:20');
INSERT INTO `sys_job_log` VALUES (1410, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:25', '2026-05-08 17:50:25', '2026-05-08 17:50:25');
INSERT INTO `sys_job_log` VALUES (1411, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:30', '2026-05-08 17:50:30', '2026-05-08 17:50:30');
INSERT INTO `sys_job_log` VALUES (1412, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:35', '2026-05-08 17:50:35', '2026-05-08 17:50:35');
INSERT INTO `sys_job_log` VALUES (1413, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:40', '2026-05-08 17:50:40', '2026-05-08 17:50:40');
INSERT INTO `sys_job_log` VALUES (1414, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:50:45', '2026-05-08 17:50:45', '2026-05-08 17:50:45');
INSERT INTO `sys_job_log` VALUES (1415, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:50:50', '2026-05-08 17:50:50', '2026-05-08 17:50:50');
INSERT INTO `sys_job_log` VALUES (1416, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:50:55', '2026-05-08 17:50:55', '2026-05-08 17:50:55');
INSERT INTO `sys_job_log` VALUES (1417, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:00', '2026-05-08 17:51:00', '2026-05-08 17:51:00');
INSERT INTO `sys_job_log` VALUES (1418, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:05', '2026-05-08 17:51:05', '2026-05-08 17:51:05');
INSERT INTO `sys_job_log` VALUES (1419, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:10', '2026-05-08 17:51:10', '2026-05-08 17:51:10');
INSERT INTO `sys_job_log` VALUES (1420, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:15', '2026-05-08 17:51:15', '2026-05-08 17:51:15');
INSERT INTO `sys_job_log` VALUES (1421, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:20', '2026-05-08 17:51:20', '2026-05-08 17:51:20');
INSERT INTO `sys_job_log` VALUES (1422, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:25', '2026-05-08 17:51:25', '2026-05-08 17:51:25');
INSERT INTO `sys_job_log` VALUES (1423, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:30', '2026-05-08 17:51:30', '2026-05-08 17:51:30');
INSERT INTO `sys_job_log` VALUES (1424, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:35', '2026-05-08 17:51:35', '2026-05-08 17:51:35');
INSERT INTO `sys_job_log` VALUES (1425, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:40', '2026-05-08 17:51:40', '2026-05-08 17:51:40');
INSERT INTO `sys_job_log` VALUES (1426, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:45', '2026-05-08 17:51:45', '2026-05-08 17:51:45');
INSERT INTO `sys_job_log` VALUES (1427, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:50', '2026-05-08 17:51:50', '2026-05-08 17:51:50');
INSERT INTO `sys_job_log` VALUES (1428, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:51:55', '2026-05-08 17:51:55', '2026-05-08 17:51:55');
INSERT INTO `sys_job_log` VALUES (1429, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:00', '2026-05-08 17:52:00', '2026-05-08 17:52:00');
INSERT INTO `sys_job_log` VALUES (1430, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:05', '2026-05-08 17:52:05', '2026-05-08 17:52:05');
INSERT INTO `sys_job_log` VALUES (1431, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:10', '2026-05-08 17:52:10', '2026-05-08 17:52:10');
INSERT INTO `sys_job_log` VALUES (1432, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:15', '2026-05-08 17:52:15', '2026-05-08 17:52:15');
INSERT INTO `sys_job_log` VALUES (1433, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:20', '2026-05-08 17:52:20', '2026-05-08 17:52:20');
INSERT INTO `sys_job_log` VALUES (1434, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:25', '2026-05-08 17:52:25', '2026-05-08 17:52:25');
INSERT INTO `sys_job_log` VALUES (1435, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:30', '2026-05-08 17:52:30', '2026-05-08 17:52:30');
INSERT INTO `sys_job_log` VALUES (1436, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:35', '2026-05-08 17:52:35', '2026-05-08 17:52:35');
INSERT INTO `sys_job_log` VALUES (1437, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:40', '2026-05-08 17:52:40', '2026-05-08 17:52:40');
INSERT INTO `sys_job_log` VALUES (1438, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:45', '2026-05-08 17:52:45', '2026-05-08 17:52:45');
INSERT INTO `sys_job_log` VALUES (1439, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:50', '2026-05-08 17:52:50', '2026-05-08 17:52:50');
INSERT INTO `sys_job_log` VALUES (1440, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:52:55', '2026-05-08 17:52:55', '2026-05-08 17:52:55');
INSERT INTO `sys_job_log` VALUES (1441, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:00', '2026-05-08 17:53:00', '2026-05-08 17:53:00');
INSERT INTO `sys_job_log` VALUES (1442, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:05', '2026-05-08 17:53:05', '2026-05-08 17:53:05');
INSERT INTO `sys_job_log` VALUES (1443, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:10', '2026-05-08 17:53:10', '2026-05-08 17:53:10');
INSERT INTO `sys_job_log` VALUES (1444, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:15', '2026-05-08 17:53:15', '2026-05-08 17:53:15');
INSERT INTO `sys_job_log` VALUES (1445, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:20', '2026-05-08 17:53:20', '2026-05-08 17:53:20');
INSERT INTO `sys_job_log` VALUES (1446, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:25', '2026-05-08 17:53:25', '2026-05-08 17:53:25');
INSERT INTO `sys_job_log` VALUES (1447, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:30', '2026-05-08 17:53:30', '2026-05-08 17:53:30');
INSERT INTO `sys_job_log` VALUES (1448, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:53:35', '2026-05-08 17:53:35', '2026-05-08 17:53:35');
INSERT INTO `sys_job_log` VALUES (1449, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:40', '2026-05-08 17:53:40', '2026-05-08 17:53:40');
INSERT INTO `sys_job_log` VALUES (1450, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:45', '2026-05-08 17:53:45', '2026-05-08 17:53:45');
INSERT INTO `sys_job_log` VALUES (1451, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:50', '2026-05-08 17:53:50', '2026-05-08 17:53:50');
INSERT INTO `sys_job_log` VALUES (1452, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:53:55', '2026-05-08 17:53:55', '2026-05-08 17:53:55');
INSERT INTO `sys_job_log` VALUES (1453, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:00', '2026-05-08 17:54:00', '2026-05-08 17:54:00');
INSERT INTO `sys_job_log` VALUES (1454, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:05', '2026-05-08 17:54:05', '2026-05-08 17:54:05');
INSERT INTO `sys_job_log` VALUES (1455, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:10', '2026-05-08 17:54:10', '2026-05-08 17:54:10');
INSERT INTO `sys_job_log` VALUES (1456, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:15', '2026-05-08 17:54:15', '2026-05-08 17:54:15');
INSERT INTO `sys_job_log` VALUES (1457, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:20', '2026-05-08 17:54:20', '2026-05-08 17:54:20');
INSERT INTO `sys_job_log` VALUES (1458, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:25', '2026-05-08 17:54:25', '2026-05-08 17:54:25');
INSERT INTO `sys_job_log` VALUES (1459, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:30', '2026-05-08 17:54:30', '2026-05-08 17:54:30');
INSERT INTO `sys_job_log` VALUES (1460, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:35', '2026-05-08 17:54:35', '2026-05-08 17:54:35');
INSERT INTO `sys_job_log` VALUES (1461, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:40', '2026-05-08 17:54:40', '2026-05-08 17:54:40');
INSERT INTO `sys_job_log` VALUES (1462, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-08 17:54:45', '2026-05-08 17:54:45', '2026-05-08 17:54:45');
INSERT INTO `sys_job_log` VALUES (1463, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:50', '2026-05-08 17:54:50', '2026-05-08 17:54:50');
INSERT INTO `sys_job_log` VALUES (1464, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:54:55', '2026-05-08 17:54:55', '2026-05-08 17:54:55');
INSERT INTO `sys_job_log` VALUES (1465, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:55:00', '2026-05-08 17:55:00', '2026-05-08 17:55:00');
INSERT INTO `sys_job_log` VALUES (1466, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:55:05', '2026-05-08 17:55:05', '2026-05-08 17:55:05');
INSERT INTO `sys_job_log` VALUES (1467, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:55:10', '2026-05-08 17:55:10', '2026-05-08 17:55:10');
INSERT INTO `sys_job_log` VALUES (1468, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:55:15', '2026-05-08 17:55:15', '2026-05-08 17:55:15');
INSERT INTO `sys_job_log` VALUES (1469, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:55:20', '2026-05-08 17:55:20', '2026-05-08 17:55:20');
INSERT INTO `sys_job_log` VALUES (1470, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:55:25', '2026-05-08 17:55:25', '2026-05-08 17:55:25');
INSERT INTO `sys_job_log` VALUES (1471, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:55:30', '2026-05-08 17:55:30', '2026-05-08 17:55:30');
INSERT INTO `sys_job_log` VALUES (1472, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:55:35', '2026-05-08 17:55:35', '2026-05-08 17:55:35');
INSERT INTO `sys_job_log` VALUES (1473, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-08 17:55:40', '2026-05-08 17:55:40', '2026-05-08 17:55:40');
INSERT INTO `sys_job_log` VALUES (1474, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-09 08:33:52', '2026-05-09 08:33:52', '2026-05-09 08:33:52');
INSERT INTO `sys_job_log` VALUES (1475, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:33:55', '2026-05-09 08:33:55', '2026-05-09 08:33:55');
INSERT INTO `sys_job_log` VALUES (1476, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:00', '2026-05-09 08:34:00', '2026-05-09 08:34:00');
INSERT INTO `sys_job_log` VALUES (1477, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:05', '2026-05-09 08:34:05', '2026-05-09 08:34:05');
INSERT INTO `sys_job_log` VALUES (1478, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:10', '2026-05-09 08:34:10', '2026-05-09 08:34:10');
INSERT INTO `sys_job_log` VALUES (1479, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:15', '2026-05-09 08:34:15', '2026-05-09 08:34:15');
INSERT INTO `sys_job_log` VALUES (1480, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:20', '2026-05-09 08:34:20', '2026-05-09 08:34:20');
INSERT INTO `sys_job_log` VALUES (1481, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:25', '2026-05-09 08:34:25', '2026-05-09 08:34:25');
INSERT INTO `sys_job_log` VALUES (1482, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:30', '2026-05-09 08:34:30', '2026-05-09 08:34:30');
INSERT INTO `sys_job_log` VALUES (1483, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:35', '2026-05-09 08:34:35', '2026-05-09 08:34:35');
INSERT INTO `sys_job_log` VALUES (1484, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:40', '2026-05-09 08:34:40', '2026-05-09 08:34:40');
INSERT INTO `sys_job_log` VALUES (1485, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:45', '2026-05-09 08:34:45', '2026-05-09 08:34:45');
INSERT INTO `sys_job_log` VALUES (1486, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:50', '2026-05-09 08:34:50', '2026-05-09 08:34:50');
INSERT INTO `sys_job_log` VALUES (1487, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:34:55', '2026-05-09 08:34:55', '2026-05-09 08:34:55');
INSERT INTO `sys_job_log` VALUES (1488, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:35:00', '2026-05-09 08:35:00', '2026-05-09 08:35:00');
INSERT INTO `sys_job_log` VALUES (1489, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:35:05', '2026-05-09 08:35:05', '2026-05-09 08:35:05');
INSERT INTO `sys_job_log` VALUES (1490, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:35:10', '2026-05-09 08:35:10', '2026-05-09 08:35:10');
INSERT INTO `sys_job_log` VALUES (1491, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:35:15', '2026-05-09 08:35:15', '2026-05-09 08:35:15');
INSERT INTO `sys_job_log` VALUES (1492, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:35:20', '2026-05-09 08:35:20', '2026-05-09 08:35:20');
INSERT INTO `sys_job_log` VALUES (1493, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:35:25', '2026-05-09 08:35:25', '2026-05-09 08:35:25');
INSERT INTO `sys_job_log` VALUES (1494, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:35:30', '2026-05-09 08:35:30', '2026-05-09 08:35:30');
INSERT INTO `sys_job_log` VALUES (1495, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:35:35', '2026-05-09 08:35:35', '2026-05-09 08:35:35');
INSERT INTO `sys_job_log` VALUES (1496, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:35:40', '2026-05-09 08:35:40', '2026-05-09 08:35:40');
INSERT INTO `sys_job_log` VALUES (1497, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:35:45', '2026-05-09 08:35:45', '2026-05-09 08:35:45');
INSERT INTO `sys_job_log` VALUES (1498, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:35:50', '2026-05-09 08:35:50', '2026-05-09 08:35:50');
INSERT INTO `sys_job_log` VALUES (1499, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:35:55', '2026-05-09 08:35:55', '2026-05-09 08:35:55');
INSERT INTO `sys_job_log` VALUES (1500, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:36:00', '2026-05-09 08:36:00', '2026-05-09 08:36:00');
INSERT INTO `sys_job_log` VALUES (1501, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:36:05', '2026-05-09 08:36:05', '2026-05-09 08:36:05');
INSERT INTO `sys_job_log` VALUES (1502, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:36:10', '2026-05-09 08:36:10', '2026-05-09 08:36:10');
INSERT INTO `sys_job_log` VALUES (1503, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:36:15', '2026-05-09 08:36:15', '2026-05-09 08:36:15');
INSERT INTO `sys_job_log` VALUES (1504, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:36:20', '2026-05-09 08:36:20', '2026-05-09 08:36:20');
INSERT INTO `sys_job_log` VALUES (1505, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:36:25', '2026-05-09 08:36:25', '2026-05-09 08:36:25');
INSERT INTO `sys_job_log` VALUES (1506, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:36:30', '2026-05-09 08:36:30', '2026-05-09 08:36:30');
INSERT INTO `sys_job_log` VALUES (1507, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:36:35', '2026-05-09 08:36:35', '2026-05-09 08:36:35');
INSERT INTO `sys_job_log` VALUES (1508, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:36:40', '2026-05-09 08:36:40', '2026-05-09 08:36:40');
INSERT INTO `sys_job_log` VALUES (1509, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:36:45', '2026-05-09 08:36:45', '2026-05-09 08:36:45');
INSERT INTO `sys_job_log` VALUES (1510, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:36:50', '2026-05-09 08:36:50', '2026-05-09 08:36:50');
INSERT INTO `sys_job_log` VALUES (1511, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:36:55', '2026-05-09 08:36:55', '2026-05-09 08:36:55');
INSERT INTO `sys_job_log` VALUES (1512, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:37:00', '2026-05-09 08:37:00', '2026-05-09 08:37:00');
INSERT INTO `sys_job_log` VALUES (1513, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:37:05', '2026-05-09 08:37:05', '2026-05-09 08:37:05');
INSERT INTO `sys_job_log` VALUES (1514, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:37:10', '2026-05-09 08:37:10', '2026-05-09 08:37:10');
INSERT INTO `sys_job_log` VALUES (1515, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:37:15', '2026-05-09 08:37:15', '2026-05-09 08:37:15');
INSERT INTO `sys_job_log` VALUES (1516, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:37:20', '2026-05-09 08:37:20', '2026-05-09 08:37:20');
INSERT INTO `sys_job_log` VALUES (1517, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:37:25', '2026-05-09 08:37:25', '2026-05-09 08:37:25');
INSERT INTO `sys_job_log` VALUES (1518, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:37:30', '2026-05-09 08:37:30', '2026-05-09 08:37:30');
INSERT INTO `sys_job_log` VALUES (1519, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:37:35', '2026-05-09 08:37:35', '2026-05-09 08:37:35');
INSERT INTO `sys_job_log` VALUES (1520, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:37:40', '2026-05-09 08:37:40', '2026-05-09 08:37:40');
INSERT INTO `sys_job_log` VALUES (1521, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:37:45', '2026-05-09 08:37:45', '2026-05-09 08:37:45');
INSERT INTO `sys_job_log` VALUES (1522, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:37:50', '2026-05-09 08:37:50', '2026-05-09 08:37:50');
INSERT INTO `sys_job_log` VALUES (1523, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:37:55', '2026-05-09 08:37:55', '2026-05-09 08:37:55');
INSERT INTO `sys_job_log` VALUES (1524, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:38:00', '2026-05-09 08:38:00', '2026-05-09 08:38:00');
INSERT INTO `sys_job_log` VALUES (1525, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:38:05', '2026-05-09 08:38:05', '2026-05-09 08:38:05');
INSERT INTO `sys_job_log` VALUES (1526, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:38:10', '2026-05-09 08:38:10', '2026-05-09 08:38:10');
INSERT INTO `sys_job_log` VALUES (1527, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:38:15', '2026-05-09 08:38:15', '2026-05-09 08:38:15');
INSERT INTO `sys_job_log` VALUES (1528, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:38:20', '2026-05-09 08:38:20', '2026-05-09 08:38:20');
INSERT INTO `sys_job_log` VALUES (1529, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:38:25', '2026-05-09 08:38:25', '2026-05-09 08:38:25');
INSERT INTO `sys_job_log` VALUES (1530, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:38:30', '2026-05-09 08:38:30', '2026-05-09 08:38:30');
INSERT INTO `sys_job_log` VALUES (1531, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:38:35', '2026-05-09 08:38:35', '2026-05-09 08:38:35');
INSERT INTO `sys_job_log` VALUES (1532, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：3毫秒', '0', '', '2026-05-09 08:38:40', '2026-05-09 08:38:40', '2026-05-09 08:38:40');
INSERT INTO `sys_job_log` VALUES (1533, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:38:45', '2026-05-09 08:38:45', '2026-05-09 08:38:45');
INSERT INTO `sys_job_log` VALUES (1534, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:38:50', '2026-05-09 08:38:50', '2026-05-09 08:38:50');
INSERT INTO `sys_job_log` VALUES (1535, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:38:55', '2026-05-09 08:38:55', '2026-05-09 08:38:55');
INSERT INTO `sys_job_log` VALUES (1536, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:39:00', '2026-05-09 08:39:00', '2026-05-09 08:39:00');
INSERT INTO `sys_job_log` VALUES (1537, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:39:05', '2026-05-09 08:39:05', '2026-05-09 08:39:05');
INSERT INTO `sys_job_log` VALUES (1538, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:39:10', '2026-05-09 08:39:10', '2026-05-09 08:39:10');
INSERT INTO `sys_job_log` VALUES (1539, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:39:15', '2026-05-09 08:39:15', '2026-05-09 08:39:15');
INSERT INTO `sys_job_log` VALUES (1540, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:39:20', '2026-05-09 08:39:20', '2026-05-09 08:39:20');
INSERT INTO `sys_job_log` VALUES (1541, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:39:25', '2026-05-09 08:39:25', '2026-05-09 08:39:25');
INSERT INTO `sys_job_log` VALUES (1542, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:39:30', '2026-05-09 08:39:30', '2026-05-09 08:39:30');
INSERT INTO `sys_job_log` VALUES (1543, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:39:35', '2026-05-09 08:39:35', '2026-05-09 08:39:35');
INSERT INTO `sys_job_log` VALUES (1544, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:39:40', '2026-05-09 08:39:40', '2026-05-09 08:39:40');
INSERT INTO `sys_job_log` VALUES (1545, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:39:45', '2026-05-09 08:39:45', '2026-05-09 08:39:45');
INSERT INTO `sys_job_log` VALUES (1546, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:39:50', '2026-05-09 08:39:50', '2026-05-09 08:39:50');
INSERT INTO `sys_job_log` VALUES (1547, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:39:55', '2026-05-09 08:39:55', '2026-05-09 08:39:55');
INSERT INTO `sys_job_log` VALUES (1548, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:40:00', '2026-05-09 08:40:00', '2026-05-09 08:40:00');
INSERT INTO `sys_job_log` VALUES (1549, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:05', '2026-05-09 08:40:05', '2026-05-09 08:40:05');
INSERT INTO `sys_job_log` VALUES (1550, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:10', '2026-05-09 08:40:10', '2026-05-09 08:40:10');
INSERT INTO `sys_job_log` VALUES (1551, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:15', '2026-05-09 08:40:15', '2026-05-09 08:40:15');
INSERT INTO `sys_job_log` VALUES (1552, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:20', '2026-05-09 08:40:20', '2026-05-09 08:40:20');
INSERT INTO `sys_job_log` VALUES (1553, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:25', '2026-05-09 08:40:25', '2026-05-09 08:40:25');
INSERT INTO `sys_job_log` VALUES (1554, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:30', '2026-05-09 08:40:30', '2026-05-09 08:40:30');
INSERT INTO `sys_job_log` VALUES (1555, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:35', '2026-05-09 08:40:35', '2026-05-09 08:40:35');
INSERT INTO `sys_job_log` VALUES (1556, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:40', '2026-05-09 08:40:40', '2026-05-09 08:40:40');
INSERT INTO `sys_job_log` VALUES (1557, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:45', '2026-05-09 08:40:45', '2026-05-09 08:40:45');
INSERT INTO `sys_job_log` VALUES (1558, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:50', '2026-05-09 08:40:50', '2026-05-09 08:40:50');
INSERT INTO `sys_job_log` VALUES (1559, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:40:55', '2026-05-09 08:40:55', '2026-05-09 08:40:55');
INSERT INTO `sys_job_log` VALUES (1560, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:41:00', '2026-05-09 08:41:00', '2026-05-09 08:41:00');
INSERT INTO `sys_job_log` VALUES (1561, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:41:05', '2026-05-09 08:41:05', '2026-05-09 08:41:05');
INSERT INTO `sys_job_log` VALUES (1562, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:41:10', '2026-05-09 08:41:10', '2026-05-09 08:41:10');
INSERT INTO `sys_job_log` VALUES (1563, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:41:15', '2026-05-09 08:41:15', '2026-05-09 08:41:15');
INSERT INTO `sys_job_log` VALUES (1564, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:41:20', '2026-05-09 08:41:20', '2026-05-09 08:41:20');
INSERT INTO `sys_job_log` VALUES (1565, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:41:25', '2026-05-09 08:41:25', '2026-05-09 08:41:25');
INSERT INTO `sys_job_log` VALUES (1566, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:41:30', '2026-05-09 08:41:30', '2026-05-09 08:41:30');
INSERT INTO `sys_job_log` VALUES (1567, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:41:35', '2026-05-09 08:41:35', '2026-05-09 08:41:35');
INSERT INTO `sys_job_log` VALUES (1568, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:41:40', '2026-05-09 08:41:40', '2026-05-09 08:41:40');
INSERT INTO `sys_job_log` VALUES (1569, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:41:45', '2026-05-09 08:41:45', '2026-05-09 08:41:45');
INSERT INTO `sys_job_log` VALUES (1570, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:41:50', '2026-05-09 08:41:50', '2026-05-09 08:41:50');
INSERT INTO `sys_job_log` VALUES (1571, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:41:55', '2026-05-09 08:41:55', '2026-05-09 08:41:55');
INSERT INTO `sys_job_log` VALUES (1572, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:00', '2026-05-09 08:42:00', '2026-05-09 08:42:00');
INSERT INTO `sys_job_log` VALUES (1573, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:05', '2026-05-09 08:42:05', '2026-05-09 08:42:05');
INSERT INTO `sys_job_log` VALUES (1574, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:10', '2026-05-09 08:42:10', '2026-05-09 08:42:10');
INSERT INTO `sys_job_log` VALUES (1575, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:15', '2026-05-09 08:42:15', '2026-05-09 08:42:15');
INSERT INTO `sys_job_log` VALUES (1576, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:42:20', '2026-05-09 08:42:20', '2026-05-09 08:42:20');
INSERT INTO `sys_job_log` VALUES (1577, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:25', '2026-05-09 08:42:25', '2026-05-09 08:42:25');
INSERT INTO `sys_job_log` VALUES (1578, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:30', '2026-05-09 08:42:30', '2026-05-09 08:42:30');
INSERT INTO `sys_job_log` VALUES (1579, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:35', '2026-05-09 08:42:35', '2026-05-09 08:42:35');
INSERT INTO `sys_job_log` VALUES (1580, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:40', '2026-05-09 08:42:40', '2026-05-09 08:42:40');
INSERT INTO `sys_job_log` VALUES (1581, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:45', '2026-05-09 08:42:45', '2026-05-09 08:42:45');
INSERT INTO `sys_job_log` VALUES (1582, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:42:50', '2026-05-09 08:42:50', '2026-05-09 08:42:50');
INSERT INTO `sys_job_log` VALUES (1583, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:42:55', '2026-05-09 08:42:55', '2026-05-09 08:42:55');
INSERT INTO `sys_job_log` VALUES (1584, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:00', '2026-05-09 08:43:00', '2026-05-09 08:43:00');
INSERT INTO `sys_job_log` VALUES (1585, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:05', '2026-05-09 08:43:05', '2026-05-09 08:43:05');
INSERT INTO `sys_job_log` VALUES (1586, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:10', '2026-05-09 08:43:10', '2026-05-09 08:43:10');
INSERT INTO `sys_job_log` VALUES (1587, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:15', '2026-05-09 08:43:15', '2026-05-09 08:43:15');
INSERT INTO `sys_job_log` VALUES (1588, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:20', '2026-05-09 08:43:20', '2026-05-09 08:43:20');
INSERT INTO `sys_job_log` VALUES (1589, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:25', '2026-05-09 08:43:25', '2026-05-09 08:43:25');
INSERT INTO `sys_job_log` VALUES (1590, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:30', '2026-05-09 08:43:30', '2026-05-09 08:43:30');
INSERT INTO `sys_job_log` VALUES (1591, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:35', '2026-05-09 08:43:35', '2026-05-09 08:43:35');
INSERT INTO `sys_job_log` VALUES (1592, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:40', '2026-05-09 08:43:40', '2026-05-09 08:43:40');
INSERT INTO `sys_job_log` VALUES (1593, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:45', '2026-05-09 08:43:45', '2026-05-09 08:43:45');
INSERT INTO `sys_job_log` VALUES (1594, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:43:50', '2026-05-09 08:43:50', '2026-05-09 08:43:50');
INSERT INTO `sys_job_log` VALUES (1595, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:43:55', '2026-05-09 08:43:55', '2026-05-09 08:43:55');
INSERT INTO `sys_job_log` VALUES (1596, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:44:00', '2026-05-09 08:44:00', '2026-05-09 08:44:00');
INSERT INTO `sys_job_log` VALUES (1597, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:44:05', '2026-05-09 08:44:05', '2026-05-09 08:44:05');
INSERT INTO `sys_job_log` VALUES (1598, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:44:10', '2026-05-09 08:44:10', '2026-05-09 08:44:10');
INSERT INTO `sys_job_log` VALUES (1599, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:44:15', '2026-05-09 08:44:15', '2026-05-09 08:44:15');
INSERT INTO `sys_job_log` VALUES (1600, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:44:20', '2026-05-09 08:44:20', '2026-05-09 08:44:20');
INSERT INTO `sys_job_log` VALUES (1601, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:44:25', '2026-05-09 08:44:25', '2026-05-09 08:44:25');
INSERT INTO `sys_job_log` VALUES (1602, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:44:30', '2026-05-09 08:44:30', '2026-05-09 08:44:30');
INSERT INTO `sys_job_log` VALUES (1603, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:44:35', '2026-05-09 08:44:35', '2026-05-09 08:44:35');
INSERT INTO `sys_job_log` VALUES (1604, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:44:40', '2026-05-09 08:44:40', '2026-05-09 08:44:40');
INSERT INTO `sys_job_log` VALUES (1605, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:44:45', '2026-05-09 08:44:45', '2026-05-09 08:44:45');
INSERT INTO `sys_job_log` VALUES (1606, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:44:50', '2026-05-09 08:44:50', '2026-05-09 08:44:50');
INSERT INTO `sys_job_log` VALUES (1607, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:44:55', '2026-05-09 08:44:55', '2026-05-09 08:44:55');
INSERT INTO `sys_job_log` VALUES (1608, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:45:00', '2026-05-09 08:45:00', '2026-05-09 08:45:00');
INSERT INTO `sys_job_log` VALUES (1609, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:45:05', '2026-05-09 08:45:05', '2026-05-09 08:45:05');
INSERT INTO `sys_job_log` VALUES (1610, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:45:10', '2026-05-09 08:45:10', '2026-05-09 08:45:10');
INSERT INTO `sys_job_log` VALUES (1611, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:45:15', '2026-05-09 08:45:15', '2026-05-09 08:45:15');
INSERT INTO `sys_job_log` VALUES (1612, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:45:20', '2026-05-09 08:45:20', '2026-05-09 08:45:20');
INSERT INTO `sys_job_log` VALUES (1613, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:45:25', '2026-05-09 08:45:25', '2026-05-09 08:45:25');
INSERT INTO `sys_job_log` VALUES (1614, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:45:30', '2026-05-09 08:45:30', '2026-05-09 08:45:30');
INSERT INTO `sys_job_log` VALUES (1615, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:45:35', '2026-05-09 08:45:35', '2026-05-09 08:45:35');
INSERT INTO `sys_job_log` VALUES (1616, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:45:40', '2026-05-09 08:45:40', '2026-05-09 08:45:40');
INSERT INTO `sys_job_log` VALUES (1617, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:45:45', '2026-05-09 08:45:45', '2026-05-09 08:45:45');
INSERT INTO `sys_job_log` VALUES (1618, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:45:50', '2026-05-09 08:45:50', '2026-05-09 08:45:50');
INSERT INTO `sys_job_log` VALUES (1619, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:45:55', '2026-05-09 08:45:55', '2026-05-09 08:45:55');
INSERT INTO `sys_job_log` VALUES (1620, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:46:00', '2026-05-09 08:46:00', '2026-05-09 08:46:00');
INSERT INTO `sys_job_log` VALUES (1621, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:46:05', '2026-05-09 08:46:05', '2026-05-09 08:46:05');
INSERT INTO `sys_job_log` VALUES (1622, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:46:10', '2026-05-09 08:46:10', '2026-05-09 08:46:10');
INSERT INTO `sys_job_log` VALUES (1623, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:46:15', '2026-05-09 08:46:15', '2026-05-09 08:46:15');
INSERT INTO `sys_job_log` VALUES (1624, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:46:20', '2026-05-09 08:46:20', '2026-05-09 08:46:20');
INSERT INTO `sys_job_log` VALUES (1625, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:46:25', '2026-05-09 08:46:25', '2026-05-09 08:46:25');
INSERT INTO `sys_job_log` VALUES (1626, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-09 08:46:30', '2026-05-09 08:46:30', '2026-05-09 08:46:30');
INSERT INTO `sys_job_log` VALUES (1627, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:46:35', '2026-05-09 08:46:35', '2026-05-09 08:46:35');
INSERT INTO `sys_job_log` VALUES (1628, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:46:40', '2026-05-09 08:46:40', '2026-05-09 08:46:40');
INSERT INTO `sys_job_log` VALUES (1629, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:46:45', '2026-05-09 08:46:45', '2026-05-09 08:46:45');
INSERT INTO `sys_job_log` VALUES (1630, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:46:50', '2026-05-09 08:46:50', '2026-05-09 08:46:50');
INSERT INTO `sys_job_log` VALUES (1631, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:46:55', '2026-05-09 08:46:55', '2026-05-09 08:46:55');
INSERT INTO `sys_job_log` VALUES (1632, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:00', '2026-05-09 08:47:00', '2026-05-09 08:47:00');
INSERT INTO `sys_job_log` VALUES (1633, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:47:05', '2026-05-09 08:47:05', '2026-05-09 08:47:05');
INSERT INTO `sys_job_log` VALUES (1634, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:10', '2026-05-09 08:47:10', '2026-05-09 08:47:10');
INSERT INTO `sys_job_log` VALUES (1635, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:15', '2026-05-09 08:47:15', '2026-05-09 08:47:15');
INSERT INTO `sys_job_log` VALUES (1636, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:20', '2026-05-09 08:47:20', '2026-05-09 08:47:20');
INSERT INTO `sys_job_log` VALUES (1637, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:25', '2026-05-09 08:47:25', '2026-05-09 08:47:25');
INSERT INTO `sys_job_log` VALUES (1638, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:30', '2026-05-09 08:47:30', '2026-05-09 08:47:30');
INSERT INTO `sys_job_log` VALUES (1639, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:35', '2026-05-09 08:47:35', '2026-05-09 08:47:35');
INSERT INTO `sys_job_log` VALUES (1640, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:40', '2026-05-09 08:47:40', '2026-05-09 08:47:40');
INSERT INTO `sys_job_log` VALUES (1641, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:45', '2026-05-09 08:47:45', '2026-05-09 08:47:45');
INSERT INTO `sys_job_log` VALUES (1642, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:50', '2026-05-09 08:47:50', '2026-05-09 08:47:50');
INSERT INTO `sys_job_log` VALUES (1643, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:47:55', '2026-05-09 08:47:55', '2026-05-09 08:47:55');
INSERT INTO `sys_job_log` VALUES (1644, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:00', '2026-05-09 08:48:00', '2026-05-09 08:48:00');
INSERT INTO `sys_job_log` VALUES (1645, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:05', '2026-05-09 08:48:05', '2026-05-09 08:48:05');
INSERT INTO `sys_job_log` VALUES (1646, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:10', '2026-05-09 08:48:10', '2026-05-09 08:48:10');
INSERT INTO `sys_job_log` VALUES (1647, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:15', '2026-05-09 08:48:15', '2026-05-09 08:48:15');
INSERT INTO `sys_job_log` VALUES (1648, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:20', '2026-05-09 08:48:20', '2026-05-09 08:48:20');
INSERT INTO `sys_job_log` VALUES (1649, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:48:25', '2026-05-09 08:48:25', '2026-05-09 08:48:25');
INSERT INTO `sys_job_log` VALUES (1650, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:30', '2026-05-09 08:48:30', '2026-05-09 08:48:30');
INSERT INTO `sys_job_log` VALUES (1651, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:35', '2026-05-09 08:48:35', '2026-05-09 08:48:35');
INSERT INTO `sys_job_log` VALUES (1652, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:40', '2026-05-09 08:48:40', '2026-05-09 08:48:40');
INSERT INTO `sys_job_log` VALUES (1653, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:45', '2026-05-09 08:48:45', '2026-05-09 08:48:45');
INSERT INTO `sys_job_log` VALUES (1654, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:50', '2026-05-09 08:48:50', '2026-05-09 08:48:50');
INSERT INTO `sys_job_log` VALUES (1655, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:48:55', '2026-05-09 08:48:55', '2026-05-09 08:48:55');
INSERT INTO `sys_job_log` VALUES (1656, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:00', '2026-05-09 08:49:00', '2026-05-09 08:49:00');
INSERT INTO `sys_job_log` VALUES (1657, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:05', '2026-05-09 08:49:05', '2026-05-09 08:49:05');
INSERT INTO `sys_job_log` VALUES (1658, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:10', '2026-05-09 08:49:10', '2026-05-09 08:49:10');
INSERT INTO `sys_job_log` VALUES (1659, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:15', '2026-05-09 08:49:15', '2026-05-09 08:49:15');
INSERT INTO `sys_job_log` VALUES (1660, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:20', '2026-05-09 08:49:20', '2026-05-09 08:49:20');
INSERT INTO `sys_job_log` VALUES (1661, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:25', '2026-05-09 08:49:25', '2026-05-09 08:49:25');
INSERT INTO `sys_job_log` VALUES (1662, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:30', '2026-05-09 08:49:30', '2026-05-09 08:49:30');
INSERT INTO `sys_job_log` VALUES (1663, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:35', '2026-05-09 08:49:35', '2026-05-09 08:49:35');
INSERT INTO `sys_job_log` VALUES (1664, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:40', '2026-05-09 08:49:40', '2026-05-09 08:49:40');
INSERT INTO `sys_job_log` VALUES (1665, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:45', '2026-05-09 08:49:45', '2026-05-09 08:49:45');
INSERT INTO `sys_job_log` VALUES (1666, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:49:50', '2026-05-09 08:49:50', '2026-05-09 08:49:50');
INSERT INTO `sys_job_log` VALUES (1667, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:49:55', '2026-05-09 08:49:55', '2026-05-09 08:49:55');
INSERT INTO `sys_job_log` VALUES (1668, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:00', '2026-05-09 08:50:00', '2026-05-09 08:50:00');
INSERT INTO `sys_job_log` VALUES (1669, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:05', '2026-05-09 08:50:05', '2026-05-09 08:50:05');
INSERT INTO `sys_job_log` VALUES (1670, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:10', '2026-05-09 08:50:10', '2026-05-09 08:50:10');
INSERT INTO `sys_job_log` VALUES (1671, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:15', '2026-05-09 08:50:15', '2026-05-09 08:50:15');
INSERT INTO `sys_job_log` VALUES (1672, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:20', '2026-05-09 08:50:20', '2026-05-09 08:50:20');
INSERT INTO `sys_job_log` VALUES (1673, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:25', '2026-05-09 08:50:25', '2026-05-09 08:50:25');
INSERT INTO `sys_job_log` VALUES (1674, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:30', '2026-05-09 08:50:30', '2026-05-09 08:50:30');
INSERT INTO `sys_job_log` VALUES (1675, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:35', '2026-05-09 08:50:35', '2026-05-09 08:50:35');
INSERT INTO `sys_job_log` VALUES (1676, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:40', '2026-05-09 08:50:40', '2026-05-09 08:50:40');
INSERT INTO `sys_job_log` VALUES (1677, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:45', '2026-05-09 08:50:45', '2026-05-09 08:50:45');
INSERT INTO `sys_job_log` VALUES (1678, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:50', '2026-05-09 08:50:50', '2026-05-09 08:50:50');
INSERT INTO `sys_job_log` VALUES (1679, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:50:55', '2026-05-09 08:50:55', '2026-05-09 08:50:55');
INSERT INTO `sys_job_log` VALUES (1680, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:51:00', '2026-05-09 08:51:00', '2026-05-09 08:51:00');
INSERT INTO `sys_job_log` VALUES (1681, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:51:05', '2026-05-09 08:51:05', '2026-05-09 08:51:05');
INSERT INTO `sys_job_log` VALUES (1682, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:51:10', '2026-05-09 08:51:10', '2026-05-09 08:51:10');
INSERT INTO `sys_job_log` VALUES (1683, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:51:15', '2026-05-09 08:51:15', '2026-05-09 08:51:15');
INSERT INTO `sys_job_log` VALUES (1684, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:51:20', '2026-05-09 08:51:20', '2026-05-09 08:51:20');
INSERT INTO `sys_job_log` VALUES (1685, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:51:25', '2026-05-09 08:51:25', '2026-05-09 08:51:25');
INSERT INTO `sys_job_log` VALUES (1686, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:51:30', '2026-05-09 08:51:30', '2026-05-09 08:51:30');
INSERT INTO `sys_job_log` VALUES (1687, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:51:35', '2026-05-09 08:51:35', '2026-05-09 08:51:35');
INSERT INTO `sys_job_log` VALUES (1688, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:51:40', '2026-05-09 08:51:40', '2026-05-09 08:51:40');
INSERT INTO `sys_job_log` VALUES (1689, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:51:45', '2026-05-09 08:51:45', '2026-05-09 08:51:45');
INSERT INTO `sys_job_log` VALUES (1690, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:51:50', '2026-05-09 08:51:50', '2026-05-09 08:51:50');
INSERT INTO `sys_job_log` VALUES (1691, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:51:55', '2026-05-09 08:51:55', '2026-05-09 08:51:55');
INSERT INTO `sys_job_log` VALUES (1692, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:00', '2026-05-09 08:52:00', '2026-05-09 08:52:00');
INSERT INTO `sys_job_log` VALUES (1693, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:05', '2026-05-09 08:52:05', '2026-05-09 08:52:05');
INSERT INTO `sys_job_log` VALUES (1694, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:52:10', '2026-05-09 08:52:10', '2026-05-09 08:52:10');
INSERT INTO `sys_job_log` VALUES (1695, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:15', '2026-05-09 08:52:15', '2026-05-09 08:52:15');
INSERT INTO `sys_job_log` VALUES (1696, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:20', '2026-05-09 08:52:20', '2026-05-09 08:52:20');
INSERT INTO `sys_job_log` VALUES (1697, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:25', '2026-05-09 08:52:25', '2026-05-09 08:52:25');
INSERT INTO `sys_job_log` VALUES (1698, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:30', '2026-05-09 08:52:30', '2026-05-09 08:52:30');
INSERT INTO `sys_job_log` VALUES (1699, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:35', '2026-05-09 08:52:35', '2026-05-09 08:52:35');
INSERT INTO `sys_job_log` VALUES (1700, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:40', '2026-05-09 08:52:40', '2026-05-09 08:52:40');
INSERT INTO `sys_job_log` VALUES (1701, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:45', '2026-05-09 08:52:45', '2026-05-09 08:52:45');
INSERT INTO `sys_job_log` VALUES (1702, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:50', '2026-05-09 08:52:50', '2026-05-09 08:52:50');
INSERT INTO `sys_job_log` VALUES (1703, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:52:55', '2026-05-09 08:52:55', '2026-05-09 08:52:55');
INSERT INTO `sys_job_log` VALUES (1704, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:00', '2026-05-09 08:53:00', '2026-05-09 08:53:00');
INSERT INTO `sys_job_log` VALUES (1705, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:05', '2026-05-09 08:53:05', '2026-05-09 08:53:05');
INSERT INTO `sys_job_log` VALUES (1706, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:10', '2026-05-09 08:53:10', '2026-05-09 08:53:10');
INSERT INTO `sys_job_log` VALUES (1707, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:15', '2026-05-09 08:53:15', '2026-05-09 08:53:15');
INSERT INTO `sys_job_log` VALUES (1708, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:20', '2026-05-09 08:53:20', '2026-05-09 08:53:20');
INSERT INTO `sys_job_log` VALUES (1709, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:25', '2026-05-09 08:53:25', '2026-05-09 08:53:25');
INSERT INTO `sys_job_log` VALUES (1710, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:30', '2026-05-09 08:53:30', '2026-05-09 08:53:30');
INSERT INTO `sys_job_log` VALUES (1711, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:35', '2026-05-09 08:53:35', '2026-05-09 08:53:35');
INSERT INTO `sys_job_log` VALUES (1712, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:40', '2026-05-09 08:53:40', '2026-05-09 08:53:40');
INSERT INTO `sys_job_log` VALUES (1713, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:45', '2026-05-09 08:53:45', '2026-05-09 08:53:45');
INSERT INTO `sys_job_log` VALUES (1714, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:50', '2026-05-09 08:53:50', '2026-05-09 08:53:50');
INSERT INTO `sys_job_log` VALUES (1715, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:53:55', '2026-05-09 08:53:55', '2026-05-09 08:53:55');
INSERT INTO `sys_job_log` VALUES (1716, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:00', '2026-05-09 08:54:00', '2026-05-09 08:54:00');
INSERT INTO `sys_job_log` VALUES (1717, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:05', '2026-05-09 08:54:05', '2026-05-09 08:54:05');
INSERT INTO `sys_job_log` VALUES (1718, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:10', '2026-05-09 08:54:10', '2026-05-09 08:54:10');
INSERT INTO `sys_job_log` VALUES (1719, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:15', '2026-05-09 08:54:15', '2026-05-09 08:54:15');
INSERT INTO `sys_job_log` VALUES (1720, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:20', '2026-05-09 08:54:20', '2026-05-09 08:54:20');
INSERT INTO `sys_job_log` VALUES (1721, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:25', '2026-05-09 08:54:25', '2026-05-09 08:54:25');
INSERT INTO `sys_job_log` VALUES (1722, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:30', '2026-05-09 08:54:30', '2026-05-09 08:54:30');
INSERT INTO `sys_job_log` VALUES (1723, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:35', '2026-05-09 08:54:35', '2026-05-09 08:54:35');
INSERT INTO `sys_job_log` VALUES (1724, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:40', '2026-05-09 08:54:40', '2026-05-09 08:54:40');
INSERT INTO `sys_job_log` VALUES (1725, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:45', '2026-05-09 08:54:45', '2026-05-09 08:54:45');
INSERT INTO `sys_job_log` VALUES (1726, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:50', '2026-05-09 08:54:50', '2026-05-09 08:54:50');
INSERT INTO `sys_job_log` VALUES (1727, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:54:55', '2026-05-09 08:54:55', '2026-05-09 08:54:55');
INSERT INTO `sys_job_log` VALUES (1728, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:55:00', '2026-05-09 08:55:00', '2026-05-09 08:55:00');
INSERT INTO `sys_job_log` VALUES (1729, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:05', '2026-05-09 08:55:05', '2026-05-09 08:55:05');
INSERT INTO `sys_job_log` VALUES (1730, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:55:10', '2026-05-09 08:55:10', '2026-05-09 08:55:10');
INSERT INTO `sys_job_log` VALUES (1731, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:15', '2026-05-09 08:55:15', '2026-05-09 08:55:15');
INSERT INTO `sys_job_log` VALUES (1732, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:20', '2026-05-09 08:55:20', '2026-05-09 08:55:20');
INSERT INTO `sys_job_log` VALUES (1733, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:25', '2026-05-09 08:55:25', '2026-05-09 08:55:25');
INSERT INTO `sys_job_log` VALUES (1734, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:30', '2026-05-09 08:55:30', '2026-05-09 08:55:30');
INSERT INTO `sys_job_log` VALUES (1735, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:35', '2026-05-09 08:55:35', '2026-05-09 08:55:35');
INSERT INTO `sys_job_log` VALUES (1736, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:40', '2026-05-09 08:55:40', '2026-05-09 08:55:40');
INSERT INTO `sys_job_log` VALUES (1737, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:45', '2026-05-09 08:55:45', '2026-05-09 08:55:45');
INSERT INTO `sys_job_log` VALUES (1738, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:50', '2026-05-09 08:55:50', '2026-05-09 08:55:50');
INSERT INTO `sys_job_log` VALUES (1739, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:55:55', '2026-05-09 08:55:55', '2026-05-09 08:55:55');
INSERT INTO `sys_job_log` VALUES (1740, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:00', '2026-05-09 08:56:00', '2026-05-09 08:56:00');
INSERT INTO `sys_job_log` VALUES (1741, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:05', '2026-05-09 08:56:05', '2026-05-09 08:56:05');
INSERT INTO `sys_job_log` VALUES (1742, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:10', '2026-05-09 08:56:10', '2026-05-09 08:56:10');
INSERT INTO `sys_job_log` VALUES (1743, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:15', '2026-05-09 08:56:15', '2026-05-09 08:56:15');
INSERT INTO `sys_job_log` VALUES (1744, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:20', '2026-05-09 08:56:20', '2026-05-09 08:56:20');
INSERT INTO `sys_job_log` VALUES (1745, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:25', '2026-05-09 08:56:25', '2026-05-09 08:56:25');
INSERT INTO `sys_job_log` VALUES (1746, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:30', '2026-05-09 08:56:30', '2026-05-09 08:56:30');
INSERT INTO `sys_job_log` VALUES (1747, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:35', '2026-05-09 08:56:35', '2026-05-09 08:56:35');
INSERT INTO `sys_job_log` VALUES (1748, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:40', '2026-05-09 08:56:40', '2026-05-09 08:56:40');
INSERT INTO `sys_job_log` VALUES (1749, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:45', '2026-05-09 08:56:45', '2026-05-09 08:56:45');
INSERT INTO `sys_job_log` VALUES (1750, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:56:50', '2026-05-09 08:56:50', '2026-05-09 08:56:50');
INSERT INTO `sys_job_log` VALUES (1751, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:56:55', '2026-05-09 08:56:55', '2026-05-09 08:56:55');
INSERT INTO `sys_job_log` VALUES (1752, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:00', '2026-05-09 08:57:00', '2026-05-09 08:57:00');
INSERT INTO `sys_job_log` VALUES (1753, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:05', '2026-05-09 08:57:05', '2026-05-09 08:57:05');
INSERT INTO `sys_job_log` VALUES (1754, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:10', '2026-05-09 08:57:10', '2026-05-09 08:57:10');
INSERT INTO `sys_job_log` VALUES (1755, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:15', '2026-05-09 08:57:15', '2026-05-09 08:57:15');
INSERT INTO `sys_job_log` VALUES (1756, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:20', '2026-05-09 08:57:20', '2026-05-09 08:57:20');
INSERT INTO `sys_job_log` VALUES (1757, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:25', '2026-05-09 08:57:25', '2026-05-09 08:57:25');
INSERT INTO `sys_job_log` VALUES (1758, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:30', '2026-05-09 08:57:30', '2026-05-09 08:57:30');
INSERT INTO `sys_job_log` VALUES (1759, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:35', '2026-05-09 08:57:35', '2026-05-09 08:57:35');
INSERT INTO `sys_job_log` VALUES (1760, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:40', '2026-05-09 08:57:40', '2026-05-09 08:57:40');
INSERT INTO `sys_job_log` VALUES (1761, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:45', '2026-05-09 08:57:45', '2026-05-09 08:57:45');
INSERT INTO `sys_job_log` VALUES (1762, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:50', '2026-05-09 08:57:50', '2026-05-09 08:57:50');
INSERT INTO `sys_job_log` VALUES (1763, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:57:55', '2026-05-09 08:57:55', '2026-05-09 08:57:55');
INSERT INTO `sys_job_log` VALUES (1764, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:00', '2026-05-09 08:58:00', '2026-05-09 08:58:00');
INSERT INTO `sys_job_log` VALUES (1765, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:58:05', '2026-05-09 08:58:05', '2026-05-09 08:58:05');
INSERT INTO `sys_job_log` VALUES (1766, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:10', '2026-05-09 08:58:10', '2026-05-09 08:58:10');
INSERT INTO `sys_job_log` VALUES (1767, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:15', '2026-05-09 08:58:15', '2026-05-09 08:58:15');
INSERT INTO `sys_job_log` VALUES (1768, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:20', '2026-05-09 08:58:20', '2026-05-09 08:58:20');
INSERT INTO `sys_job_log` VALUES (1769, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:25', '2026-05-09 08:58:25', '2026-05-09 08:58:25');
INSERT INTO `sys_job_log` VALUES (1770, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:30', '2026-05-09 08:58:30', '2026-05-09 08:58:30');
INSERT INTO `sys_job_log` VALUES (1771, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:35', '2026-05-09 08:58:35', '2026-05-09 08:58:35');
INSERT INTO `sys_job_log` VALUES (1772, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:40', '2026-05-09 08:58:40', '2026-05-09 08:58:40');
INSERT INTO `sys_job_log` VALUES (1773, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:45', '2026-05-09 08:58:45', '2026-05-09 08:58:45');
INSERT INTO `sys_job_log` VALUES (1774, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:50', '2026-05-09 08:58:50', '2026-05-09 08:58:50');
INSERT INTO `sys_job_log` VALUES (1775, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:58:55', '2026-05-09 08:58:55', '2026-05-09 08:58:55');
INSERT INTO `sys_job_log` VALUES (1776, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:00', '2026-05-09 08:59:00', '2026-05-09 08:59:00');
INSERT INTO `sys_job_log` VALUES (1777, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:05', '2026-05-09 08:59:05', '2026-05-09 08:59:05');
INSERT INTO `sys_job_log` VALUES (1778, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:10', '2026-05-09 08:59:10', '2026-05-09 08:59:10');
INSERT INTO `sys_job_log` VALUES (1779, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:15', '2026-05-09 08:59:15', '2026-05-09 08:59:15');
INSERT INTO `sys_job_log` VALUES (1780, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:20', '2026-05-09 08:59:20', '2026-05-09 08:59:20');
INSERT INTO `sys_job_log` VALUES (1781, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:25', '2026-05-09 08:59:25', '2026-05-09 08:59:25');
INSERT INTO `sys_job_log` VALUES (1782, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:30', '2026-05-09 08:59:30', '2026-05-09 08:59:30');
INSERT INTO `sys_job_log` VALUES (1783, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:35', '2026-05-09 08:59:35', '2026-05-09 08:59:35');
INSERT INTO `sys_job_log` VALUES (1784, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:59:40', '2026-05-09 08:59:40', '2026-05-09 08:59:40');
INSERT INTO `sys_job_log` VALUES (1785, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:45', '2026-05-09 08:59:45', '2026-05-09 08:59:45');
INSERT INTO `sys_job_log` VALUES (1786, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 08:59:50', '2026-05-09 08:59:50', '2026-05-09 08:59:50');
INSERT INTO `sys_job_log` VALUES (1787, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 08:59:55', '2026-05-09 08:59:55', '2026-05-09 08:59:55');
INSERT INTO `sys_job_log` VALUES (1788, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:00', '2026-05-09 09:00:00', '2026-05-09 09:00:00');
INSERT INTO `sys_job_log` VALUES (1789, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:05', '2026-05-09 09:00:05', '2026-05-09 09:00:05');
INSERT INTO `sys_job_log` VALUES (1790, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:10', '2026-05-09 09:00:10', '2026-05-09 09:00:10');
INSERT INTO `sys_job_log` VALUES (1791, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:15', '2026-05-09 09:00:15', '2026-05-09 09:00:15');
INSERT INTO `sys_job_log` VALUES (1792, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:20', '2026-05-09 09:00:20', '2026-05-09 09:00:20');
INSERT INTO `sys_job_log` VALUES (1793, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:25', '2026-05-09 09:00:25', '2026-05-09 09:00:25');
INSERT INTO `sys_job_log` VALUES (1794, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:30', '2026-05-09 09:00:30', '2026-05-09 09:00:30');
INSERT INTO `sys_job_log` VALUES (1795, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:35', '2026-05-09 09:00:35', '2026-05-09 09:00:35');
INSERT INTO `sys_job_log` VALUES (1796, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:40', '2026-05-09 09:00:40', '2026-05-09 09:00:40');
INSERT INTO `sys_job_log` VALUES (1797, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:45', '2026-05-09 09:00:45', '2026-05-09 09:00:45');
INSERT INTO `sys_job_log` VALUES (1798, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:50', '2026-05-09 09:00:50', '2026-05-09 09:00:50');
INSERT INTO `sys_job_log` VALUES (1799, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:00:55', '2026-05-09 09:00:55', '2026-05-09 09:00:55');
INSERT INTO `sys_job_log` VALUES (1800, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:00', '2026-05-09 09:01:00', '2026-05-09 09:01:00');
INSERT INTO `sys_job_log` VALUES (1801, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:05', '2026-05-09 09:01:05', '2026-05-09 09:01:05');
INSERT INTO `sys_job_log` VALUES (1802, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:10', '2026-05-09 09:01:10', '2026-05-09 09:01:10');
INSERT INTO `sys_job_log` VALUES (1803, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:15', '2026-05-09 09:01:15', '2026-05-09 09:01:15');
INSERT INTO `sys_job_log` VALUES (1804, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:20', '2026-05-09 09:01:20', '2026-05-09 09:01:20');
INSERT INTO `sys_job_log` VALUES (1805, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:25', '2026-05-09 09:01:25', '2026-05-09 09:01:25');
INSERT INTO `sys_job_log` VALUES (1806, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:30', '2026-05-09 09:01:30', '2026-05-09 09:01:30');
INSERT INTO `sys_job_log` VALUES (1807, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:35', '2026-05-09 09:01:35', '2026-05-09 09:01:35');
INSERT INTO `sys_job_log` VALUES (1808, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:40', '2026-05-09 09:01:40', '2026-05-09 09:01:40');
INSERT INTO `sys_job_log` VALUES (1809, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:45', '2026-05-09 09:01:45', '2026-05-09 09:01:45');
INSERT INTO `sys_job_log` VALUES (1810, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:50', '2026-05-09 09:01:50', '2026-05-09 09:01:50');
INSERT INTO `sys_job_log` VALUES (1811, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:01:55', '2026-05-09 09:01:55', '2026-05-09 09:01:55');
INSERT INTO `sys_job_log` VALUES (1812, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:00', '2026-05-09 09:02:00', '2026-05-09 09:02:00');
INSERT INTO `sys_job_log` VALUES (1813, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:05', '2026-05-09 09:02:05', '2026-05-09 09:02:05');
INSERT INTO `sys_job_log` VALUES (1814, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:10', '2026-05-09 09:02:10', '2026-05-09 09:02:10');
INSERT INTO `sys_job_log` VALUES (1815, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:15', '2026-05-09 09:02:15', '2026-05-09 09:02:15');
INSERT INTO `sys_job_log` VALUES (1816, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:20', '2026-05-09 09:02:20', '2026-05-09 09:02:20');
INSERT INTO `sys_job_log` VALUES (1817, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:25', '2026-05-09 09:02:25', '2026-05-09 09:02:25');
INSERT INTO `sys_job_log` VALUES (1818, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:30', '2026-05-09 09:02:30', '2026-05-09 09:02:30');
INSERT INTO `sys_job_log` VALUES (1819, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:35', '2026-05-09 09:02:35', '2026-05-09 09:02:35');
INSERT INTO `sys_job_log` VALUES (1820, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:40', '2026-05-09 09:02:40', '2026-05-09 09:02:40');
INSERT INTO `sys_job_log` VALUES (1821, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:45', '2026-05-09 09:02:45', '2026-05-09 09:02:45');
INSERT INTO `sys_job_log` VALUES (1822, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:50', '2026-05-09 09:02:50', '2026-05-09 09:02:50');
INSERT INTO `sys_job_log` VALUES (1823, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:02:55', '2026-05-09 09:02:55', '2026-05-09 09:02:55');
INSERT INTO `sys_job_log` VALUES (1824, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:00', '2026-05-09 09:03:00', '2026-05-09 09:03:00');
INSERT INTO `sys_job_log` VALUES (1825, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:05', '2026-05-09 09:03:05', '2026-05-09 09:03:05');
INSERT INTO `sys_job_log` VALUES (1826, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:10', '2026-05-09 09:03:10', '2026-05-09 09:03:10');
INSERT INTO `sys_job_log` VALUES (1827, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:15', '2026-05-09 09:03:15', '2026-05-09 09:03:15');
INSERT INTO `sys_job_log` VALUES (1828, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:20', '2026-05-09 09:03:20', '2026-05-09 09:03:20');
INSERT INTO `sys_job_log` VALUES (1829, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:25', '2026-05-09 09:03:25', '2026-05-09 09:03:25');
INSERT INTO `sys_job_log` VALUES (1830, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:03:30', '2026-05-09 09:03:30', '2026-05-09 09:03:30');
INSERT INTO `sys_job_log` VALUES (1831, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:35', '2026-05-09 09:03:35', '2026-05-09 09:03:35');
INSERT INTO `sys_job_log` VALUES (1832, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:40', '2026-05-09 09:03:40', '2026-05-09 09:03:40');
INSERT INTO `sys_job_log` VALUES (1833, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:45', '2026-05-09 09:03:45', '2026-05-09 09:03:45');
INSERT INTO `sys_job_log` VALUES (1834, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:50', '2026-05-09 09:03:50', '2026-05-09 09:03:50');
INSERT INTO `sys_job_log` VALUES (1835, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:03:55', '2026-05-09 09:03:55', '2026-05-09 09:03:55');
INSERT INTO `sys_job_log` VALUES (1836, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:00', '2026-05-09 09:04:00', '2026-05-09 09:04:00');
INSERT INTO `sys_job_log` VALUES (1837, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:05', '2026-05-09 09:04:05', '2026-05-09 09:04:05');
INSERT INTO `sys_job_log` VALUES (1838, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:10', '2026-05-09 09:04:10', '2026-05-09 09:04:10');
INSERT INTO `sys_job_log` VALUES (1839, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:15', '2026-05-09 09:04:15', '2026-05-09 09:04:15');
INSERT INTO `sys_job_log` VALUES (1840, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:20', '2026-05-09 09:04:20', '2026-05-09 09:04:20');
INSERT INTO `sys_job_log` VALUES (1841, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:25', '2026-05-09 09:04:25', '2026-05-09 09:04:25');
INSERT INTO `sys_job_log` VALUES (1842, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:30', '2026-05-09 09:04:30', '2026-05-09 09:04:30');
INSERT INTO `sys_job_log` VALUES (1843, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:04:35', '2026-05-09 09:04:35', '2026-05-09 09:04:35');
INSERT INTO `sys_job_log` VALUES (1844, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:04:40', '2026-05-09 09:04:40', '2026-05-09 09:04:40');
INSERT INTO `sys_job_log` VALUES (1845, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:45', '2026-05-09 09:04:45', '2026-05-09 09:04:45');
INSERT INTO `sys_job_log` VALUES (1846, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:50', '2026-05-09 09:04:50', '2026-05-09 09:04:50');
INSERT INTO `sys_job_log` VALUES (1847, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:04:55', '2026-05-09 09:04:55', '2026-05-09 09:04:55');
INSERT INTO `sys_job_log` VALUES (1848, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:00', '2026-05-09 09:05:00', '2026-05-09 09:05:00');
INSERT INTO `sys_job_log` VALUES (1849, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:05', '2026-05-09 09:05:05', '2026-05-09 09:05:05');
INSERT INTO `sys_job_log` VALUES (1850, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:10', '2026-05-09 09:05:10', '2026-05-09 09:05:10');
INSERT INTO `sys_job_log` VALUES (1851, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:15', '2026-05-09 09:05:15', '2026-05-09 09:05:15');
INSERT INTO `sys_job_log` VALUES (1852, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:20', '2026-05-09 09:05:20', '2026-05-09 09:05:20');
INSERT INTO `sys_job_log` VALUES (1853, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:25', '2026-05-09 09:05:25', '2026-05-09 09:05:25');
INSERT INTO `sys_job_log` VALUES (1854, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:30', '2026-05-09 09:05:30', '2026-05-09 09:05:30');
INSERT INTO `sys_job_log` VALUES (1855, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:35', '2026-05-09 09:05:35', '2026-05-09 09:05:35');
INSERT INTO `sys_job_log` VALUES (1856, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:40', '2026-05-09 09:05:40', '2026-05-09 09:05:40');
INSERT INTO `sys_job_log` VALUES (1857, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:45', '2026-05-09 09:05:45', '2026-05-09 09:05:45');
INSERT INTO `sys_job_log` VALUES (1858, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:50', '2026-05-09 09:05:50', '2026-05-09 09:05:50');
INSERT INTO `sys_job_log` VALUES (1859, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:05:55', '2026-05-09 09:05:55', '2026-05-09 09:05:55');
INSERT INTO `sys_job_log` VALUES (1860, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:00', '2026-05-09 09:06:00', '2026-05-09 09:06:00');
INSERT INTO `sys_job_log` VALUES (1861, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:05', '2026-05-09 09:06:05', '2026-05-09 09:06:05');
INSERT INTO `sys_job_log` VALUES (1862, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:10', '2026-05-09 09:06:10', '2026-05-09 09:06:10');
INSERT INTO `sys_job_log` VALUES (1863, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:15', '2026-05-09 09:06:15', '2026-05-09 09:06:15');
INSERT INTO `sys_job_log` VALUES (1864, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:20', '2026-05-09 09:06:20', '2026-05-09 09:06:20');
INSERT INTO `sys_job_log` VALUES (1865, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:25', '2026-05-09 09:06:25', '2026-05-09 09:06:25');
INSERT INTO `sys_job_log` VALUES (1866, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:30', '2026-05-09 09:06:30', '2026-05-09 09:06:30');
INSERT INTO `sys_job_log` VALUES (1867, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:35', '2026-05-09 09:06:35', '2026-05-09 09:06:35');
INSERT INTO `sys_job_log` VALUES (1868, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:40', '2026-05-09 09:06:40', '2026-05-09 09:06:40');
INSERT INTO `sys_job_log` VALUES (1869, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:06:45', '2026-05-09 09:06:45', '2026-05-09 09:06:45');
INSERT INTO `sys_job_log` VALUES (1870, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:50', '2026-05-09 09:06:50', '2026-05-09 09:06:50');
INSERT INTO `sys_job_log` VALUES (1871, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:06:55', '2026-05-09 09:06:55', '2026-05-09 09:06:55');
INSERT INTO `sys_job_log` VALUES (1872, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:00', '2026-05-09 09:07:00', '2026-05-09 09:07:00');
INSERT INTO `sys_job_log` VALUES (1873, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:05', '2026-05-09 09:07:05', '2026-05-09 09:07:05');
INSERT INTO `sys_job_log` VALUES (1874, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:10', '2026-05-09 09:07:10', '2026-05-09 09:07:10');
INSERT INTO `sys_job_log` VALUES (1875, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:15', '2026-05-09 09:07:15', '2026-05-09 09:07:15');
INSERT INTO `sys_job_log` VALUES (1876, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:20', '2026-05-09 09:07:20', '2026-05-09 09:07:20');
INSERT INTO `sys_job_log` VALUES (1877, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:25', '2026-05-09 09:07:25', '2026-05-09 09:07:25');
INSERT INTO `sys_job_log` VALUES (1878, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:30', '2026-05-09 09:07:30', '2026-05-09 09:07:30');
INSERT INTO `sys_job_log` VALUES (1879, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:35', '2026-05-09 09:07:35', '2026-05-09 09:07:35');
INSERT INTO `sys_job_log` VALUES (1880, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:40', '2026-05-09 09:07:40', '2026-05-09 09:07:40');
INSERT INTO `sys_job_log` VALUES (1881, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:45', '2026-05-09 09:07:45', '2026-05-09 09:07:45');
INSERT INTO `sys_job_log` VALUES (1882, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:07:50', '2026-05-09 09:07:50', '2026-05-09 09:07:50');
INSERT INTO `sys_job_log` VALUES (1883, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:07:55', '2026-05-09 09:07:55', '2026-05-09 09:07:55');
INSERT INTO `sys_job_log` VALUES (1884, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:00', '2026-05-09 09:08:00', '2026-05-09 09:08:00');
INSERT INTO `sys_job_log` VALUES (1885, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:05', '2026-05-09 09:08:05', '2026-05-09 09:08:05');
INSERT INTO `sys_job_log` VALUES (1886, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:10', '2026-05-09 09:08:10', '2026-05-09 09:08:10');
INSERT INTO `sys_job_log` VALUES (1887, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:15', '2026-05-09 09:08:15', '2026-05-09 09:08:15');
INSERT INTO `sys_job_log` VALUES (1888, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:20', '2026-05-09 09:08:20', '2026-05-09 09:08:20');
INSERT INTO `sys_job_log` VALUES (1889, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:25', '2026-05-09 09:08:25', '2026-05-09 09:08:25');
INSERT INTO `sys_job_log` VALUES (1890, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:30', '2026-05-09 09:08:30', '2026-05-09 09:08:30');
INSERT INTO `sys_job_log` VALUES (1891, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:35', '2026-05-09 09:08:35', '2026-05-09 09:08:35');
INSERT INTO `sys_job_log` VALUES (1892, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:40', '2026-05-09 09:08:40', '2026-05-09 09:08:40');
INSERT INTO `sys_job_log` VALUES (1893, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:45', '2026-05-09 09:08:45', '2026-05-09 09:08:45');
INSERT INTO `sys_job_log` VALUES (1894, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:50', '2026-05-09 09:08:50', '2026-05-09 09:08:50');
INSERT INTO `sys_job_log` VALUES (1895, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:08:55', '2026-05-09 09:08:55', '2026-05-09 09:08:55');
INSERT INTO `sys_job_log` VALUES (1896, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:00', '2026-05-09 09:09:00', '2026-05-09 09:09:00');
INSERT INTO `sys_job_log` VALUES (1897, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:05', '2026-05-09 09:09:05', '2026-05-09 09:09:05');
INSERT INTO `sys_job_log` VALUES (1898, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:10', '2026-05-09 09:09:10', '2026-05-09 09:09:10');
INSERT INTO `sys_job_log` VALUES (1899, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:15', '2026-05-09 09:09:15', '2026-05-09 09:09:15');
INSERT INTO `sys_job_log` VALUES (1900, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:20', '2026-05-09 09:09:20', '2026-05-09 09:09:20');
INSERT INTO `sys_job_log` VALUES (1901, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:25', '2026-05-09 09:09:25', '2026-05-09 09:09:25');
INSERT INTO `sys_job_log` VALUES (1902, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:30', '2026-05-09 09:09:30', '2026-05-09 09:09:30');
INSERT INTO `sys_job_log` VALUES (1903, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:35', '2026-05-09 09:09:35', '2026-05-09 09:09:35');
INSERT INTO `sys_job_log` VALUES (1904, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:40', '2026-05-09 09:09:40', '2026-05-09 09:09:40');
INSERT INTO `sys_job_log` VALUES (1905, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:45', '2026-05-09 09:09:45', '2026-05-09 09:09:45');
INSERT INTO `sys_job_log` VALUES (1906, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:50', '2026-05-09 09:09:50', '2026-05-09 09:09:50');
INSERT INTO `sys_job_log` VALUES (1907, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:09:55', '2026-05-09 09:09:55', '2026-05-09 09:09:55');
INSERT INTO `sys_job_log` VALUES (1908, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:00', '2026-05-09 09:10:00', '2026-05-09 09:10:00');
INSERT INTO `sys_job_log` VALUES (1909, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:05', '2026-05-09 09:10:05', '2026-05-09 09:10:05');
INSERT INTO `sys_job_log` VALUES (1910, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:10', '2026-05-09 09:10:10', '2026-05-09 09:10:10');
INSERT INTO `sys_job_log` VALUES (1911, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:15', '2026-05-09 09:10:15', '2026-05-09 09:10:15');
INSERT INTO `sys_job_log` VALUES (1912, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:20', '2026-05-09 09:10:20', '2026-05-09 09:10:20');
INSERT INTO `sys_job_log` VALUES (1913, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:25', '2026-05-09 09:10:25', '2026-05-09 09:10:25');
INSERT INTO `sys_job_log` VALUES (1914, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:30', '2026-05-09 09:10:30', '2026-05-09 09:10:30');
INSERT INTO `sys_job_log` VALUES (1915, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:35', '2026-05-09 09:10:35', '2026-05-09 09:10:35');
INSERT INTO `sys_job_log` VALUES (1916, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:40', '2026-05-09 09:10:40', '2026-05-09 09:10:40');
INSERT INTO `sys_job_log` VALUES (1917, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:45', '2026-05-09 09:10:45', '2026-05-09 09:10:45');
INSERT INTO `sys_job_log` VALUES (1918, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:50', '2026-05-09 09:10:50', '2026-05-09 09:10:50');
INSERT INTO `sys_job_log` VALUES (1919, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:10:55', '2026-05-09 09:10:55', '2026-05-09 09:10:55');
INSERT INTO `sys_job_log` VALUES (1920, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:00', '2026-05-09 09:11:00', '2026-05-09 09:11:00');
INSERT INTO `sys_job_log` VALUES (1921, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:05', '2026-05-09 09:11:05', '2026-05-09 09:11:05');
INSERT INTO `sys_job_log` VALUES (1922, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:10', '2026-05-09 09:11:10', '2026-05-09 09:11:10');
INSERT INTO `sys_job_log` VALUES (1923, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:15', '2026-05-09 09:11:15', '2026-05-09 09:11:15');
INSERT INTO `sys_job_log` VALUES (1924, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:20', '2026-05-09 09:11:20', '2026-05-09 09:11:20');
INSERT INTO `sys_job_log` VALUES (1925, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:25', '2026-05-09 09:11:25', '2026-05-09 09:11:25');
INSERT INTO `sys_job_log` VALUES (1926, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:30', '2026-05-09 09:11:30', '2026-05-09 09:11:30');
INSERT INTO `sys_job_log` VALUES (1927, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:35', '2026-05-09 09:11:35', '2026-05-09 09:11:35');
INSERT INTO `sys_job_log` VALUES (1928, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:40', '2026-05-09 09:11:40', '2026-05-09 09:11:40');
INSERT INTO `sys_job_log` VALUES (1929, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:45', '2026-05-09 09:11:45', '2026-05-09 09:11:45');
INSERT INTO `sys_job_log` VALUES (1930, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:50', '2026-05-09 09:11:50', '2026-05-09 09:11:50');
INSERT INTO `sys_job_log` VALUES (1931, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:11:55', '2026-05-09 09:11:55', '2026-05-09 09:11:55');
INSERT INTO `sys_job_log` VALUES (1932, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:00', '2026-05-09 09:12:00', '2026-05-09 09:12:00');
INSERT INTO `sys_job_log` VALUES (1933, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:05', '2026-05-09 09:12:05', '2026-05-09 09:12:05');
INSERT INTO `sys_job_log` VALUES (1934, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:12:10', '2026-05-09 09:12:10', '2026-05-09 09:12:10');
INSERT INTO `sys_job_log` VALUES (1935, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:15', '2026-05-09 09:12:15', '2026-05-09 09:12:15');
INSERT INTO `sys_job_log` VALUES (1936, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:20', '2026-05-09 09:12:20', '2026-05-09 09:12:20');
INSERT INTO `sys_job_log` VALUES (1937, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:25', '2026-05-09 09:12:25', '2026-05-09 09:12:25');
INSERT INTO `sys_job_log` VALUES (1938, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:30', '2026-05-09 09:12:30', '2026-05-09 09:12:30');
INSERT INTO `sys_job_log` VALUES (1939, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:35', '2026-05-09 09:12:35', '2026-05-09 09:12:35');
INSERT INTO `sys_job_log` VALUES (1940, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:12:40', '2026-05-09 09:12:40', '2026-05-09 09:12:40');
INSERT INTO `sys_job_log` VALUES (1941, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:45', '2026-05-09 09:12:45', '2026-05-09 09:12:45');
INSERT INTO `sys_job_log` VALUES (1942, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:50', '2026-05-09 09:12:50', '2026-05-09 09:12:50');
INSERT INTO `sys_job_log` VALUES (1943, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:12:55', '2026-05-09 09:12:55', '2026-05-09 09:12:55');
INSERT INTO `sys_job_log` VALUES (1944, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:00', '2026-05-09 09:13:00', '2026-05-09 09:13:00');
INSERT INTO `sys_job_log` VALUES (1945, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:05', '2026-05-09 09:13:05', '2026-05-09 09:13:05');
INSERT INTO `sys_job_log` VALUES (1946, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:10', '2026-05-09 09:13:10', '2026-05-09 09:13:10');
INSERT INTO `sys_job_log` VALUES (1947, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:15', '2026-05-09 09:13:15', '2026-05-09 09:13:15');
INSERT INTO `sys_job_log` VALUES (1948, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:20', '2026-05-09 09:13:20', '2026-05-09 09:13:20');
INSERT INTO `sys_job_log` VALUES (1949, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:25', '2026-05-09 09:13:25', '2026-05-09 09:13:25');
INSERT INTO `sys_job_log` VALUES (1950, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:30', '2026-05-09 09:13:30', '2026-05-09 09:13:30');
INSERT INTO `sys_job_log` VALUES (1951, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:35', '2026-05-09 09:13:35', '2026-05-09 09:13:35');
INSERT INTO `sys_job_log` VALUES (1952, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:40', '2026-05-09 09:13:40', '2026-05-09 09:13:40');
INSERT INTO `sys_job_log` VALUES (1953, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:45', '2026-05-09 09:13:45', '2026-05-09 09:13:45');
INSERT INTO `sys_job_log` VALUES (1954, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:50', '2026-05-09 09:13:50', '2026-05-09 09:13:50');
INSERT INTO `sys_job_log` VALUES (1955, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:13:55', '2026-05-09 09:13:55', '2026-05-09 09:13:55');
INSERT INTO `sys_job_log` VALUES (1956, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:00', '2026-05-09 09:14:00', '2026-05-09 09:14:00');
INSERT INTO `sys_job_log` VALUES (1957, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:05', '2026-05-09 09:14:05', '2026-05-09 09:14:05');
INSERT INTO `sys_job_log` VALUES (1958, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:10', '2026-05-09 09:14:10', '2026-05-09 09:14:10');
INSERT INTO `sys_job_log` VALUES (1959, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:14:15', '2026-05-09 09:14:15', '2026-05-09 09:14:15');
INSERT INTO `sys_job_log` VALUES (1960, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:20', '2026-05-09 09:14:20', '2026-05-09 09:14:20');
INSERT INTO `sys_job_log` VALUES (1961, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:25', '2026-05-09 09:14:25', '2026-05-09 09:14:25');
INSERT INTO `sys_job_log` VALUES (1962, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:30', '2026-05-09 09:14:30', '2026-05-09 09:14:30');
INSERT INTO `sys_job_log` VALUES (1963, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:35', '2026-05-09 09:14:35', '2026-05-09 09:14:35');
INSERT INTO `sys_job_log` VALUES (1964, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:40', '2026-05-09 09:14:40', '2026-05-09 09:14:40');
INSERT INTO `sys_job_log` VALUES (1965, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:45', '2026-05-09 09:14:45', '2026-05-09 09:14:45');
INSERT INTO `sys_job_log` VALUES (1966, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:50', '2026-05-09 09:14:50', '2026-05-09 09:14:50');
INSERT INTO `sys_job_log` VALUES (1967, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:14:55', '2026-05-09 09:14:55', '2026-05-09 09:14:55');
INSERT INTO `sys_job_log` VALUES (1968, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:00', '2026-05-09 09:15:00', '2026-05-09 09:15:00');
INSERT INTO `sys_job_log` VALUES (1969, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:15:05', '2026-05-09 09:15:05', '2026-05-09 09:15:05');
INSERT INTO `sys_job_log` VALUES (1970, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:10', '2026-05-09 09:15:10', '2026-05-09 09:15:10');
INSERT INTO `sys_job_log` VALUES (1971, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:15', '2026-05-09 09:15:15', '2026-05-09 09:15:15');
INSERT INTO `sys_job_log` VALUES (1972, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:20', '2026-05-09 09:15:20', '2026-05-09 09:15:20');
INSERT INTO `sys_job_log` VALUES (1973, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:25', '2026-05-09 09:15:25', '2026-05-09 09:15:25');
INSERT INTO `sys_job_log` VALUES (1974, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:30', '2026-05-09 09:15:30', '2026-05-09 09:15:30');
INSERT INTO `sys_job_log` VALUES (1975, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:35', '2026-05-09 09:15:35', '2026-05-09 09:15:35');
INSERT INTO `sys_job_log` VALUES (1976, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:40', '2026-05-09 09:15:40', '2026-05-09 09:15:40');
INSERT INTO `sys_job_log` VALUES (1977, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:45', '2026-05-09 09:15:45', '2026-05-09 09:15:45');
INSERT INTO `sys_job_log` VALUES (1978, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:15:50', '2026-05-09 09:15:50', '2026-05-09 09:15:50');
INSERT INTO `sys_job_log` VALUES (1979, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:15:55', '2026-05-09 09:15:55', '2026-05-09 09:15:55');
INSERT INTO `sys_job_log` VALUES (1980, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:00', '2026-05-09 09:16:00', '2026-05-09 09:16:00');
INSERT INTO `sys_job_log` VALUES (1981, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:05', '2026-05-09 09:16:05', '2026-05-09 09:16:05');
INSERT INTO `sys_job_log` VALUES (1982, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:10', '2026-05-09 09:16:10', '2026-05-09 09:16:10');
INSERT INTO `sys_job_log` VALUES (1983, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:15', '2026-05-09 09:16:15', '2026-05-09 09:16:15');
INSERT INTO `sys_job_log` VALUES (1984, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:20', '2026-05-09 09:16:20', '2026-05-09 09:16:20');
INSERT INTO `sys_job_log` VALUES (1985, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:25', '2026-05-09 09:16:25', '2026-05-09 09:16:25');
INSERT INTO `sys_job_log` VALUES (1986, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:30', '2026-05-09 09:16:30', '2026-05-09 09:16:30');
INSERT INTO `sys_job_log` VALUES (1987, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:35', '2026-05-09 09:16:35', '2026-05-09 09:16:35');
INSERT INTO `sys_job_log` VALUES (1988, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:40', '2026-05-09 09:16:40', '2026-05-09 09:16:40');
INSERT INTO `sys_job_log` VALUES (1989, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:45', '2026-05-09 09:16:45', '2026-05-09 09:16:45');
INSERT INTO `sys_job_log` VALUES (1990, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:50', '2026-05-09 09:16:50', '2026-05-09 09:16:50');
INSERT INTO `sys_job_log` VALUES (1991, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:16:55', '2026-05-09 09:16:55', '2026-05-09 09:16:55');
INSERT INTO `sys_job_log` VALUES (1992, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:00', '2026-05-09 09:17:00', '2026-05-09 09:17:00');
INSERT INTO `sys_job_log` VALUES (1993, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:05', '2026-05-09 09:17:05', '2026-05-09 09:17:05');
INSERT INTO `sys_job_log` VALUES (1994, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:10', '2026-05-09 09:17:10', '2026-05-09 09:17:10');
INSERT INTO `sys_job_log` VALUES (1995, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:15', '2026-05-09 09:17:15', '2026-05-09 09:17:15');
INSERT INTO `sys_job_log` VALUES (1996, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:20', '2026-05-09 09:17:20', '2026-05-09 09:17:20');
INSERT INTO `sys_job_log` VALUES (1997, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:25', '2026-05-09 09:17:25', '2026-05-09 09:17:25');
INSERT INTO `sys_job_log` VALUES (1998, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:30', '2026-05-09 09:17:30', '2026-05-09 09:17:30');
INSERT INTO `sys_job_log` VALUES (1999, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:35', '2026-05-09 09:17:35', '2026-05-09 09:17:35');
INSERT INTO `sys_job_log` VALUES (2000, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:40', '2026-05-09 09:17:40', '2026-05-09 09:17:40');
INSERT INTO `sys_job_log` VALUES (2001, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:45', '2026-05-09 09:17:45', '2026-05-09 09:17:45');
INSERT INTO `sys_job_log` VALUES (2002, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:50', '2026-05-09 09:17:50', '2026-05-09 09:17:50');
INSERT INTO `sys_job_log` VALUES (2003, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:17:55', '2026-05-09 09:17:55', '2026-05-09 09:17:55');
INSERT INTO `sys_job_log` VALUES (2004, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:00', '2026-05-09 09:18:00', '2026-05-09 09:18:00');
INSERT INTO `sys_job_log` VALUES (2005, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:05', '2026-05-09 09:18:05', '2026-05-09 09:18:05');
INSERT INTO `sys_job_log` VALUES (2006, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:10', '2026-05-09 09:18:10', '2026-05-09 09:18:10');
INSERT INTO `sys_job_log` VALUES (2007, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:15', '2026-05-09 09:18:15', '2026-05-09 09:18:15');
INSERT INTO `sys_job_log` VALUES (2008, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:20', '2026-05-09 09:18:20', '2026-05-09 09:18:20');
INSERT INTO `sys_job_log` VALUES (2009, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:25', '2026-05-09 09:18:25', '2026-05-09 09:18:25');
INSERT INTO `sys_job_log` VALUES (2010, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:30', '2026-05-09 09:18:30', '2026-05-09 09:18:30');
INSERT INTO `sys_job_log` VALUES (2011, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:35', '2026-05-09 09:18:35', '2026-05-09 09:18:35');
INSERT INTO `sys_job_log` VALUES (2012, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:40', '2026-05-09 09:18:40', '2026-05-09 09:18:40');
INSERT INTO `sys_job_log` VALUES (2013, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:45', '2026-05-09 09:18:45', '2026-05-09 09:18:45');
INSERT INTO `sys_job_log` VALUES (2014, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:50', '2026-05-09 09:18:50', '2026-05-09 09:18:50');
INSERT INTO `sys_job_log` VALUES (2015, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:18:55', '2026-05-09 09:18:55', '2026-05-09 09:18:55');
INSERT INTO `sys_job_log` VALUES (2016, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:00', '2026-05-09 09:19:00', '2026-05-09 09:19:00');
INSERT INTO `sys_job_log` VALUES (2017, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:05', '2026-05-09 09:19:05', '2026-05-09 09:19:05');
INSERT INTO `sys_job_log` VALUES (2018, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:10', '2026-05-09 09:19:10', '2026-05-09 09:19:10');
INSERT INTO `sys_job_log` VALUES (2019, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:15', '2026-05-09 09:19:15', '2026-05-09 09:19:15');
INSERT INTO `sys_job_log` VALUES (2020, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:20', '2026-05-09 09:19:20', '2026-05-09 09:19:20');
INSERT INTO `sys_job_log` VALUES (2021, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:25', '2026-05-09 09:19:25', '2026-05-09 09:19:25');
INSERT INTO `sys_job_log` VALUES (2022, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:30', '2026-05-09 09:19:30', '2026-05-09 09:19:30');
INSERT INTO `sys_job_log` VALUES (2023, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:35', '2026-05-09 09:19:35', '2026-05-09 09:19:35');
INSERT INTO `sys_job_log` VALUES (2024, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:40', '2026-05-09 09:19:40', '2026-05-09 09:19:40');
INSERT INTO `sys_job_log` VALUES (2025, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:45', '2026-05-09 09:19:45', '2026-05-09 09:19:45');
INSERT INTO `sys_job_log` VALUES (2026, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:50', '2026-05-09 09:19:50', '2026-05-09 09:19:50');
INSERT INTO `sys_job_log` VALUES (2027, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:19:55', '2026-05-09 09:19:55', '2026-05-09 09:19:55');
INSERT INTO `sys_job_log` VALUES (2028, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:00', '2026-05-09 09:20:00', '2026-05-09 09:20:00');
INSERT INTO `sys_job_log` VALUES (2029, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:05', '2026-05-09 09:20:05', '2026-05-09 09:20:05');
INSERT INTO `sys_job_log` VALUES (2030, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:10', '2026-05-09 09:20:10', '2026-05-09 09:20:10');
INSERT INTO `sys_job_log` VALUES (2031, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:15', '2026-05-09 09:20:15', '2026-05-09 09:20:15');
INSERT INTO `sys_job_log` VALUES (2032, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:20', '2026-05-09 09:20:20', '2026-05-09 09:20:20');
INSERT INTO `sys_job_log` VALUES (2033, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:25', '2026-05-09 09:20:25', '2026-05-09 09:20:25');
INSERT INTO `sys_job_log` VALUES (2034, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:30', '2026-05-09 09:20:30', '2026-05-09 09:20:30');
INSERT INTO `sys_job_log` VALUES (2035, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:35', '2026-05-09 09:20:35', '2026-05-09 09:20:35');
INSERT INTO `sys_job_log` VALUES (2036, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:40', '2026-05-09 09:20:40', '2026-05-09 09:20:40');
INSERT INTO `sys_job_log` VALUES (2037, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:45', '2026-05-09 09:20:45', '2026-05-09 09:20:45');
INSERT INTO `sys_job_log` VALUES (2038, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:50', '2026-05-09 09:20:50', '2026-05-09 09:20:50');
INSERT INTO `sys_job_log` VALUES (2039, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:20:55', '2026-05-09 09:20:55', '2026-05-09 09:20:55');
INSERT INTO `sys_job_log` VALUES (2040, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:00', '2026-05-09 09:21:00', '2026-05-09 09:21:00');
INSERT INTO `sys_job_log` VALUES (2041, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:05', '2026-05-09 09:21:05', '2026-05-09 09:21:05');
INSERT INTO `sys_job_log` VALUES (2042, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:10', '2026-05-09 09:21:10', '2026-05-09 09:21:10');
INSERT INTO `sys_job_log` VALUES (2043, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:15', '2026-05-09 09:21:15', '2026-05-09 09:21:15');
INSERT INTO `sys_job_log` VALUES (2044, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:20', '2026-05-09 09:21:20', '2026-05-09 09:21:20');
INSERT INTO `sys_job_log` VALUES (2045, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:25', '2026-05-09 09:21:25', '2026-05-09 09:21:25');
INSERT INTO `sys_job_log` VALUES (2046, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:30', '2026-05-09 09:21:30', '2026-05-09 09:21:30');
INSERT INTO `sys_job_log` VALUES (2047, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:35', '2026-05-09 09:21:35', '2026-05-09 09:21:35');
INSERT INTO `sys_job_log` VALUES (2048, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:40', '2026-05-09 09:21:40', '2026-05-09 09:21:40');
INSERT INTO `sys_job_log` VALUES (2049, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:45', '2026-05-09 09:21:45', '2026-05-09 09:21:45');
INSERT INTO `sys_job_log` VALUES (2050, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:21:50', '2026-05-09 09:21:50', '2026-05-09 09:21:50');
INSERT INTO `sys_job_log` VALUES (2051, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:21:55', '2026-05-09 09:21:55', '2026-05-09 09:21:55');
INSERT INTO `sys_job_log` VALUES (2052, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:00', '2026-05-09 09:22:00', '2026-05-09 09:22:00');
INSERT INTO `sys_job_log` VALUES (2053, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:05', '2026-05-09 09:22:05', '2026-05-09 09:22:05');
INSERT INTO `sys_job_log` VALUES (2054, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:10', '2026-05-09 09:22:10', '2026-05-09 09:22:10');
INSERT INTO `sys_job_log` VALUES (2055, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:15', '2026-05-09 09:22:15', '2026-05-09 09:22:15');
INSERT INTO `sys_job_log` VALUES (2056, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:20', '2026-05-09 09:22:20', '2026-05-09 09:22:20');
INSERT INTO `sys_job_log` VALUES (2057, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:25', '2026-05-09 09:22:25', '2026-05-09 09:22:25');
INSERT INTO `sys_job_log` VALUES (2058, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:30', '2026-05-09 09:22:30', '2026-05-09 09:22:30');
INSERT INTO `sys_job_log` VALUES (2059, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:35', '2026-05-09 09:22:35', '2026-05-09 09:22:35');
INSERT INTO `sys_job_log` VALUES (2060, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:40', '2026-05-09 09:22:40', '2026-05-09 09:22:40');
INSERT INTO `sys_job_log` VALUES (2061, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:45', '2026-05-09 09:22:45', '2026-05-09 09:22:45');
INSERT INTO `sys_job_log` VALUES (2062, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:50', '2026-05-09 09:22:50', '2026-05-09 09:22:50');
INSERT INTO `sys_job_log` VALUES (2063, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:22:55', '2026-05-09 09:22:55', '2026-05-09 09:22:55');
INSERT INTO `sys_job_log` VALUES (2064, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:23:00', '2026-05-09 09:23:00', '2026-05-09 09:23:00');
INSERT INTO `sys_job_log` VALUES (2065, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:23:05', '2026-05-09 09:23:05', '2026-05-09 09:23:05');
INSERT INTO `sys_job_log` VALUES (2066, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-09 09:24:15', '2026-05-09 09:24:15', '2026-05-09 09:24:15');
INSERT INTO `sys_job_log` VALUES (2067, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:24:20', '2026-05-09 09:24:20', '2026-05-09 09:24:20');
INSERT INTO `sys_job_log` VALUES (2068, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:24:25', '2026-05-09 09:24:25', '2026-05-09 09:24:25');
INSERT INTO `sys_job_log` VALUES (2069, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:24:30', '2026-05-09 09:24:30', '2026-05-09 09:24:30');
INSERT INTO `sys_job_log` VALUES (2070, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:24:35', '2026-05-09 09:24:35', '2026-05-09 09:24:35');
INSERT INTO `sys_job_log` VALUES (2071, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:24:40', '2026-05-09 09:24:40', '2026-05-09 09:24:40');
INSERT INTO `sys_job_log` VALUES (2072, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:24:45', '2026-05-09 09:24:45', '2026-05-09 09:24:45');
INSERT INTO `sys_job_log` VALUES (2073, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:25:10', '2026-05-09 09:25:10', '2026-05-09 09:25:10');
INSERT INTO `sys_job_log` VALUES (2074, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:25:15', '2026-05-09 09:25:15', '2026-05-09 09:25:15');
INSERT INTO `sys_job_log` VALUES (2075, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:25:20', '2026-05-09 09:25:20', '2026-05-09 09:25:20');
INSERT INTO `sys_job_log` VALUES (2076, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:25:25', '2026-05-09 09:25:25', '2026-05-09 09:25:25');
INSERT INTO `sys_job_log` VALUES (2077, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:25:30', '2026-05-09 09:25:30', '2026-05-09 09:25:30');
INSERT INTO `sys_job_log` VALUES (2078, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:25:35', '2026-05-09 09:25:35', '2026-05-09 09:25:35');
INSERT INTO `sys_job_log` VALUES (2079, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:25:40', '2026-05-09 09:25:40', '2026-05-09 09:25:40');
INSERT INTO `sys_job_log` VALUES (2080, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:25:45', '2026-05-09 09:25:45', '2026-05-09 09:25:45');
INSERT INTO `sys_job_log` VALUES (2081, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:25:50', '2026-05-09 09:25:50', '2026-05-09 09:25:50');
INSERT INTO `sys_job_log` VALUES (2082, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:25:55', '2026-05-09 09:25:55', '2026-05-09 09:25:55');
INSERT INTO `sys_job_log` VALUES (2083, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:26:00', '2026-05-09 09:26:00', '2026-05-09 09:26:00');
INSERT INTO `sys_job_log` VALUES (2084, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:26:05', '2026-05-09 09:26:05', '2026-05-09 09:26:05');
INSERT INTO `sys_job_log` VALUES (2085, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:26:10', '2026-05-09 09:26:10', '2026-05-09 09:26:10');
INSERT INTO `sys_job_log` VALUES (2086, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:26:15', '2026-05-09 09:26:15', '2026-05-09 09:26:15');
INSERT INTO `sys_job_log` VALUES (2087, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:26:20', '2026-05-09 09:26:20', '2026-05-09 09:26:20');
INSERT INTO `sys_job_log` VALUES (2088, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:26:25', '2026-05-09 09:26:25', '2026-05-09 09:26:25');
INSERT INTO `sys_job_log` VALUES (2089, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:26:30', '2026-05-09 09:26:30', '2026-05-09 09:26:30');
INSERT INTO `sys_job_log` VALUES (2090, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:26:35', '2026-05-09 09:26:35', '2026-05-09 09:26:35');
INSERT INTO `sys_job_log` VALUES (2091, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:26:46', '2026-05-09 09:26:46', '2026-05-09 09:26:46');
INSERT INTO `sys_job_log` VALUES (2092, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:26:50', '2026-05-09 09:26:50', '2026-05-09 09:26:50');
INSERT INTO `sys_job_log` VALUES (2093, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:26:55', '2026-05-09 09:26:55', '2026-05-09 09:26:55');
INSERT INTO `sys_job_log` VALUES (2094, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:27:00', '2026-05-09 09:27:00', '2026-05-09 09:27:00');
INSERT INTO `sys_job_log` VALUES (2095, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:27:05', '2026-05-09 09:27:05', '2026-05-09 09:27:05');
INSERT INTO `sys_job_log` VALUES (2096, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:27:10', '2026-05-09 09:27:10', '2026-05-09 09:27:10');
INSERT INTO `sys_job_log` VALUES (2097, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:27:15', '2026-05-09 09:27:15', '2026-05-09 09:27:15');
INSERT INTO `sys_job_log` VALUES (2098, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:27:20', '2026-05-09 09:27:20', '2026-05-09 09:27:20');
INSERT INTO `sys_job_log` VALUES (2099, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:27:25', '2026-05-09 09:27:25', '2026-05-09 09:27:25');
INSERT INTO `sys_job_log` VALUES (2100, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:27:30', '2026-05-09 09:27:30', '2026-05-09 09:27:30');
INSERT INTO `sys_job_log` VALUES (2101, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:27:35', '2026-05-09 09:27:35', '2026-05-09 09:27:35');
INSERT INTO `sys_job_log` VALUES (2102, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:27:40', '2026-05-09 09:27:40', '2026-05-09 09:27:40');
INSERT INTO `sys_job_log` VALUES (2103, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:27:45', '2026-05-09 09:27:45', '2026-05-09 09:27:45');
INSERT INTO `sys_job_log` VALUES (2104, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:27:50', '2026-05-09 09:27:50', '2026-05-09 09:27:50');
INSERT INTO `sys_job_log` VALUES (2105, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:27:55', '2026-05-09 09:27:55', '2026-05-09 09:27:55');
INSERT INTO `sys_job_log` VALUES (2106, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:28:00', '2026-05-09 09:28:00', '2026-05-09 09:28:00');
INSERT INTO `sys_job_log` VALUES (2107, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:28:05', '2026-05-09 09:28:05', '2026-05-09 09:28:05');
INSERT INTO `sys_job_log` VALUES (2108, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:28:10', '2026-05-09 09:28:10', '2026-05-09 09:28:10');
INSERT INTO `sys_job_log` VALUES (2109, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:28:15', '2026-05-09 09:28:15', '2026-05-09 09:28:15');
INSERT INTO `sys_job_log` VALUES (2110, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:28:20', '2026-05-09 09:28:20', '2026-05-09 09:28:20');
INSERT INTO `sys_job_log` VALUES (2111, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:28:25', '2026-05-09 09:28:25', '2026-05-09 09:28:25');
INSERT INTO `sys_job_log` VALUES (2112, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:28:30', '2026-05-09 09:28:30', '2026-05-09 09:28:30');
INSERT INTO `sys_job_log` VALUES (2113, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:28:35', '2026-05-09 09:28:35', '2026-05-09 09:28:35');
INSERT INTO `sys_job_log` VALUES (2114, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:28:40', '2026-05-09 09:28:40', '2026-05-09 09:28:40');
INSERT INTO `sys_job_log` VALUES (2115, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:28:45', '2026-05-09 09:28:45', '2026-05-09 09:28:45');
INSERT INTO `sys_job_log` VALUES (2116, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:28:50', '2026-05-09 09:28:50', '2026-05-09 09:28:50');
INSERT INTO `sys_job_log` VALUES (2117, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:28:55', '2026-05-09 09:28:55', '2026-05-09 09:28:55');
INSERT INTO `sys_job_log` VALUES (2118, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:29:00', '2026-05-09 09:29:00', '2026-05-09 09:29:00');
INSERT INTO `sys_job_log` VALUES (2119, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:05', '2026-05-09 09:29:05', '2026-05-09 09:29:05');
INSERT INTO `sys_job_log` VALUES (2120, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:10', '2026-05-09 09:29:10', '2026-05-09 09:29:10');
INSERT INTO `sys_job_log` VALUES (2121, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:15', '2026-05-09 09:29:15', '2026-05-09 09:29:15');
INSERT INTO `sys_job_log` VALUES (2122, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:20', '2026-05-09 09:29:20', '2026-05-09 09:29:20');
INSERT INTO `sys_job_log` VALUES (2123, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:25', '2026-05-09 09:29:25', '2026-05-09 09:29:25');
INSERT INTO `sys_job_log` VALUES (2124, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:30', '2026-05-09 09:29:30', '2026-05-09 09:29:30');
INSERT INTO `sys_job_log` VALUES (2125, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:35', '2026-05-09 09:29:35', '2026-05-09 09:29:35');
INSERT INTO `sys_job_log` VALUES (2126, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:40', '2026-05-09 09:29:40', '2026-05-09 09:29:40');
INSERT INTO `sys_job_log` VALUES (2127, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:45', '2026-05-09 09:29:45', '2026-05-09 09:29:45');
INSERT INTO `sys_job_log` VALUES (2128, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:50', '2026-05-09 09:29:50', '2026-05-09 09:29:50');
INSERT INTO `sys_job_log` VALUES (2129, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:29:55', '2026-05-09 09:29:55', '2026-05-09 09:29:55');
INSERT INTO `sys_job_log` VALUES (2130, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:30:00', '2026-05-09 09:30:00', '2026-05-09 09:30:00');
INSERT INTO `sys_job_log` VALUES (2131, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:30:05', '2026-05-09 09:30:05', '2026-05-09 09:30:05');
INSERT INTO `sys_job_log` VALUES (2132, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:30:10', '2026-05-09 09:30:10', '2026-05-09 09:30:10');
INSERT INTO `sys_job_log` VALUES (2133, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:30:15', '2026-05-09 09:30:15', '2026-05-09 09:30:15');
INSERT INTO `sys_job_log` VALUES (2134, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:30:20', '2026-05-09 09:30:20', '2026-05-09 09:30:20');
INSERT INTO `sys_job_log` VALUES (2135, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:30:25', '2026-05-09 09:30:25', '2026-05-09 09:30:25');
INSERT INTO `sys_job_log` VALUES (2136, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:30:45', '2026-05-09 09:30:45', '2026-05-09 09:30:45');
INSERT INTO `sys_job_log` VALUES (2137, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:30:50', '2026-05-09 09:30:50', '2026-05-09 09:30:50');
INSERT INTO `sys_job_log` VALUES (2138, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:30:55', '2026-05-09 09:30:55', '2026-05-09 09:30:55');
INSERT INTO `sys_job_log` VALUES (2139, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:00', '2026-05-09 09:31:00', '2026-05-09 09:31:00');
INSERT INTO `sys_job_log` VALUES (2140, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:05', '2026-05-09 09:31:05', '2026-05-09 09:31:05');
INSERT INTO `sys_job_log` VALUES (2141, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:31:10', '2026-05-09 09:31:10', '2026-05-09 09:31:10');
INSERT INTO `sys_job_log` VALUES (2142, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:15', '2026-05-09 09:31:15', '2026-05-09 09:31:15');
INSERT INTO `sys_job_log` VALUES (2143, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:20', '2026-05-09 09:31:20', '2026-05-09 09:31:20');
INSERT INTO `sys_job_log` VALUES (2144, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:25', '2026-05-09 09:31:25', '2026-05-09 09:31:25');
INSERT INTO `sys_job_log` VALUES (2145, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:30', '2026-05-09 09:31:30', '2026-05-09 09:31:30');
INSERT INTO `sys_job_log` VALUES (2146, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:35', '2026-05-09 09:31:35', '2026-05-09 09:31:35');
INSERT INTO `sys_job_log` VALUES (2147, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:31:40', '2026-05-09 09:31:40', '2026-05-09 09:31:40');
INSERT INTO `sys_job_log` VALUES (2148, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:45', '2026-05-09 09:31:45', '2026-05-09 09:31:45');
INSERT INTO `sys_job_log` VALUES (2149, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:50', '2026-05-09 09:31:50', '2026-05-09 09:31:50');
INSERT INTO `sys_job_log` VALUES (2150, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:31:55', '2026-05-09 09:31:55', '2026-05-09 09:31:55');
INSERT INTO `sys_job_log` VALUES (2151, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:00', '2026-05-09 09:32:00', '2026-05-09 09:32:00');
INSERT INTO `sys_job_log` VALUES (2152, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:05', '2026-05-09 09:32:05', '2026-05-09 09:32:05');
INSERT INTO `sys_job_log` VALUES (2153, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:10', '2026-05-09 09:32:10', '2026-05-09 09:32:10');
INSERT INTO `sys_job_log` VALUES (2154, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:32:15', '2026-05-09 09:32:15', '2026-05-09 09:32:15');
INSERT INTO `sys_job_log` VALUES (2155, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:20', '2026-05-09 09:32:20', '2026-05-09 09:32:20');
INSERT INTO `sys_job_log` VALUES (2156, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:25', '2026-05-09 09:32:25', '2026-05-09 09:32:25');
INSERT INTO `sys_job_log` VALUES (2157, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:32:30', '2026-05-09 09:32:30', '2026-05-09 09:32:30');
INSERT INTO `sys_job_log` VALUES (2158, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:35', '2026-05-09 09:32:35', '2026-05-09 09:32:35');
INSERT INTO `sys_job_log` VALUES (2159, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:40', '2026-05-09 09:32:40', '2026-05-09 09:32:40');
INSERT INTO `sys_job_log` VALUES (2160, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:45', '2026-05-09 09:32:45', '2026-05-09 09:32:45');
INSERT INTO `sys_job_log` VALUES (2161, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:50', '2026-05-09 09:32:50', '2026-05-09 09:32:50');
INSERT INTO `sys_job_log` VALUES (2162, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:32:55', '2026-05-09 09:32:55', '2026-05-09 09:32:55');
INSERT INTO `sys_job_log` VALUES (2163, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:33:00', '2026-05-09 09:33:00', '2026-05-09 09:33:00');
INSERT INTO `sys_job_log` VALUES (2164, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:33:05', '2026-05-09 09:33:05', '2026-05-09 09:33:05');
INSERT INTO `sys_job_log` VALUES (2165, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:33:10', '2026-05-09 09:33:10', '2026-05-09 09:33:10');
INSERT INTO `sys_job_log` VALUES (2166, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:33:15', '2026-05-09 09:33:15', '2026-05-09 09:33:15');
INSERT INTO `sys_job_log` VALUES (2167, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:33:20', '2026-05-09 09:33:20', '2026-05-09 09:33:20');
INSERT INTO `sys_job_log` VALUES (2168, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:33:25', '2026-05-09 09:33:25', '2026-05-09 09:33:25');
INSERT INTO `sys_job_log` VALUES (2169, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:33:30', '2026-05-09 09:33:30', '2026-05-09 09:33:30');
INSERT INTO `sys_job_log` VALUES (2170, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:33:35', '2026-05-09 09:33:35', '2026-05-09 09:33:35');
INSERT INTO `sys_job_log` VALUES (2171, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:33:40', '2026-05-09 09:33:40', '2026-05-09 09:33:40');
INSERT INTO `sys_job_log` VALUES (2172, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:33:45', '2026-05-09 09:33:45', '2026-05-09 09:33:45');
INSERT INTO `sys_job_log` VALUES (2173, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:33:50', '2026-05-09 09:33:50', '2026-05-09 09:33:50');
INSERT INTO `sys_job_log` VALUES (2174, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:33:55', '2026-05-09 09:33:55', '2026-05-09 09:33:55');
INSERT INTO `sys_job_log` VALUES (2175, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:00', '2026-05-09 09:34:00', '2026-05-09 09:34:00');
INSERT INTO `sys_job_log` VALUES (2176, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:05', '2026-05-09 09:34:05', '2026-05-09 09:34:05');
INSERT INTO `sys_job_log` VALUES (2177, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:10', '2026-05-09 09:34:10', '2026-05-09 09:34:10');
INSERT INTO `sys_job_log` VALUES (2178, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:34:15', '2026-05-09 09:34:15', '2026-05-09 09:34:15');
INSERT INTO `sys_job_log` VALUES (2179, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:34:20', '2026-05-09 09:34:20', '2026-05-09 09:34:20');
INSERT INTO `sys_job_log` VALUES (2180, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:25', '2026-05-09 09:34:25', '2026-05-09 09:34:25');
INSERT INTO `sys_job_log` VALUES (2181, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:30', '2026-05-09 09:34:30', '2026-05-09 09:34:30');
INSERT INTO `sys_job_log` VALUES (2182, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:35', '2026-05-09 09:34:35', '2026-05-09 09:34:35');
INSERT INTO `sys_job_log` VALUES (2183, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:40', '2026-05-09 09:34:40', '2026-05-09 09:34:40');
INSERT INTO `sys_job_log` VALUES (2184, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:45', '2026-05-09 09:34:45', '2026-05-09 09:34:45');
INSERT INTO `sys_job_log` VALUES (2185, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:50', '2026-05-09 09:34:50', '2026-05-09 09:34:50');
INSERT INTO `sys_job_log` VALUES (2186, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:34:55', '2026-05-09 09:34:55', '2026-05-09 09:34:55');
INSERT INTO `sys_job_log` VALUES (2187, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:35:00', '2026-05-09 09:35:00', '2026-05-09 09:35:00');
INSERT INTO `sys_job_log` VALUES (2188, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:35:05', '2026-05-09 09:35:05', '2026-05-09 09:35:05');
INSERT INTO `sys_job_log` VALUES (2189, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:35:10', '2026-05-09 09:35:10', '2026-05-09 09:35:10');
INSERT INTO `sys_job_log` VALUES (2190, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:35:15', '2026-05-09 09:35:15', '2026-05-09 09:35:15');
INSERT INTO `sys_job_log` VALUES (2191, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:35:20', '2026-05-09 09:35:20', '2026-05-09 09:35:20');
INSERT INTO `sys_job_log` VALUES (2192, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:35:25', '2026-05-09 09:35:25', '2026-05-09 09:35:25');
INSERT INTO `sys_job_log` VALUES (2193, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-09 09:35:30', '2026-05-09 09:35:30', '2026-05-09 09:35:30');
INSERT INTO `sys_job_log` VALUES (2194, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:35:35', '2026-05-09 09:35:35', '2026-05-09 09:35:35');
INSERT INTO `sys_job_log` VALUES (2195, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:35:40', '2026-05-09 09:35:40', '2026-05-09 09:35:40');
INSERT INTO `sys_job_log` VALUES (2196, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:35:45', '2026-05-09 09:35:45', '2026-05-09 09:35:45');
INSERT INTO `sys_job_log` VALUES (2197, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:35:50', '2026-05-09 09:35:50', '2026-05-09 09:35:50');
INSERT INTO `sys_job_log` VALUES (2198, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:35:55', '2026-05-09 09:35:55', '2026-05-09 09:35:55');
INSERT INTO `sys_job_log` VALUES (2199, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:00', '2026-05-09 09:36:00', '2026-05-09 09:36:00');
INSERT INTO `sys_job_log` VALUES (2200, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:05', '2026-05-09 09:36:05', '2026-05-09 09:36:05');
INSERT INTO `sys_job_log` VALUES (2201, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:36:10', '2026-05-09 09:36:10', '2026-05-09 09:36:10');
INSERT INTO `sys_job_log` VALUES (2202, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:15', '2026-05-09 09:36:15', '2026-05-09 09:36:15');
INSERT INTO `sys_job_log` VALUES (2203, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:36:20', '2026-05-09 09:36:20', '2026-05-09 09:36:20');
INSERT INTO `sys_job_log` VALUES (2204, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:25', '2026-05-09 09:36:25', '2026-05-09 09:36:25');
INSERT INTO `sys_job_log` VALUES (2205, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:30', '2026-05-09 09:36:30', '2026-05-09 09:36:30');
INSERT INTO `sys_job_log` VALUES (2206, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:35', '2026-05-09 09:36:35', '2026-05-09 09:36:35');
INSERT INTO `sys_job_log` VALUES (2207, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:40', '2026-05-09 09:36:40', '2026-05-09 09:36:40');
INSERT INTO `sys_job_log` VALUES (2208, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:45', '2026-05-09 09:36:45', '2026-05-09 09:36:45');
INSERT INTO `sys_job_log` VALUES (2209, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:50', '2026-05-09 09:36:50', '2026-05-09 09:36:50');
INSERT INTO `sys_job_log` VALUES (2210, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:36:55', '2026-05-09 09:36:55', '2026-05-09 09:36:55');
INSERT INTO `sys_job_log` VALUES (2211, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:37:00', '2026-05-09 09:37:00', '2026-05-09 09:37:00');
INSERT INTO `sys_job_log` VALUES (2212, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:37:05', '2026-05-09 09:37:05', '2026-05-09 09:37:05');
INSERT INTO `sys_job_log` VALUES (2213, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:37:10', '2026-05-09 09:37:10', '2026-05-09 09:37:10');
INSERT INTO `sys_job_log` VALUES (2214, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:37:15', '2026-05-09 09:37:15', '2026-05-09 09:37:15');
INSERT INTO `sys_job_log` VALUES (2215, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:37:20', '2026-05-09 09:37:20', '2026-05-09 09:37:20');
INSERT INTO `sys_job_log` VALUES (2216, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:37:25', '2026-05-09 09:37:25', '2026-05-09 09:37:25');
INSERT INTO `sys_job_log` VALUES (2217, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：5毫秒', '0', '', '2026-05-09 09:37:30', '2026-05-09 09:37:30', '2026-05-09 09:37:30');
INSERT INTO `sys_job_log` VALUES (2218, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:37:35', '2026-05-09 09:37:35', '2026-05-09 09:37:35');
INSERT INTO `sys_job_log` VALUES (2219, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:37:40', '2026-05-09 09:37:40', '2026-05-09 09:37:40');
INSERT INTO `sys_job_log` VALUES (2220, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:37:45', '2026-05-09 09:37:45', '2026-05-09 09:37:45');
INSERT INTO `sys_job_log` VALUES (2221, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:37:50', '2026-05-09 09:37:50', '2026-05-09 09:37:50');
INSERT INTO `sys_job_log` VALUES (2222, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:37:55', '2026-05-09 09:37:55', '2026-05-09 09:37:55');
INSERT INTO `sys_job_log` VALUES (2223, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:00', '2026-05-09 09:38:00', '2026-05-09 09:38:00');
INSERT INTO `sys_job_log` VALUES (2224, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:05', '2026-05-09 09:38:05', '2026-05-09 09:38:05');
INSERT INTO `sys_job_log` VALUES (2225, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:10', '2026-05-09 09:38:10', '2026-05-09 09:38:10');
INSERT INTO `sys_job_log` VALUES (2226, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:15', '2026-05-09 09:38:15', '2026-05-09 09:38:15');
INSERT INTO `sys_job_log` VALUES (2227, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:20', '2026-05-09 09:38:20', '2026-05-09 09:38:20');
INSERT INTO `sys_job_log` VALUES (2228, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:25', '2026-05-09 09:38:25', '2026-05-09 09:38:25');
INSERT INTO `sys_job_log` VALUES (2229, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:30', '2026-05-09 09:38:30', '2026-05-09 09:38:30');
INSERT INTO `sys_job_log` VALUES (2230, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:35', '2026-05-09 09:38:35', '2026-05-09 09:38:35');
INSERT INTO `sys_job_log` VALUES (2231, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:40', '2026-05-09 09:38:40', '2026-05-09 09:38:40');
INSERT INTO `sys_job_log` VALUES (2232, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:45', '2026-05-09 09:38:45', '2026-05-09 09:38:45');
INSERT INTO `sys_job_log` VALUES (2233, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:50', '2026-05-09 09:38:50', '2026-05-09 09:38:50');
INSERT INTO `sys_job_log` VALUES (2234, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:38:55', '2026-05-09 09:38:55', '2026-05-09 09:38:55');
INSERT INTO `sys_job_log` VALUES (2235, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:39:00', '2026-05-09 09:39:00', '2026-05-09 09:39:00');
INSERT INTO `sys_job_log` VALUES (2236, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:05', '2026-05-09 09:39:05', '2026-05-09 09:39:05');
INSERT INTO `sys_job_log` VALUES (2237, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:10', '2026-05-09 09:39:10', '2026-05-09 09:39:10');
INSERT INTO `sys_job_log` VALUES (2238, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:15', '2026-05-09 09:39:15', '2026-05-09 09:39:15');
INSERT INTO `sys_job_log` VALUES (2239, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:20', '2026-05-09 09:39:20', '2026-05-09 09:39:20');
INSERT INTO `sys_job_log` VALUES (2240, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:25', '2026-05-09 09:39:25', '2026-05-09 09:39:25');
INSERT INTO `sys_job_log` VALUES (2241, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:39:30', '2026-05-09 09:39:30', '2026-05-09 09:39:30');
INSERT INTO `sys_job_log` VALUES (2242, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:35', '2026-05-09 09:39:35', '2026-05-09 09:39:35');
INSERT INTO `sys_job_log` VALUES (2243, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:40', '2026-05-09 09:39:40', '2026-05-09 09:39:40');
INSERT INTO `sys_job_log` VALUES (2244, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:45', '2026-05-09 09:39:45', '2026-05-09 09:39:45');
INSERT INTO `sys_job_log` VALUES (2245, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:50', '2026-05-09 09:39:50', '2026-05-09 09:39:50');
INSERT INTO `sys_job_log` VALUES (2246, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:39:55', '2026-05-09 09:39:55', '2026-05-09 09:39:55');
INSERT INTO `sys_job_log` VALUES (2247, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:40:00', '2026-05-09 09:40:00', '2026-05-09 09:40:00');
INSERT INTO `sys_job_log` VALUES (2248, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:40:05', '2026-05-09 09:40:05', '2026-05-09 09:40:05');
INSERT INTO `sys_job_log` VALUES (2249, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:40:10', '2026-05-09 09:40:10', '2026-05-09 09:40:10');
INSERT INTO `sys_job_log` VALUES (2250, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:40:15', '2026-05-09 09:40:15', '2026-05-09 09:40:15');
INSERT INTO `sys_job_log` VALUES (2251, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:40:20', '2026-05-09 09:40:20', '2026-05-09 09:40:20');
INSERT INTO `sys_job_log` VALUES (2252, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:40:25', '2026-05-09 09:40:25', '2026-05-09 09:40:25');
INSERT INTO `sys_job_log` VALUES (2253, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:40:30', '2026-05-09 09:40:30', '2026-05-09 09:40:30');
INSERT INTO `sys_job_log` VALUES (2254, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:40:35', '2026-05-09 09:40:35', '2026-05-09 09:40:35');
INSERT INTO `sys_job_log` VALUES (2255, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:40:40', '2026-05-09 09:40:40', '2026-05-09 09:40:40');
INSERT INTO `sys_job_log` VALUES (2256, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:40:45', '2026-05-09 09:40:45', '2026-05-09 09:40:45');
INSERT INTO `sys_job_log` VALUES (2257, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:40:50', '2026-05-09 09:40:50', '2026-05-09 09:40:50');
INSERT INTO `sys_job_log` VALUES (2258, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:40:55', '2026-05-09 09:40:55', '2026-05-09 09:40:55');
INSERT INTO `sys_job_log` VALUES (2259, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:41:00', '2026-05-09 09:41:00', '2026-05-09 09:41:00');
INSERT INTO `sys_job_log` VALUES (2260, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:41:05', '2026-05-09 09:41:05', '2026-05-09 09:41:05');
INSERT INTO `sys_job_log` VALUES (2261, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:41:10', '2026-05-09 09:41:10', '2026-05-09 09:41:10');
INSERT INTO `sys_job_log` VALUES (2262, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:41:15', '2026-05-09 09:41:15', '2026-05-09 09:41:15');
INSERT INTO `sys_job_log` VALUES (2263, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:41:20', '2026-05-09 09:41:20', '2026-05-09 09:41:20');
INSERT INTO `sys_job_log` VALUES (2264, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:41:25', '2026-05-09 09:41:25', '2026-05-09 09:41:25');
INSERT INTO `sys_job_log` VALUES (2265, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:41:30', '2026-05-09 09:41:30', '2026-05-09 09:41:30');
INSERT INTO `sys_job_log` VALUES (2266, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:41:35', '2026-05-09 09:41:35', '2026-05-09 09:41:35');
INSERT INTO `sys_job_log` VALUES (2267, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:41:40', '2026-05-09 09:41:40', '2026-05-09 09:41:40');
INSERT INTO `sys_job_log` VALUES (2268, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:41:45', '2026-05-09 09:41:45', '2026-05-09 09:41:45');
INSERT INTO `sys_job_log` VALUES (2269, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:41:50', '2026-05-09 09:41:50', '2026-05-09 09:41:50');
INSERT INTO `sys_job_log` VALUES (2270, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:41:55', '2026-05-09 09:41:55', '2026-05-09 09:41:55');
INSERT INTO `sys_job_log` VALUES (2271, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:00', '2026-05-09 09:42:00', '2026-05-09 09:42:00');
INSERT INTO `sys_job_log` VALUES (2272, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:05', '2026-05-09 09:42:05', '2026-05-09 09:42:05');
INSERT INTO `sys_job_log` VALUES (2273, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:10', '2026-05-09 09:42:10', '2026-05-09 09:42:10');
INSERT INTO `sys_job_log` VALUES (2274, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:15', '2026-05-09 09:42:15', '2026-05-09 09:42:15');
INSERT INTO `sys_job_log` VALUES (2275, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:20', '2026-05-09 09:42:20', '2026-05-09 09:42:20');
INSERT INTO `sys_job_log` VALUES (2276, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:25', '2026-05-09 09:42:25', '2026-05-09 09:42:25');
INSERT INTO `sys_job_log` VALUES (2277, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:30', '2026-05-09 09:42:30', '2026-05-09 09:42:30');
INSERT INTO `sys_job_log` VALUES (2278, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:35', '2026-05-09 09:42:35', '2026-05-09 09:42:35');
INSERT INTO `sys_job_log` VALUES (2279, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:40', '2026-05-09 09:42:40', '2026-05-09 09:42:40');
INSERT INTO `sys_job_log` VALUES (2280, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:45', '2026-05-09 09:42:45', '2026-05-09 09:42:45');
INSERT INTO `sys_job_log` VALUES (2281, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:50', '2026-05-09 09:42:50', '2026-05-09 09:42:50');
INSERT INTO `sys_job_log` VALUES (2282, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:42:55', '2026-05-09 09:42:55', '2026-05-09 09:42:55');
INSERT INTO `sys_job_log` VALUES (2283, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:43:00', '2026-05-09 09:43:00', '2026-05-09 09:43:00');
INSERT INTO `sys_job_log` VALUES (2284, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:43:05', '2026-05-09 09:43:05', '2026-05-09 09:43:05');
INSERT INTO `sys_job_log` VALUES (2285, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:43:10', '2026-05-09 09:43:10', '2026-05-09 09:43:10');
INSERT INTO `sys_job_log` VALUES (2286, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:43:15', '2026-05-09 09:43:15', '2026-05-09 09:43:15');
INSERT INTO `sys_job_log` VALUES (2287, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:43:20', '2026-05-09 09:43:20', '2026-05-09 09:43:20');
INSERT INTO `sys_job_log` VALUES (2288, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:43:25', '2026-05-09 09:43:25', '2026-05-09 09:43:25');
INSERT INTO `sys_job_log` VALUES (2289, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:43:30', '2026-05-09 09:43:30', '2026-05-09 09:43:30');
INSERT INTO `sys_job_log` VALUES (2290, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:43:35', '2026-05-09 09:43:35', '2026-05-09 09:43:35');
INSERT INTO `sys_job_log` VALUES (2291, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:43:40', '2026-05-09 09:43:40', '2026-05-09 09:43:40');
INSERT INTO `sys_job_log` VALUES (2292, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:43:45', '2026-05-09 09:43:45', '2026-05-09 09:43:45');
INSERT INTO `sys_job_log` VALUES (2293, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:43:50', '2026-05-09 09:43:50', '2026-05-09 09:43:50');
INSERT INTO `sys_job_log` VALUES (2294, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:43:55', '2026-05-09 09:43:55', '2026-05-09 09:43:55');
INSERT INTO `sys_job_log` VALUES (2295, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:44:00', '2026-05-09 09:44:00', '2026-05-09 09:44:00');
INSERT INTO `sys_job_log` VALUES (2296, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:44:05', '2026-05-09 09:44:05', '2026-05-09 09:44:05');
INSERT INTO `sys_job_log` VALUES (2297, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:44:10', '2026-05-09 09:44:10', '2026-05-09 09:44:10');
INSERT INTO `sys_job_log` VALUES (2298, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:44:15', '2026-05-09 09:44:15', '2026-05-09 09:44:15');
INSERT INTO `sys_job_log` VALUES (2299, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:44:20', '2026-05-09 09:44:20', '2026-05-09 09:44:20');
INSERT INTO `sys_job_log` VALUES (2300, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:44:25', '2026-05-09 09:44:25', '2026-05-09 09:44:25');
INSERT INTO `sys_job_log` VALUES (2301, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:44:30', '2026-05-09 09:44:30', '2026-05-09 09:44:30');
INSERT INTO `sys_job_log` VALUES (2302, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:44:35', '2026-05-09 09:44:35', '2026-05-09 09:44:35');
INSERT INTO `sys_job_log` VALUES (2303, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:44:40', '2026-05-09 09:44:40', '2026-05-09 09:44:40');
INSERT INTO `sys_job_log` VALUES (2304, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:44:45', '2026-05-09 09:44:45', '2026-05-09 09:44:45');
INSERT INTO `sys_job_log` VALUES (2305, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:44:50', '2026-05-09 09:44:50', '2026-05-09 09:44:50');
INSERT INTO `sys_job_log` VALUES (2306, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:44:55', '2026-05-09 09:44:55', '2026-05-09 09:44:55');
INSERT INTO `sys_job_log` VALUES (2307, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:45:00', '2026-05-09 09:45:00', '2026-05-09 09:45:00');
INSERT INTO `sys_job_log` VALUES (2308, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:05', '2026-05-09 09:45:05', '2026-05-09 09:45:05');
INSERT INTO `sys_job_log` VALUES (2309, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:10', '2026-05-09 09:45:10', '2026-05-09 09:45:10');
INSERT INTO `sys_job_log` VALUES (2310, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:15', '2026-05-09 09:45:15', '2026-05-09 09:45:15');
INSERT INTO `sys_job_log` VALUES (2311, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:20', '2026-05-09 09:45:20', '2026-05-09 09:45:20');
INSERT INTO `sys_job_log` VALUES (2312, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:25', '2026-05-09 09:45:25', '2026-05-09 09:45:25');
INSERT INTO `sys_job_log` VALUES (2313, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:30', '2026-05-09 09:45:30', '2026-05-09 09:45:30');
INSERT INTO `sys_job_log` VALUES (2314, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:35', '2026-05-09 09:45:35', '2026-05-09 09:45:35');
INSERT INTO `sys_job_log` VALUES (2315, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:40', '2026-05-09 09:45:40', '2026-05-09 09:45:40');
INSERT INTO `sys_job_log` VALUES (2316, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:45', '2026-05-09 09:45:45', '2026-05-09 09:45:45');
INSERT INTO `sys_job_log` VALUES (2317, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:50', '2026-05-09 09:45:50', '2026-05-09 09:45:50');
INSERT INTO `sys_job_log` VALUES (2318, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:45:55', '2026-05-09 09:45:55', '2026-05-09 09:45:55');
INSERT INTO `sys_job_log` VALUES (2319, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:46:00', '2026-05-09 09:46:00', '2026-05-09 09:46:00');
INSERT INTO `sys_job_log` VALUES (2320, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:46:05', '2026-05-09 09:46:05', '2026-05-09 09:46:05');
INSERT INTO `sys_job_log` VALUES (2321, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:46:10', '2026-05-09 09:46:10', '2026-05-09 09:46:10');
INSERT INTO `sys_job_log` VALUES (2322, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-09 09:46:15', '2026-05-09 09:46:15', '2026-05-09 09:46:15');
INSERT INTO `sys_job_log` VALUES (2323, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：3毫秒', '0', '', '2026-05-09 09:46:20', '2026-05-09 09:46:20', '2026-05-09 09:46:20');
INSERT INTO `sys_job_log` VALUES (2324, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:46:25', '2026-05-09 09:46:25', '2026-05-09 09:46:25');
INSERT INTO `sys_job_log` VALUES (2325, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-09 09:46:30', '2026-05-09 09:46:30', '2026-05-09 09:46:30');
INSERT INTO `sys_job_log` VALUES (2326, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:46:35', '2026-05-09 09:46:35', '2026-05-09 09:46:35');
INSERT INTO `sys_job_log` VALUES (2327, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:46:40', '2026-05-09 09:46:40', '2026-05-09 09:46:40');
INSERT INTO `sys_job_log` VALUES (2328, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-09 09:46:45', '2026-05-09 09:46:45', '2026-05-09 09:46:45');
INSERT INTO `sys_job_log` VALUES (2329, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:46:50', '2026-05-09 09:46:50', '2026-05-09 09:46:50');
INSERT INTO `sys_job_log` VALUES (2330, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:46:55', '2026-05-09 09:46:55', '2026-05-09 09:46:55');
INSERT INTO `sys_job_log` VALUES (2331, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:47:00', '2026-05-09 09:47:00', '2026-05-09 09:47:00');
INSERT INTO `sys_job_log` VALUES (2332, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:47:05', '2026-05-09 09:47:05', '2026-05-09 09:47:05');
INSERT INTO `sys_job_log` VALUES (2333, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:47:10', '2026-05-09 09:47:10', '2026-05-09 09:47:10');
INSERT INTO `sys_job_log` VALUES (2334, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:47:15', '2026-05-09 09:47:15', '2026-05-09 09:47:15');
INSERT INTO `sys_job_log` VALUES (2335, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:47:20', '2026-05-09 09:47:20', '2026-05-09 09:47:20');
INSERT INTO `sys_job_log` VALUES (2336, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:47:25', '2026-05-09 09:47:25', '2026-05-09 09:47:25');
INSERT INTO `sys_job_log` VALUES (2337, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:47:30', '2026-05-09 09:47:30', '2026-05-09 09:47:30');
INSERT INTO `sys_job_log` VALUES (2338, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:47:35', '2026-05-09 09:47:35', '2026-05-09 09:47:35');
INSERT INTO `sys_job_log` VALUES (2339, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:47:40', '2026-05-09 09:47:40', '2026-05-09 09:47:40');
INSERT INTO `sys_job_log` VALUES (2340, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:47:45', '2026-05-09 09:47:45', '2026-05-09 09:47:45');
INSERT INTO `sys_job_log` VALUES (2341, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:47:50', '2026-05-09 09:47:50', '2026-05-09 09:47:50');
INSERT INTO `sys_job_log` VALUES (2342, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:47:55', '2026-05-09 09:47:55', '2026-05-09 09:47:55');
INSERT INTO `sys_job_log` VALUES (2343, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:48:00', '2026-05-09 09:48:00', '2026-05-09 09:48:00');
INSERT INTO `sys_job_log` VALUES (2344, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:48:05', '2026-05-09 09:48:05', '2026-05-09 09:48:05');
INSERT INTO `sys_job_log` VALUES (2345, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:48:10', '2026-05-09 09:48:10', '2026-05-09 09:48:10');
INSERT INTO `sys_job_log` VALUES (2346, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:48:15', '2026-05-09 09:48:15', '2026-05-09 09:48:15');
INSERT INTO `sys_job_log` VALUES (2347, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:48:20', '2026-05-09 09:48:20', '2026-05-09 09:48:20');
INSERT INTO `sys_job_log` VALUES (2348, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:48:25', '2026-05-09 09:48:25', '2026-05-09 09:48:25');
INSERT INTO `sys_job_log` VALUES (2349, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:48:30', '2026-05-09 09:48:30', '2026-05-09 09:48:30');
INSERT INTO `sys_job_log` VALUES (2350, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:48:35', '2026-05-09 09:48:35', '2026-05-09 09:48:35');
INSERT INTO `sys_job_log` VALUES (2351, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:48:40', '2026-05-09 09:48:40', '2026-05-09 09:48:40');
INSERT INTO `sys_job_log` VALUES (2352, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:48:45', '2026-05-09 09:48:45', '2026-05-09 09:48:45');
INSERT INTO `sys_job_log` VALUES (2353, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:48:50', '2026-05-09 09:48:50', '2026-05-09 09:48:50');
INSERT INTO `sys_job_log` VALUES (2354, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:48:55', '2026-05-09 09:48:55', '2026-05-09 09:48:55');
INSERT INTO `sys_job_log` VALUES (2355, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:00', '2026-05-09 09:49:00', '2026-05-09 09:49:00');
INSERT INTO `sys_job_log` VALUES (2356, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:05', '2026-05-09 09:49:05', '2026-05-09 09:49:05');
INSERT INTO `sys_job_log` VALUES (2357, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:10', '2026-05-09 09:49:10', '2026-05-09 09:49:10');
INSERT INTO `sys_job_log` VALUES (2358, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:15', '2026-05-09 09:49:15', '2026-05-09 09:49:15');
INSERT INTO `sys_job_log` VALUES (2359, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:20', '2026-05-09 09:49:20', '2026-05-09 09:49:20');
INSERT INTO `sys_job_log` VALUES (2360, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:25', '2026-05-09 09:49:25', '2026-05-09 09:49:25');
INSERT INTO `sys_job_log` VALUES (2361, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:49:30', '2026-05-09 09:49:30', '2026-05-09 09:49:30');
INSERT INTO `sys_job_log` VALUES (2362, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:49:35', '2026-05-09 09:49:35', '2026-05-09 09:49:35');
INSERT INTO `sys_job_log` VALUES (2363, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:40', '2026-05-09 09:49:40', '2026-05-09 09:49:40');
INSERT INTO `sys_job_log` VALUES (2364, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:45', '2026-05-09 09:49:45', '2026-05-09 09:49:45');
INSERT INTO `sys_job_log` VALUES (2365, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:50', '2026-05-09 09:49:50', '2026-05-09 09:49:50');
INSERT INTO `sys_job_log` VALUES (2366, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:49:55', '2026-05-09 09:49:55', '2026-05-09 09:49:55');
INSERT INTO `sys_job_log` VALUES (2367, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:50:00', '2026-05-09 09:50:00', '2026-05-09 09:50:00');
INSERT INTO `sys_job_log` VALUES (2368, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：3毫秒', '0', '', '2026-05-09 09:50:05', '2026-05-09 09:50:05', '2026-05-09 09:50:05');
INSERT INTO `sys_job_log` VALUES (2369, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:50:10', '2026-05-09 09:50:10', '2026-05-09 09:50:10');
INSERT INTO `sys_job_log` VALUES (2370, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:50:15', '2026-05-09 09:50:15', '2026-05-09 09:50:15');
INSERT INTO `sys_job_log` VALUES (2371, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:50:20', '2026-05-09 09:50:20', '2026-05-09 09:50:20');
INSERT INTO `sys_job_log` VALUES (2372, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:50:25', '2026-05-09 09:50:25', '2026-05-09 09:50:25');
INSERT INTO `sys_job_log` VALUES (2373, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:50:30', '2026-05-09 09:50:30', '2026-05-09 09:50:30');
INSERT INTO `sys_job_log` VALUES (2374, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:50:35', '2026-05-09 09:50:35', '2026-05-09 09:50:35');
INSERT INTO `sys_job_log` VALUES (2375, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:50:40', '2026-05-09 09:50:40', '2026-05-09 09:50:40');
INSERT INTO `sys_job_log` VALUES (2376, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:50:45', '2026-05-09 09:50:45', '2026-05-09 09:50:45');
INSERT INTO `sys_job_log` VALUES (2377, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:50:50', '2026-05-09 09:50:50', '2026-05-09 09:50:50');
INSERT INTO `sys_job_log` VALUES (2378, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:50:55', '2026-05-09 09:50:55', '2026-05-09 09:50:55');
INSERT INTO `sys_job_log` VALUES (2379, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:51:00', '2026-05-09 09:51:00', '2026-05-09 09:51:00');
INSERT INTO `sys_job_log` VALUES (2380, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:51:05', '2026-05-09 09:51:05', '2026-05-09 09:51:05');
INSERT INTO `sys_job_log` VALUES (2381, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:51:10', '2026-05-09 09:51:10', '2026-05-09 09:51:10');
INSERT INTO `sys_job_log` VALUES (2382, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:51:15', '2026-05-09 09:51:15', '2026-05-09 09:51:15');
INSERT INTO `sys_job_log` VALUES (2383, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:51:20', '2026-05-09 09:51:20', '2026-05-09 09:51:20');
INSERT INTO `sys_job_log` VALUES (2384, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:51:25', '2026-05-09 09:51:25', '2026-05-09 09:51:25');
INSERT INTO `sys_job_log` VALUES (2385, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:51:30', '2026-05-09 09:51:30', '2026-05-09 09:51:30');
INSERT INTO `sys_job_log` VALUES (2386, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:51:35', '2026-05-09 09:51:35', '2026-05-09 09:51:35');
INSERT INTO `sys_job_log` VALUES (2387, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-09 09:51:40', '2026-05-09 09:51:40', '2026-05-09 09:51:40');
INSERT INTO `sys_job_log` VALUES (2388, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：1毫秒', '0', '', '2026-05-09 09:51:45', '2026-05-09 09:51:45', '2026-05-09 09:51:45');
INSERT INTO `sys_job_log` VALUES (2389, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:51:50', '2026-05-09 09:51:50', '2026-05-09 09:51:50');
INSERT INTO `sys_job_log` VALUES (2390, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:51:55', '2026-05-09 09:51:55', '2026-05-09 09:51:55');
INSERT INTO `sys_job_log` VALUES (2391, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:00', '2026-05-09 09:52:00', '2026-05-09 09:52:00');
INSERT INTO `sys_job_log` VALUES (2392, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:05', '2026-05-09 09:52:05', '2026-05-09 09:52:05');
INSERT INTO `sys_job_log` VALUES (2393, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:10', '2026-05-09 09:52:10', '2026-05-09 09:52:10');
INSERT INTO `sys_job_log` VALUES (2394, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:15', '2026-05-09 09:52:15', '2026-05-09 09:52:15');
INSERT INTO `sys_job_log` VALUES (2395, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:20', '2026-05-09 09:52:20', '2026-05-09 09:52:20');
INSERT INTO `sys_job_log` VALUES (2396, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:25', '2026-05-09 09:52:25', '2026-05-09 09:52:25');
INSERT INTO `sys_job_log` VALUES (2397, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:30', '2026-05-09 09:52:30', '2026-05-09 09:52:30');
INSERT INTO `sys_job_log` VALUES (2398, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:35', '2026-05-09 09:52:35', '2026-05-09 09:52:35');
INSERT INTO `sys_job_log` VALUES (2399, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:40', '2026-05-09 09:52:40', '2026-05-09 09:52:40');
INSERT INTO `sys_job_log` VALUES (2400, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:45', '2026-05-09 09:52:45', '2026-05-09 09:52:45');
INSERT INTO `sys_job_log` VALUES (2401, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:52:50', '2026-05-09 09:52:50', '2026-05-09 09:52:50');
INSERT INTO `sys_job_log` VALUES (2402, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：2毫秒', '0', '', '2026-05-09 09:52:55', '2026-05-09 09:52:55', '2026-05-09 09:52:55');
INSERT INTO `sys_job_log` VALUES (2403, '输出时间', 'DEFAULT', 'myTask.showTime()', '输出时间 总共耗时：0毫秒', '0', '', '2026-05-09 09:53:00', '2026-05-09 09:53:00', '2026-05-09 09:53:00');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-07 16:06:11');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-07 16:47:59');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 08:33:53');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 10:23:15');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '退出成功', '2026-05-08 10:36:12');
INSERT INTO `sys_logininfor` VALUES (105, 'xiaozhi', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '1', '用户不存在/密码错误', '2026-05-08 10:36:20');
INSERT INTO `sys_logininfor` VALUES (106, 'xiaozhi', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 10:36:42');
INSERT INTO `sys_logininfor` VALUES (107, 'xiaozhi', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '退出成功', '2026-05-08 10:37:10');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 10:37:15');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '1', '验证码错误', '2026-05-08 13:53:06');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 13:53:11');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '1', '验证码错误', '2026-05-08 14:07:22');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 14:07:30');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '退出成功', '2026-05-08 14:31:23');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 14:31:27');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '退出成功', '2026-05-08 14:34:27');
INSERT INTO `sys_logininfor` VALUES (116, 'xiaozhi', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 14:34:42');
INSERT INTO `sys_logininfor` VALUES (117, 'xiaozhi', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '退出成功', '2026-05-08 14:35:46');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 14:35:50');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '退出成功', '2026-05-08 15:28:06');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 15:28:06');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 16:48:58');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-08 17:23:56');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 132', 'Windows10', '0', '登录成功', '2026-05-09 08:34:31');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Edge 147', 'Windows >=10', '0', '登录成功', '2026-05-09 03:30:03');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Edge 147', 'Windows >=10', '0', '登录成功', '2026-05-09 06:11:34');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Edge 147', 'Windows >=10', '0', '登录成功', '2026-05-09 07:21:02');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Edge 147', 'Windows >=10', '0', '登录成功', '2026-05-09 08:41:40');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-10 02:30:16');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-10 06:02:47');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Curl 8.19.0', '', '0', '登录成功', '2026-05-10 07:01:08');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-10 09:37:14');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-10 11:06:00');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-10 12:31:54');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-10 15:00:44');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-11 11:16:29');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-11 13:40:40');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '退出成功', '2026-05-11 14:26:15');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-11 14:26:17');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-11 15:18:38');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '退出成功', '2026-05-11 15:18:38');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-12 00:32:25');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-12 02:02:00');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-12 02:58:41');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-12 06:33:12');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-12 07:22:11');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '退出成功', '2026-05-12 07:22:11');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '登录成功', '2026-05-12 08:52:08');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Edge 148', 'Windows >=10', '0', '退出成功', '2026-05-12 08:52:08');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 10, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2026-05-07 14:50:20', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 11, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2026-05-07 14:50:20', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 12, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2026-05-07 14:50:20', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 13, 'http://ruoyi.vip', NULL, '', '', 0, 0, 'M', '1', '0', '', 'guide', 'admin', '2026-05-07 14:50:20', 'admin', '2026-05-08 15:24:15', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2026-05-07 14:50:20', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2026-05-07 14:50:20', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2026-05-07 14:50:20', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2026-05-07 14:50:20', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2026-05-07 14:50:20', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2026-05-07 14:50:20', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2026-05-07 14:50:20', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2026-05-07 14:50:20', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2026-05-07 14:50:20', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2026-05-07 14:50:20', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2026-05-07 14:50:20', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2026-05-07 14:50:20', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2026-05-07 14:50:20', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2026-05-07 14:50:20', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2026-05-07 14:50:20', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2026-05-07 14:50:20', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2026-05-07 14:50:20', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2026-05-07 14:50:20', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2026-05-07 14:50:20', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2026-05-07 14:50:20', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2026-05-07 14:50:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2026-05-07 14:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '课程管理', 0, 1, 'courseManager', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, 'education', 'admin', '2026-05-07 16:07:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '学生课查询', 2001, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:course:query', '#', 'admin', '2026-05-07 16:16:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '学生课新增', 2001, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:course:add', '#', 'admin', '2026-05-07 16:16:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '学生课修改', 2001, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:course:edit', '#', 'admin', '2026-05-07 16:16:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '学生课删除', 2001, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:course:remove', '#', 'admin', '2026-05-07 16:16:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '学生课导出', 2001, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:course:export', '#', 'admin', '2026-05-07 16:16:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '课表管理', 2000, 1, 'course', 'course/course/index', NULL, '', 1, 0, 'C', '0', '0', 'course:course:list', 'chart', 'admin', '2026-05-07 16:22:48', 'admin', '2026-05-12 02:35:52', '课表管理菜单');
INSERT INTO `sys_menu` VALUES (2008, '课表管理查询', 2007, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'course:course:query', '#', 'admin', '2026-05-07 16:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '课表管理新增', 2007, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'course:course:add', '#', 'admin', '2026-05-07 16:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '课表管理修改', 2007, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'course:course:edit', '#', 'admin', '2026-05-07 16:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '课表管理删除', 2007, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'course:course:remove', '#', 'admin', '2026-05-07 16:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '课表管理导出', 2007, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'course:course:export', '#', 'admin', '2026-05-07 16:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '课表管理修改', 2013, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'course:course:edit', '#', 'admin', '2026-05-07 17:03:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '课表管理删除', 2013, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'course:course:remove', '#', 'admin', '2026-05-07 17:03:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '课表管理导出', 2013, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'course:course:export', '#', 'admin', '2026-05-07 17:03:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '统计分析', 0, 2, 'countManager', NULL, NULL, '', 1, 0, 'M', '1', '0', '', 'chart', 'admin', '2026-05-08 10:30:11', 'admin', '2026-05-11 11:58:59', '');
INSERT INTO `sys_menu` VALUES (2020, '课表展示', 2000, 99, 'timetable', 'course/timetable/index', '', 'CourseTimetable', 1, 0, 'C', '0', '0', 'course:course:list', 'list', 'admin', '2026-05-08 15:34:26', 'admin', '2026-05-12 02:36:01', '课表周视图展示');
INSERT INTO `sys_menu` VALUES (2021, '笔记管理', 0, 3, 'noteManage', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'education', 'admin', '2026-05-09 09:00:13', 'admin', '2026-05-09 09:28:35', '');
INSERT INTO `sys_menu` VALUES (2022, '学习笔记', 2021, 1, 'note', 'note/note/index', NULL, '', 1, 0, 'C', '0', '0', 'note:note:list', 'log', 'admin', '2026-05-09 10:04:41', 'admin', '2026-05-12 02:36:14', '学习笔记菜单');
INSERT INTO `sys_menu` VALUES (2023, '学习笔记查询', 2022, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'note:note:query', '#', 'admin', '2026-05-09 10:04:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '学习笔记新增', 2022, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'note:note:add', '#', 'admin', '2026-05-09 10:04:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '学习笔记修改', 2022, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'note:note:edit', '#', 'admin', '2026-05-09 10:04:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '学习笔记删除', 2022, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'note:note:remove', '#', 'admin', '2026-05-09 10:04:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '学习笔记导出', 2022, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'note:note:export', '#', 'admin', '2026-05-09 10:04:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '笔记模板', 2021, 1, 'template', 'template/template/index', NULL, '', 1, 0, 'C', '0', '0', 'template:template:list', 'tab', 'admin', '2026-05-09 10:09:53', 'admin', '2026-05-12 02:36:31', '笔记模板菜单');
INSERT INTO `sys_menu` VALUES (2029, '笔记模板查询', 2028, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'template:template:query', '#', 'admin', '2026-05-09 10:09:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '笔记模板新增', 2028, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'template:template:add', '#', 'admin', '2026-05-09 10:09:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '笔记模板修改', 2028, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'template:template:edit', '#', 'admin', '2026-05-09 10:09:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '笔记模板删除', 2028, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'template:template:remove', '#', 'admin', '2026-05-09 10:09:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '笔记模板导出', 2028, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'template:template:export', '#', 'admin', '2026-05-09 10:09:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, 'AI 助手', 0, 4, 'agent', NULL, '', '', 1, 0, 'M', '0', '0', '', 'chat', 'admin', '2026-05-10 02:21:38', '', NULL, 'AI 智能助手目录');
INSERT INTO `sys_menu` VALUES (2042, 'AI 对话', 2041, 1, 'chat', 'agent/chat/index', '', '', 1, 0, 'C', '0', '0', 'agent:chat:list', 'chat', 'admin', '2026-05-10 02:21:38', '', NULL, 'AI 对话菜单');
INSERT INTO `sys_menu` VALUES (2043, 'AI 对话查询', 2042, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:chat:query', '#', 'admin', '2026-05-10 02:21:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, 'AI 对话新增', 2042, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:chat:add', '#', 'admin', '2026-05-10 02:21:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, 'AI 对话删除', 2042, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:chat:remove', '#', 'admin', '2026-05-10 02:21:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, 'Agent 管理', 2041, 2, 'manage', 'agent/manage/index', '', '', 1, 0, 'C', '0', '0', 'agent:manage:list', 'monitor', 'admin', '2026-05-10 06:44:49', '', NULL, 'Agent 管理菜单');
INSERT INTO `sys_menu` VALUES (2047, 'Agent 状态查询', 2046, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:manage:query', '#', 'admin', '2026-05-10 06:44:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, 'Agent 状态修改', 2046, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:manage:edit', '#', 'admin', '2026-05-10 06:44:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, 'Agent 配置修改', 2046, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:manage:config', '#', 'admin', '2026-05-10 06:44:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, 'Agent 会话删除', 2046, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:manage:remove', '#', 'admin', '2026-05-10 06:44:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, 'Agent 索引重建', 2046, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:manage:reindex', '#', 'admin', '2026-05-10 06:44:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '校园信息', 0, 4, 'campus', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, 'documentation', 'admin', '2026-05-10 07:04:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '校园知识分类', 2052, 1, 'type', 'knowledge/type/index', NULL, '', 1, 0, 'C', '0', '0', 'knowledge:type:list', 'education', 'admin', '2026-05-10 07:49:41', 'admin', '2026-05-11 12:06:49', '校园知识分类菜单');
INSERT INTO `sys_menu` VALUES (2054, '校园知识分类查询', 2053, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:type:query', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '校园知识分类新增', 2053, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:type:add', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '校园知识分类修改', 2053, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:type:edit', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '校园知识分类删除', 2053, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:type:remove', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '校园知识分类导出', 2053, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:type:export', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '校园知识内容', 2052, 1, 'knowledge', 'knowledge/knowledge/index', NULL, '', 1, 0, 'C', '0', '0', 'knowledge:knowledge:list', 'pdf', 'admin', '2026-05-10 07:49:41', 'admin', '2026-05-11 12:07:00', '校园知识内容菜单');
INSERT INTO `sys_menu` VALUES (2060, '校园知识内容查询', 2059, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:knowledge:query', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '校园知识内容新增', 2059, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:knowledge:add', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '校园知识内容修改', 2059, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:knowledge:edit', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2063, '校园知识内容删除', 2059, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:knowledge:remove', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '校园知识内容导出', 2059, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'knowledge:knowledge:export', '#', 'admin', '2026-05-10 07:49:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '后勤管理', 0, 5, 'logistics', NULL, '', '', 1, 0, 'M', '0', '0', '', 'form', 'admin', '2026-05-11 06:39:15', '', NULL, '后勤管理目录');
INSERT INTO `sys_menu` VALUES (2066, '水控管理', 2065, 1, 'water', 'water/water/index', NULL, '', 1, 0, 'C', '0', '0', 'water:water:list', '水控类', 'admin', '2026-05-11 06:39:16', 'admin', '2026-05-12 02:26:20', '水控管理菜单');
INSERT INTO `sys_menu` VALUES (2067, '水控管理查询', 2066, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'water:water:query', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2068, '水控管理新增', 2066, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'water:water:add', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '水控管理修改', 2066, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'water:water:edit', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '水控管理删除', 2066, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'water:water:remove', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2071, '水控管理导出', 2066, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'water:water:export', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2072, '电控管理', 2065, 1, 'electric', 'electric/electric/index', NULL, '', 1, 0, 'C', '0', '0', 'electric:electric:list', '电控柜-copy', 'admin', '2026-05-11 06:39:16', 'admin', '2026-05-12 02:26:29', '电控管理菜单');
INSERT INTO `sys_menu` VALUES (2073, '电控管理查询', 2072, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'electric:electric:query', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2074, '电控管理新增', 2072, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'electric:electric:add', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2075, '电控管理修改', 2072, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'electric:electric:edit', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2076, '电控管理删除', 2072, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'electric:electric:remove', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2077, '电控管理导出', 2072, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'electric:electric:export', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2078, '报修管理', 2065, 1, 'repair', 'repair/repair/index', NULL, '', 1, 0, 'C', '0', '0', 'repair:repair:list', '报修', 'admin', '2026-05-11 06:39:16', 'admin', '2026-05-12 02:26:36', '报修管理菜单');
INSERT INTO `sys_menu` VALUES (2079, '报修管理查询', 2078, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'repair:repair:query', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2080, '报修管理新增', 2078, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'repair:repair:add', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2081, '报修管理修改', 2078, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'repair:repair:edit', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2082, '报修管理删除', 2078, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'repair:repair:remove', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2083, '报修管理导出', 2078, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'repair:repair:export', '#', 'admin', '2026-05-11 06:39:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2084, '任务代办', 0, 10, 'task', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'clipboard', 'admin', '2026-05-11 06:56:51', 'admin', '2026-05-11 07:09:12', '');
INSERT INTO `sys_menu` VALUES (2085, '任务管理', 2084, 1, 'manage', 'task/task/index', NULL, '', 1, 0, 'C', '0', '0', 'task:task:list', 'list', 'admin', '2026-05-11 06:56:51', '', NULL, '任务管理菜单');
INSERT INTO `sys_menu` VALUES (2086, '代办提醒', 2084, 2, 'remind', 'task/remind/index', '', 'TaskRemind', 1, 0, 'C', '0', '0', 'task:task:list', 'tab', 'admin', '2026-05-11 06:56:51', 'admin', '2026-05-12 02:36:57', '代办提醒（月历）');
INSERT INTO `sys_menu` VALUES (2087, '任务管理查询', 2085, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'task:task:query', '#', 'admin', '2026-05-11 06:56:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2088, '任务管理新增', 2085, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'task:task:add', '#', 'admin', '2026-05-11 06:56:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2089, '任务管理修改', 2085, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'task:task:edit', '#', 'admin', '2026-05-11 06:56:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2090, '任务管理删除', 2085, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'task:task:remove', '#', 'admin', '2026-05-11 06:56:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2091, '任务管理导出', 2085, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'task:task:export', '#', 'admin', '2026-05-11 06:56:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2092, '学生管理', 0, 1, 'student', NULL, '', '', 1, 0, 'M', '0', '0', '', 'peoples', 'admin', '2026-05-11 11:44:29', '', NULL, '学生管理目录');
INSERT INTO `sys_menu` VALUES (2093, '学生信息', 2092, 1, 'students', 'student/index', '', '', 1, 0, 'C', '0', '0', 'student:info:list', 'user', 'admin', '2026-05-11 11:44:29', '', NULL, '学生信息菜单');
INSERT INTO `sys_menu` VALUES (2094, '学生信息查询', 2093, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:info:query', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2095, '学生信息新增', 2093, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:info:add', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2096, '学生信息修改', 2093, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:info:edit', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2097, '学生信息删除', 2093, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:info:remove', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2098, '学生信息导出', 2093, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:info:export', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2099, '成绩管理', 2092, 2, 'score', 'student/score/index', '', '', 1, 0, 'C', '0', '0', 'student:score:list', 'excel', 'admin', '2026-05-11 11:44:29', 'admin', '2026-05-12 02:35:25', '成绩管理菜单');
INSERT INTO `sys_menu` VALUES (2100, '成绩查询', 2099, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:score:query', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2101, '成绩新增', 2099, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:score:add', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2102, '成绩修改', 2099, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:score:edit', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2103, '成绩删除', 2099, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:score:remove', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2104, '成绩导出', 2099, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'student:score:export', '#', 'admin', '2026-05-11 11:44:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2105, '模型配置', 2041, 3, 'preset', 'agent/preset/index', '', '', 1, 0, 'C', '0', '0', 'agent:preset:list', 'system', 'admin', '2026-05-11 13:37:07', 'admin', '2026-05-12 02:35:06', 'AI 模型预设配置菜单');
INSERT INTO `sys_menu` VALUES (2106, '模型预设查询', 2105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:preset:query', '#', 'admin', '2026-05-11 13:37:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2107, '模型预设新增', 2105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:preset:add', '#', 'admin', '2026-05-11 13:37:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2108, '模型预设修改', 2105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:preset:edit', '#', 'admin', '2026-05-11 13:37:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2109, '模型预设删除', 2105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'agent:preset:remove', '#', 'admin', '2026-05-11 13:37:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2110, '报修上报', 2065, 4, 'report', 'report/report/index', NULL, '', 1, 0, 'C', '0', '0', 'repair:repair:list', 'tool', 'admin', '2026-05-12 02:25:47', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2026-05-07 14:50:34', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2026-05-07 14:50:35', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (3, '若依开源框架介绍', '1', 0x3C703E3C7370616E207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE9A1B9E79BAEE4BB8BE7BB8D3C2F7370616E3E3C2F703E3C703E3C666F6E7420636F6C6F723D2223333333333333223E52756F5969E5BC80E6BA90E9A1B9E79BAEE698AFE4B8BAE4BC81E4B89AE794A8E688B7E5AE9AE588B6E79A84E5908EE58FB0E8849AE6898BE69EB6E6A186E69EB6EFBC8CE4B8BAE4BC81E4B89AE68993E980A0E79A84E4B880E7AB99E5BC8FE8A7A3E586B3E696B9E6A188EFBC8CE9998DE4BD8EE4BC81E4B89AE5BC80E58F91E68890E69CACEFBC8CE68F90E58D87E5BC80E58F91E69588E78E87E38082E4B8BBE8A681E58C85E68BACE794A8E688B7E7AEA1E79086E38081E8A792E889B2E7AEA1E79086E38081E983A8E997A8E7AEA1E79086E38081E88F9CE58D95E7AEA1E79086E38081E58F82E695B0E7AEA1E79086E38081E5AD97E585B8E7AEA1E79086E380813C2F666F6E743E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE5B297E4BD8DE7AEA1E790863C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE38081E5AE9AE697B6E4BBBBE58AA13C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE380813C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE69C8DE58AA1E79B91E68EA7E38081E799BBE5BD95E697A5E5BF97E38081E6938DE4BD9CE697A5E5BF97E38081E4BBA3E7A081E7949FE68890E7AD89E58A9FE883BDE38082E585B6E4B8ADEFBC8CE8BF98E694AFE68C81E5A49AE695B0E68DAEE6BA90E38081E695B0E68DAEE69D83E99990E38081E59BBDE99985E58C96E380815265646973E7BC93E5AD98E38081446F636B6572E983A8E7BDB2E38081E6BB91E58AA8E9AA8CE8AF81E7A081E38081E7ACACE4B889E696B9E8AEA4E8AF81E799BBE5BD95E38081E58886E5B883E5BC8FE4BA8BE58AA1E380813C2F7370616E3E3C666F6E7420636F6C6F723D2223333333333333223EE58886E5B883E5BC8FE69687E4BBB6E5AD98E582A83C2F666F6E743E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE38081E58886E5BA93E58886E8A1A8E5A484E79086E7AD89E68A80E69CAFE789B9E782B9E380823C2F7370616E3E3C2F703E3C703E3C696D67207372633D2268747470733A2F2F666F727564612E67697465652E636F6D2F696D616765732F313737333933313834383334323433393033322F61346432323331335F313831353039352E706E6722207374796C653D2277696474683A20363470783B223E3C62723E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE5AE98E7BD91E58F8AE6BC94E7A4BA3C2F7370616E3E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE88BA5E4BE9DE5AE98E7BD91E59CB0E59D80EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F72756F79692E7669703C2F613E3C6120687265663D22687474703A2F2F72756F79692E76697022207461726765743D225F626C616E6B223E3C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE88BA5E4BE9DE69687E6A1A3E59CB0E59D80EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F646F632E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F646F632E72756F79692E7669703C2F613E3C62723E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E4B88DE58886E7A6BBE78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F64656D6F2E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F64656D6F2E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E58886E7A6BBE78988E69CACE38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F7675652E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F7675652E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E5BEAEE69C8DE58AA1E78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F636C6F75642E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F636C6F75642E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E7A7BBE58AA8E7ABAFE78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F68352E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F68352E72756F79692E7669703C2F613E3C2F703E3C703E3C6272207374796C653D22636F6C6F723A207267622834382C2034392C203531293B20666F6E742D66616D696C793A202671756F743B48656C766574696361204E6575652671756F743B2C2048656C7665746963612C20417269616C2C2073616E732D73657269663B20666F6E742D73697A653A20313270783B223E3C2F703E, '0', 'admin', '2026-05-07 14:50:35', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (10, '智慧通项目上线在即', '1', 0x3C703E3C7374726F6E673E3C656D3EE699BAE685A7E9809AE9A1B9E79BAEE5B086E4BA8EE4BA94E69C88E58D81E4BA94E4B88AE7BABF3C2F656D3E3C7370616E20636C6173733D22716C2D637572736F72223EEFBBBF3C2F7370616E3E3C2F7374726F6E673E3C2F703E, '0', 'admin', '2026-05-08 14:33:48', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_notice_read
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_read`;
CREATE TABLE `sys_notice_read`  (
  `read_id` bigint NOT NULL AUTO_INCREMENT COMMENT '已读主键',
  `notice_id` int NOT NULL COMMENT '公告id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `read_time` datetime NOT NULL COMMENT '阅读时间',
  PRIMARY KEY (`read_id`) USING BTREE,
  UNIQUE INDEX `uk_user_notice`(`user_id` ASC, `notice_id` ASC) USING BTREE COMMENT '同一用户同一公告只记录一次'
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '公告已读记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice_read
-- ----------------------------
INSERT INTO `sys_notice_read` VALUES (1, 10, 3, '2026-05-08 14:34:54');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 286 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.zhihuitong.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"课程管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"courseManager\",\"status\":\"0\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-07 16:07:38', 60);
INSERT INTO `sys_oper_log` VALUES (101, '保存菜单排序', 2, 'com.zhihuitong.web.controller.system.SysMenuController.updateSort()', 'PUT', 1, 'admin', '研发部门', '/system/menu/updateSort', '127.0.0.1', '内网IP', '{\"menuIds\":\"1,2,3,4\",\"orderNums\":\"10,11,12,13\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-07 16:07:58', 42);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 6, 'com.zhihuitong.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"stu_course\",\"tplWebType\":\"element-plus-typescript\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-07 16:09:43', 79);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":2,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Term\",\"columnComment\":\"学期标识（示例：2025-2026-1）\",\"columnId\":3,\"columnName\":\"term\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"term\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-07 16:11:50', 49);
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_course\"}', NULL, 0, NULL, '2026-05-07 16:12:05', 58);
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 16:11:50\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":2,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 16:11:50\",\"usableColumn\":false},{\"capJavaField\":\"Term\",\"columnComment\":\"学期标识（示例：2025-2026-1）\",\"columnId\":3,\"columnName\":\"term\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"term\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 16:11:50\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-07 16:18:34', 130);
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_course\"}', NULL, 0, NULL, '2026-05-07 16:18:37', 231);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 16:18:34\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":2,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 16:18:34\",\"usableColumn\":false},{\"capJavaField\":\"Term\",\"columnComment\":\"学期标识（示例：2025-2026-1）\",\"columnId\":3,\"columnName\":\"term\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"term\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 16:18:34\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-07 16:57:13', 57);
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2013', '127.0.0.1', '内网IP', '2013 ', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2026-05-07 17:04:49', 4);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 16:57:13\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":2,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 16:57:13\",\"usableColumn\":false},{\"capJavaField\":\"Term\",\"columnComment\":\"学期标识（示例：2025-2026-1）\",\"columnId\":3,\"columnName\":\"term\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"term\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 16:57:13\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-07 17:06:54', 30);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_course\"}', NULL, 0, NULL, '2026-05-07 17:08:31', 168);
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 1, 'com.zhihuitong.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"统计分析\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"countManager\",\"status\":\"0\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 10:30:11', 47);
INSERT INTO `sys_oper_log` VALUES (112, '角色管理', 1, 'com.zhihuitong.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2007,2008,2009,2010,2011,2012,2019],\"params\":{},\"roleId\":100,\"roleKey\":\"xiaozhi\",\"roleName\":\"普通角色1\",\"roleSort\":3,\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 10:33:51', 52);
INSERT INTO `sys_oper_log` VALUES (113, '用户管理', 1, 'com.zhihuitong.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"小智\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":100,\"userName\":\"xiaozhi\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 10:35:44', 77);
INSERT INTO `sys_oper_log` VALUES (114, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"星期几\",\"dictType\":\"course_week\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 11:44:48', 151);
INSERT INTO `sys_oper_log` VALUES (115, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"星期一\",\"dictSort\":1,\"dictType\":\"course_week\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 11:45:07', 17);
INSERT INTO `sys_oper_log` VALUES (116, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"星期二\",\"dictSort\":2,\"dictType\":\"course_week\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 11:45:17', 13);
INSERT INTO `sys_oper_log` VALUES (117, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"星期三\",\"dictSort\":3,\"dictType\":\"course_week\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 11:45:26', 13);
INSERT INTO `sys_oper_log` VALUES (118, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"星期四\",\"dictSort\":4,\"dictType\":\"course_week\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 11:45:33', 9);
INSERT INTO `sys_oper_log` VALUES (119, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"星期五\",\"dictSort\":5,\"dictType\":\"course_week\",\"dictValue\":\"5\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 11:45:44', 14);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 17:06:54\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":2,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 17:06:54\",\"usableColumn\":false},{\"capJavaField\":\"Term\",\"columnComment\":\"学期标识（示例：2025-2026-1）\",\"columnId\":3,\"columnName\":\"term\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"term\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-07 17:06:54\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 11:46:06', 128);
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_course\"}', NULL, 0, NULL, '2026-05-08 11:46:09', 645);
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 11:46:06\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":2,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 11:46:06\",\"usableColumn\":false},{\"capJavaField\":\"Term\",\"columnComment\":\"学期标识（示例：2025-2026-1）\",\"columnId\":3,\"columnName\":\"term\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"term\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 11:46:06\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 13:57:49', 68);
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_course\"}', NULL, 0, NULL, '2026-05-08 13:57:54', 96);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 13:57:49\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":2,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 13:57:49\",\"usableColumn\":false},{\"capJavaField\":\"Term\",\"columnComment\":\"学期标识（示例：2025-2026-1）\",\"columnId\":3,\"columnName\":\"term\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"term\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 13:57:49\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 14:26:00', 55);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 14:26:00\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":2,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 14:26:00\",\"usableColumn\":false},{\"capJavaField\":\"Term\",\"columnComment\":\"学期标识（示例：2025-2026-1）\",\"columnId\":3,\"columnName\":\"term\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"term\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 14:26:00\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 14:27:05', 44);
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_course\"}', NULL, 0, NULL, '2026-05-08 14:27:08', 108);
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"StuCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 14:27:05\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":2,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 14:27:05\",\"usableColumn\":false},{\"capJavaField\":\"Term\",\"columnComment\":\"学期标识（示例：2025-2026-1）\",\"columnId\":3,\"columnName\":\"term\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"term\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2026-05-08 14:27:05\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 16:09:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 14:28:04', 44);
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_course\"}', NULL, 0, NULL, '2026-05-08 14:28:06', 271);
INSERT INTO `sys_oper_log` VALUES (129, '参数管理', 2, 'com.zhihuitong.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2026-05-07 14:50:30\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 14:31:15', 105);
INSERT INTO `sys_oper_log` VALUES (130, '通知公告', 1, 'com.zhihuitong.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', '研发部门', '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"isRead\":false,\"noticeContent\":\"<p><strong><em>智慧通项目将于五月十五上线</em><span class=\\\"ql-cursor\\\">﻿</span></strong></p>\",\"noticeTitle\":\"智慧通项目上线在即\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 14:33:48', 38);
INSERT INTO `sys_oper_log` VALUES (131, '定时任务', 1, 'com.zhihuitong.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2026-05-08 14:40:15\",\"params\":{},\"status\":\"0\"} ', NULL, 1, 'No bean named \'myTask\' available', '2026-05-08 14:40:14', 23);
INSERT INTO `sys_oper_log` VALUES (132, '定时任务', 1, 'com.zhihuitong.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2026-05-08 14:43:45\",\"params\":{},\"status\":\"0\"} ', NULL, 1, 'No bean named \'myTask\' available', '2026-05-08 14:43:42', 39);
INSERT INTO `sys_oper_log` VALUES (133, '定时任务', 1, 'com.zhihuitong.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2026-05-08 14:46:05\",\"params\":{},\"status\":\"0\"} ', NULL, 1, 'No bean named \'myTask\' available', '2026-05-08 14:46:01', 5);
INSERT INTO `sys_oper_log` VALUES (134, '定时任务', 1, 'com.zhihuitong.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2026-05-08 14:47:35\",\"params\":{},\"status\":\"0\"} ', NULL, 1, 'No bean named \'myTask\' available', '2026-05-08 14:47:33', 3);
INSERT INTO `sys_oper_log` VALUES (135, '定时任务', 1, 'com.zhihuitong.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2026-05-08 14:47:40\",\"params\":{},\"status\":\"0\"} ', NULL, 1, 'No bean named \'myTask\' available', '2026-05-08 14:47:39', 2);
INSERT INTO `sys_oper_log` VALUES (136, '定时任务', 1, 'com.zhihuitong.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2026-05-08 14:50:15\",\"params\":{},\"status\":\"0\"} ', NULL, 1, 'No bean named \'myTask\' available', '2026-05-08 14:50:14', 26);
INSERT INTO `sys_oper_log` VALUES (137, '定时任务', 1, 'com.zhihuitong.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2026-05-08 14:50:45\",\"params\":{},\"status\":\"0\"} ', NULL, 1, 'No bean named \'myTask\' available', '2026-05-08 14:50:40', 1);
INSERT INTO `sys_oper_log` VALUES (138, '定时任务', 1, 'com.zhihuitong.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', '研发部门', '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"cronExpression\":\"0/5 * * * * ?\",\"invokeTarget\":\"myTask.showTime()\",\"jobGroup\":\"DEFAULT\",\"jobId\":100,\"jobName\":\"输出时间\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2026-05-08 14:51:35\",\"params\":{},\"status\":\"1\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 14:51:34', 215);
INSERT INTO `sys_oper_log` VALUES (139, '定时任务', 2, 'com.zhihuitong.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 14:51:48', 20);
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-07 14:50:20\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":13,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 15:24:15', 49);
INSERT INTO `sys_oper_log` VALUES (141, '个人信息', 2, 'com.zhihuitong.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"椰子\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-08 15:27:56', 19);
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 1, 'com.zhihuitong.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"B笔记管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"noteManage\",\"status\":\"0\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 09:00:13', 43);
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 6, 'com.zhihuitong.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"stu_note\",\"tplWebType\":\"element-plus-typescript\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 09:09:53', 63);
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"note\",\"className\":\"StuNote\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":14,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CourseId\",\"columnComment\":\"关联课程ID（可选，对应 stu_course.id）\",\"columnId\":15,\"columnName\":\"course_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"courseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CourseNameSnapshot\",\"columnComment\":\"课程名称快照（可选；课程被改名/删除后仍可显示）\",\"columnId\":16,\"columnName\":\"course_name_snapshot\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 09:20:23', 36);
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_note\"}', NULL, 0, NULL, '2026-05-09 09:20:33', 285);
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-09 09:00:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2021,\"menuName\":\"笔记管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"noteManage\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 09:28:35', 89);
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"note\",\"className\":\"StuNote\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-05-09 09:20:23\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":14,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-05-09 09:20:23\",\"usableColumn\":false},{\"capJavaField\":\"CourseId\",\"columnComment\":\"关联课程ID（可选，对应 stu_course.id）\",\"columnId\":15,\"columnName\":\"course_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"courseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-05-09 09:20:23\",\"usableColumn\":false},{\"capJavaField\":\"CourseNameSnapshot\",\"columnComment\":\"课程名称快照（可选；课程被改名/删除后仍可显示）\",\"columnId\":16,\"columnName\":\"course_name_snapshot\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 09:29:02', 208);
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_note\"}', NULL, 0, NULL, '2026-05-09 09:29:06', 362);
INSERT INTO `sys_oper_log` VALUES (149, '定时任务', 2, 'com.zhihuitong.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 09:53:02', 85);
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"note\",\"className\":\"StuNote\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-05-09 09:29:02\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（对应学号/用户ID）\",\"columnId\":14,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-05-09 09:29:02\",\"usableColumn\":false},{\"capJavaField\":\"CourseId\",\"columnComment\":\"关联课程ID（可选，对应 stu_course.id）\",\"columnId\":15,\"columnName\":\"course_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"courseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2026-05-09 09:29:02\",\"usableColumn\":false},{\"capJavaField\":\"CourseNameSnapshot\",\"columnComment\":\"课程名称快照（可选；课程被改名/删除后仍可显示）\",\"columnId\":16,\"columnName\":\"course_name_snapshot\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 09:09:53\",\"dictType\":\"\",\"edit\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:02:04', 217);
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_note\"}', NULL, 0, NULL, '2026-05-09 10:02:14', 431);
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 6, 'com.zhihuitong.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"stu_note_template\",\"tplWebType\":\"element-plus-typescript\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:07:28', 82);
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"template\",\"className\":\"StuNoteTemplate\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":23,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 10:07:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID（为空表示系统内置模板；不为空表示学生自定义模板）\",\"columnId\":24,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 10:07:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"模板名称\",\"columnId\":25,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 10:07:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"模板类型（CLASS/EXPERIMENT/INTERVIEW/CUSTOM）\",\"columnId\":26,\"columnName\":\"type\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-09 10:07:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:08:25', 56);
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_note_template\"}', NULL, 0, NULL, '2026-05-09 10:08:28', 108);
INSERT INTO `sys_oper_log` VALUES (155, '学习笔记', 1, 'com.zhihuitong.note.controller.StuNoteController.add()', 'POST', 1, 'admin', '研发部门', '/note/note', '127.0.0.1', '内网IP', '{\"content\":\"<p># 主题：</p><p>啊啊</p><p><br></p><p>## 问题</p><p>啊啊</p><p><br></p><p>## 我的回答（简版）</p><p><br></p><p>啊啊</p><p>## 标准答案/要点</p><p><br></p><p>- </p><p>啊啊</p><p><br></p><p>## 扩展追问</p><p><br></p><p>- 啊啊</p><p><br></p><p><br></p><p>## 相关链接/资料</p><p><br></p><p>- 啊啊</p><p><br></p>\",\"courseId\":1,\"courseNameSnapshot\":\"Java\",\"id\":6,\"params\":{},\"studentId\":1003,\"tags\":\"啊啊\",\"title\":\"无\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:14:21', 36);
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_note\"}', NULL, 0, NULL, '2026-05-09 10:27:54', 590);
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/stu_note', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:28:05', 223);
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"stu_note\"}', NULL, 0, NULL, '2026-05-09 10:28:07', 114);
INSERT INTO `sys_oper_log` VALUES (159, '学习笔记', 1, 'com.zhihuitong.note.controller.StuNoteController.add()', 'POST', 1, 'admin', '研发部门', '/note/note', '127.0.0.1', '内网IP', '{\"content\":\"<p># 实验名称：</p><p>啊啊</p><p><br></p><p>## 实验目的</p><p><br></p><p>- 啊啊</p><p><br></p><p><br></p><p>## 实验环境</p><p>啊啊</p><p>- OS：</p><p><br></p><p>- 语言/框架：</p><p>啊啊</p><p>- 依赖版本：</p><p><br></p><p>啊啊</p><p>## 实验步骤</p><p>啊啊</p><p>1. </p><p>啊啊</p><p>2. </p><p><br></p><p><br></p><p>## 关键代码/命令</p><p><br></p><p>```text</p><p>啊啊</p><p><br></p><p>```</p><p><br></p><p><br></p><p>## 结果与截图</p><p><br></p><p>- </p><p>啊啊</p><p><br></p><p>## 问题与解决</p><p><br></p><p>- 啊啊</p><p><br></p><p><br></p><p>## 总结</p><p>啊啊</p><p>- </p><p><br></p>\",\"courseId\":1,\"courseNameSnapshot\":\"Java\",\"coverImage\":\"/profile/upload/2026/05/09/3-1_20260509103216A001.jpg\",\"id\":6,\"params\":{},\"studentId\":1001,\"tags\":\"啊啊\",\"title\":\"1\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:32:49', 34);
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2035', '127.0.0.1', '内网IP', '2035 ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:36:43', 17);
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2036', '127.0.0.1', '内网IP', '2036 ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:36:46', 11);
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2037', '127.0.0.1', '内网IP', '2037 ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:36:48', 13);
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2038', '127.0.0.1', '内网IP', '2038 ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:36:52', 15);
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2039', '127.0.0.1', '内网IP', '2039 ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:36:54', 14);
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2034', '127.0.0.1', '内网IP', '2034 ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 10:36:57', 11);
INSERT INTO `sys_oper_log` VALUES (166, '学习笔记', 2, 'com.zhihuitong.note.controller.StuNoteController.edit()', 'PUT', 1, 'admin', '研发部门', '/note/note', '127.0.0.1', '内网IP', '{\"content\":\"<p># 实验名称：</p><p>啊啊</p><p><br></p><p>## 实验目的</p><p><br></p><p>- 啊啊</p><p><br></p><p><br></p><p>## 实验环境</p><p>啊啊</p><p>- OS：</p><p><br></p><p>- 语言/框架：</p><p>啊啊</p><p>- 依赖版本：</p><p><br></p><p>啊啊</p><p>## 实验步骤</p><p>啊啊</p><p>1. </p><p>啊啊</p><p>2. </p><p><br></p><p><br></p><p>## 关键代码/命令</p><p><br></p><p>```text</p><p>啊啊</p><p><br></p><p>```</p><p><br></p><p><br></p><p>## 结果与截图</p><p><br></p><p>- </p><p>啊啊</p><p><br></p><p>## 问题与解决</p><p><br></p><p>- 啊啊</p><p><br></p><p><br></p><p>## 总结</p><p>啊啊</p><p>- </p><p><br></p>\",\"courseId\":1,\"courseNameSnapshot\":\"Java\",\"coverImage\":\"https://cdn.moliya.love/Ossimages/2026/05/09/1778307150976.png\",\"createdAt\":\"2026-05-09\",\"id\":6,\"params\":{},\"studentId\":1001,\"tags\":\"啊啊\",\"title\":\"1\",\"updatedAt\":\"2026-05-09\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 06:12:35', 31);
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 1, 'com.zhihuitong.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学生管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"student\",\"status\":\"0\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-09 08:42:51', 45);
INSERT INTO `sys_oper_log` VALUES (168, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/5c6e00bb-c869-45ee-b757-75213973a8aa', '127.0.0.1', '内网IP', '\"5c6e00bb-c869-45ee-b757-75213973a8aa\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 02:54:59', 91);
INSERT INTO `sys_oper_log` VALUES (169, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/cf418a0c-d981-4fe9-9028-df4cd3292825', '127.0.0.1', '内网IP', '\"cf418a0c-d981-4fe9-9028-df4cd3292825\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 06:26:31', 311);
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 1, 'com.zhihuitong.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"校园信息\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"campus\",\"status\":\"0\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:04:45', 49);
INSERT INTO `sys_oper_log` VALUES (171, '创建表', 0, 'com.zhihuitong.generator.controller.GenController.createTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"tplWebType\":\"element-plus-typescript\",\"sql\":\"CREATE TABLE sys_campus_knowledge_type (\\n    id bigint NOT NULL AUTO_INCREMENT COMMENT \'主键ID\',\\n    type_name varchar(50) NOT NULL COMMENT \'分类名称：规章制度/办事流程/校风校纪/通告批评\',\\n    sort int DEFAULT 0 COMMENT \'排序号\',\\n    status char(1) DEFAULT \'0\' COMMENT \'状态 0正常 1停用\',\\n    create_time datetime DEFAULT CURRENT_TIMESTAMP,\\n    PRIMARY KEY (id)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=\'校园知识分类表\';\\n\\nCREATE TABLE sys_campus_knowledge (\\n    id bigint NOT NULL AUTO_INCREMENT COMMENT \'主键ID\',\\n    type_id bigint NOT NULL COMMENT \'分类ID\',\\n    title varchar(200) NOT NULL COMMENT \'知识标题\',\\n    content longtext COMMENT \'富文本正文内容\',\\n    file_url varchar(500) COMMENT \'附件地址（PDF/Word）\',\\n    status char(1) DEFAULT \'0\' COMMENT \'状态 0草稿 1已发布\',\\n    create_by varchar(64) DEFAULT \'\' COMMENT \'创建者\',\\n    create_time datetime DEFAULT CURRENT_TIMESTAMP,\\n    update_time datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,\\n    PRIMARY KEY (id)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=\'校园知识内容表\';\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:06:50', 308);
INSERT INTO `sys_oper_log` VALUES (172, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"规章制度\",\"dictType\":\"rules_regulations\",\"params\":{},\"remark\":\"这是校园的规章制度\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:11:47', 22);
INSERT INTO `sys_oper_log` VALUES (173, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"办事流程\",\"dictType\":\"workprocess\",\"params\":{},\"remark\":\"学校相关事项的办理流程\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:12:36', 14);
INSERT INTO `sys_oper_log` VALUES (174, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"校风校纪\",\"dictType\":\"schooldiscipline\",\"params\":{},\"remark\":\"校风校纪\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:13:08', 14);
INSERT INTO `sys_oper_log` VALUES (175, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"通告批评\",\"dictType\":\"criticismnotice\",\"params\":{},\"remark\":\"通告批评\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:13:39', 12);
INSERT INTO `sys_oper_log` VALUES (176, '字典类型', 2, 'com.zhihuitong.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:11:47\",\"dictId\":101,\"dictName\":\"校园知识\",\"dictType\":\"rules_regulations\",\"params\":{},\"remark\":\"这是校园的所有知识类型\",\"status\":\"0\",\"updateBy\":\"admin\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:23:59', 48);
INSERT INTO `sys_oper_log` VALUES (177, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"规章制度\",\"dictSort\":0,\"dictType\":\"rules_regulations\",\"dictValue\":\"rulesRegulations\",\"listClass\":\"default\",\"params\":{},\"remark\":\"这是校园的规章制度\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:24:46', 19);
INSERT INTO `sys_oper_log` VALUES (178, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"办事流程\",\"dictSort\":0,\"dictType\":\"rules_regulations\",\"dictValue\":\"workProcess\",\"listClass\":\"default\",\"params\":{},\"remark\":\"这是校园事项的操作流程\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:25:18', 13);
INSERT INTO `sys_oper_log` VALUES (179, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"校风校纪\",\"dictSort\":0,\"dictType\":\"rules_regulations\",\"dictValue\":\"schoolDiscipline\",\"listClass\":\"default\",\"params\":{},\"remark\":\"这是校风校纪\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:25:44', 13);
INSERT INTO `sys_oper_log` VALUES (180, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"通告批评\",\"dictSort\":0,\"dictType\":\"rules_regulations\",\"dictValue\":\"criticismNotice\",\"listClass\":\"default\",\"params\":{},\"remark\":\"这是有关的通告批评记录\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:26:16', 14);
INSERT INTO `sys_oper_log` VALUES (181, '字典类型', 3, 'com.zhihuitong.web.controller.system.SysDictTypeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dict/type/102', '127.0.0.1', '内网IP', '[102] ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:26:28', 19);
INSERT INTO `sys_oper_log` VALUES (182, '字典类型', 3, 'com.zhihuitong.web.controller.system.SysDictTypeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dict/type/103', '127.0.0.1', '内网IP', '[103] ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:26:30', 14);
INSERT INTO `sys_oper_log` VALUES (183, '字典类型', 3, 'com.zhihuitong.web.controller.system.SysDictTypeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dict/type/104', '127.0.0.1', '内网IP', '[104] ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:26:32', 15);
INSERT INTO `sys_oper_log` VALUES (184, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"校园信息\",\"dictType\":\"statue\",\"params\":{},\"remark\":\"校园信息是否发布\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:33:16', 14);
INSERT INTO `sys_oper_log` VALUES (185, '字典类型', 2, 'com.zhihuitong.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:33:16\",\"dictId\":105,\"dictName\":\"校园信息\",\"dictType\":\"statue\",\"params\":{},\"remark\":\"校园信息是否发布\",\"status\":\"0\",\"updateBy\":\"admin\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:33:22', 31);
INSERT INTO `sys_oper_log` VALUES (186, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"草稿\",\"dictSort\":0,\"dictType\":\"statue\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"remark\":\"没有发布\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:33:57', 12);
INSERT INTO `sys_oper_log` VALUES (187, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已发布\",\"dictSort\":0,\"dictType\":\"statue\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"已经发布了\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:34:07', 13);
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"knowledge\",\"className\":\"SysCampusKnowledge\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":33,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeId\",\"columnComment\":\"分类ID\",\"columnId\":34,\"columnName\":\"type_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"rules_regulations\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"typeId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"知识标题\",\"columnId\":35,\"columnName\":\"title\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"富文本正文内容\",\"columnId\":36,\"columnName\":\"content\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"jav', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:35:32', 77);
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"SysCampusKnowledgeType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":42,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeName\",\"columnComment\":\"分类名称：规章制度/办事流程/校风校纪/通告批评\",\"columnId\":43,\"columnName\":\"type_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"rules_regulations\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"typeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Sort\",\"columnComment\":\"排序号\",\"columnId\":44,\"columnName\":\"sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"sort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态 0正常 1停用\",\"columnId\":45,\"columnName\":\"status\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"statue\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:36:34', 33);
INSERT INTO `sys_oper_log` VALUES (190, '字典类型', 2, 'com.zhihuitong.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:11:47\",\"dictId\":101,\"dictName\":\"知识内容\",\"dictType\":\"sys_normal_disable\",\"params\":{},\"remark\":\"这是校园的所有知识类型\",\"status\":\"0\"} ', '{\"msg\":\"修改字典\'知识内容\'失败，字典类型已存在\",\"code\":500}', 0, NULL, '2026-05-10 07:41:45', 5);
INSERT INTO `sys_oper_log` VALUES (191, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"知识内容分类\",\"dictType\":\"sys_campus_knowledge_type\",\"params\":{},\"remark\":\"这是知识分类表的字典\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:42:44', 15);
INSERT INTO `sys_oper_log` VALUES (192, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"正常\",\"dictSort\":0,\"dictType\":\"sys_campus_knowledge_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"remark\":\"正常\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:43:09', 13);
INSERT INTO `sys_oper_log` VALUES (193, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"停用\",\"dictSort\":0,\"dictType\":\"sys_campus_knowledge_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:43:20', 12);
INSERT INTO `sys_oper_log` VALUES (194, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"知识内容\",\"dictType\":\"sys_campus_knowledge\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:43:52', 12);
INSERT INTO `sys_oper_log` VALUES (195, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"草稿\",\"dictSort\":0,\"dictType\":\"sys_campus_knowledge\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:44:03', 14);
INSERT INTO `sys_oper_log` VALUES (196, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已发布\",\"dictSort\":0,\"dictType\":\"sys_campus_knowledge\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:44:09', 12);
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"knowledge\",\"className\":\"SysCampusKnowledge\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":33,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2026-05-10 07:35:32\",\"usableColumn\":false},{\"capJavaField\":\"TypeId\",\"columnComment\":\"分类ID\",\"columnId\":34,\"columnName\":\"type_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"typeId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2026-05-10 07:35:32\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"知识标题\",\"columnId\":35,\"columnName\":\"title\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2026-05-10 07:35:32\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"富文本正文内容\",\"columnId\":36,\"columnName\":\"content\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:44:34', 42);
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 2, 'com.zhihuitong.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"SysCampusKnowledgeType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":42,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2026-05-10 07:36:34\",\"usableColumn\":false},{\"capJavaField\":\"TypeName\",\"columnComment\":\"分类名称：规章制度/办事流程/校风校纪/通告批评\",\"columnId\":43,\"columnName\":\"type_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"typeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2026-05-10 07:36:34\",\"usableColumn\":false},{\"capJavaField\":\"Sort\",\"columnComment\":\"排序号\",\"columnId\":44,\"columnName\":\"sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"sort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2026-05-10 07:36:34\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态 0正常 1停用\",\"columnId\":45,\"columnName\":\"status\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2026-05-10 07:06:50\",\"dictType\":\"sys_campus_knowledge_type\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-10 07:44:49', 29);
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_campus_knowledge\"}', NULL, 0, NULL, '2026-05-10 07:44:59', 277);
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 8, 'com.zhihuitong.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_campus_knowledge_type\"}', NULL, 0, NULL, '2026-05-10 07:45:01', 112);
INSERT INTO `sys_oper_log` VALUES (201, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Knowledge indexing complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-10 09:37:25', 234);
INSERT INTO `sys_oper_log` VALUES (202, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/f871625c-2314-42a1-aa92-442342f197e2', '127.0.0.1', '内网IP', '\"f871625c-2314-42a1-aa92-442342f197e2\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 09:37:36', 29);
INSERT INTO `sys_oper_log` VALUES (203, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/9870ebd7-0aef-4698-acfb-6b55599018eb', '127.0.0.1', '内网IP', '\"9870ebd7-0aef-4698-acfb-6b55599018eb\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 09:46:42', 21);
INSERT INTO `sys_oper_log` VALUES (204, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/776dbf6b-1db0-410c-ad74-5577dbf9e3e6', '127.0.0.1', '内网IP', '\"776dbf6b-1db0-410c-ad74-5577dbf9e3e6\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 11:53:27', 33);
INSERT INTO `sys_oper_log` VALUES (205, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/8b50a364-bf08-4ae1-a315-fde45b755497', '127.0.0.1', '内网IP', '\"8b50a364-bf08-4ae1-a315-fde45b755497\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 12:32:59', 33);
INSERT INTO `sys_oper_log` VALUES (206, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Knowledge indexing complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-10 12:39:28', 223);
INSERT INTO `sys_oper_log` VALUES (207, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/9bed71c3-af54-457f-8af2-f815dc870097', '127.0.0.1', '内网IP', '\"9bed71c3-af54-457f-8af2-f815dc870097\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 12:39:50', 19);
INSERT INTO `sys_oper_log` VALUES (208, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/0c9a76d9-5718-4776-a400-d65531702086', '127.0.0.1', '内网IP', '\"0c9a76d9-5718-4776-a400-d65531702086\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 12:53:31', 21);
INSERT INTO `sys_oper_log` VALUES (209, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Knowledge indexing complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-10 12:53:39', 96);
INSERT INTO `sys_oper_log` VALUES (210, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/e5355909-8068-4ce4-a4c7-89b8183da1f4', '127.0.0.1', '内网IP', '\"e5355909-8068-4ce4-a4c7-89b8183da1f4\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 12:59:22', 22);
INSERT INTO `sys_oper_log` VALUES (211, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Knowledge indexing complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-10 13:00:09', 115);
INSERT INTO `sys_oper_log` VALUES (212, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Knowledge indexing complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-10 13:04:11', 90);
INSERT INTO `sys_oper_log` VALUES (213, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/5b70e252-5328-4565-a31d-54bc1ebdd282', '127.0.0.1', '内网IP', '\"5b70e252-5328-4565-a31d-54bc1ebdd282\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-10 13:04:21', 20);
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2019', '127.0.0.1', '内网IP', '2019 ', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2026-05-10 14:01:12', 30);
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-11 06:56:51\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2084,\"menuName\":\"任务代办\",\"menuType\":\"M\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"task\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-11 07:09:12', 52);
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2040', '127.0.0.1', '内网IP', '2040 ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-11 11:16:46', 32);
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 3, 'com.zhihuitong.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2019', '127.0.0.1', '内网IP', '2019 ', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2026-05-11 11:58:37', 20);
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2026-05-08 10:30:11\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"统计分析\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"countManager\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-11 11:58:59', 44);
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"knowledge/type/index\",\"createTime\":\"2026-05-10 07:49:41\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2053,\"menuName\":\"校园知识分类\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2052,\"path\":\"type\",\"perms\":\"knowledge:type:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-11 12:06:49', 18);
INSERT INTO `sys_oper_log` VALUES (220, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"knowledge/knowledge/index\",\"createTime\":\"2026-05-10 07:49:41\",\"icon\":\"pdf\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2059,\"menuName\":\"校园知识内容\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2052,\"path\":\"knowledge\",\"perms\":\"knowledge:knowledge:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-11 12:07:00', 19);
INSERT INTO `sys_oper_log` VALUES (221, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Knowledge indexing complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-11 14:45:25', 324);
INSERT INTO `sys_oper_log` VALUES (222, '模型预设', 1, 'com.zhihuitong.agent.controller.AiModelPresetController.add()', 'POST', 1, 'admin', '研发部门', '/agent/preset', '127.0.0.1', '内网IP', '{\"anthropicBaseUrl\":\"\",\"anthropicModel\":\"\",\"apiKey\":\"\",\"createBy\":\"admin\",\"createTime\":\"2026-05-11 13:37:33\",\"icon\":\"custom\",\"id\":16,\"name\":\"DeepSeek V4 Pro\",\"ollamaBaseUrl\":\"http://localhost:11434\",\"ollamaModel\":\"\",\"openaiBaseUrl\":\"https://api.openai.com/v1\",\"openaiModel\":\"gpt-4o-mini\",\"params\":{},\"protocol\":\"anthropic\",\"provider\":\"anthropic\",\"remark\":\"DeepSeek V4的预览版本\",\"sortOrder\":20,\"status\":\"0\",\"updateBy\":\"\",\"updateTime\":\"2026-05-11 13:37:33\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-11 15:21:14', 31);
INSERT INTO `sys_oper_log` VALUES (223, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/1fe53b2c-8084-4d47-a24b-3a838b447f89', '127.0.0.1', '内网IP', '\"1fe53b2c-8084-4d47-a24b-3a838b447f89\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 00:33:09', 36);
INSERT INTO `sys_oper_log` VALUES (224, '模型预设', 1, 'com.zhihuitong.agent.controller.AiModelPresetController.add()', 'POST', 1, 'admin', '研发部门', '/agent/preset', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"icon\":\"custom\",\"id\":17,\"name\":\"DeepSeek V4\",\"params\":{},\"protocol\":\"anthropic\",\"provider\":\"anthropic\",\"remark\":\"\",\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 00:36:40', 24);
INSERT INTO `sys_oper_log` VALUES (225, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/4201e5cc-4c67-49c7-a69a-1934c6b8929a', '127.0.0.1', '内网IP', '\"4201e5cc-4c67-49c7-a69a-1934c6b8929a\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 00:38:21', 15);
INSERT INTO `sys_oper_log` VALUES (226, '模型预设', 2, 'com.zhihuitong.agent.controller.AiModelPresetController.edit()', 'PUT', 1, 'admin', '研发部门', '/agent/preset', '127.0.0.1', '内网IP', '{\"anthropicBaseUrl\":\"\",\"anthropicModel\":\"\",\"apiKey\":\"\",\"createBy\":\"admin\",\"createTime\":\"2026-05-12 00:36:40\",\"icon\":\"custom\",\"id\":17,\"name\":\"DeepSeek V4\",\"ollamaBaseUrl\":\"http://localhost:11434\",\"ollamaModel\":\"\",\"openaiBaseUrl\":\"\",\"openaiModel\":\"\",\"params\":{},\"protocol\":\"anthropic\",\"provider\":\"anthropic\",\"remark\":\"\",\"sortOrder\":0,\"status\":\"0\",\"updateBy\":\"admin\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 01:11:59', 18);
INSERT INTO `sys_oper_log` VALUES (227, 'AI 配置', 2, 'com.zhihuitong.agent.controller.AgentManageController.updateConfig()', 'PUT', 1, 'admin', '研发部门', '/agent/manage/config', '127.0.0.1', '内网IP', '{\"chunk_overlap\":50,\"chunk_size\":500,\"llm_provider\":\"anthropic\",\"system_prompt\":\"\"} ', '{\"msg\":\"更新 AI 配置失败: 500 Internal Server Error from PUT http://localhost:8000/config\",\"code\":500}', 0, NULL, '2026-05-12 01:12:09', 104);
INSERT INTO `sys_oper_log` VALUES (228, '模型预设', 2, 'com.zhihuitong.agent.controller.AiModelPresetController.edit()', 'PUT', 1, 'admin', '研发部门', '/agent/preset', '127.0.0.1', '内网IP', '{\"anthropicBaseUrl\":\"\",\"anthropicModel\":\"\",\"apiKey\":\"\",\"createBy\":\"admin\",\"createTime\":\"2026-05-12 00:36:40\",\"icon\":\"custom\",\"id\":17,\"name\":\"DeepSeek V4\",\"ollamaBaseUrl\":\"http://localhost:11434\",\"ollamaModel\":\"\",\"openaiBaseUrl\":\"\",\"openaiModel\":\"\",\"params\":{},\"protocol\":\"anthropic\",\"provider\":\"anthropic\",\"remark\":\"\",\"sortOrder\":0,\"status\":\"0\",\"updateBy\":\"admin\",\"updateTime\":\"2026-05-12 01:11:59\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 01:29:58', 41);
INSERT INTO `sys_oper_log` VALUES (229, '模型预设', 2, 'com.zhihuitong.agent.controller.AiModelPresetController.edit()', 'PUT', 1, 'admin', '研发部门', '/agent/preset', '127.0.0.1', '内网IP', '{\"anthropic_base_url\":\"https://api.deepseek.com/anthropic\",\"anthropic_model\":\"deepseek-v4-flash\",\"api_key\":\"sk-5cdd3c4764c841aba7952a4baadf3d5f\",\"createBy\":\"admin\",\"createTime\":\"2026-05-12 00:36:40\",\"icon\":\"custom\",\"id\":17,\"name\":\"DeepSeek V4\",\"ollama_base_url\":\"http://localhost:11434\",\"ollama_model\":\"\",\"openai_base_url\":\"\",\"openai_model\":\"\",\"params\":{},\"protocol\":\"anthropic\",\"provider\":\"anthropic\",\"remark\":\"\",\"sort_order\":0,\"status\":\"0\",\"updateBy\":\"admin\",\"updateTime\":\"2026-05-12 01:29:58\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:02:31', 32);
INSERT INTO `sys_oper_log` VALUES (230, 'AI 配置', 2, 'com.zhihuitong.agent.controller.AgentManageController.updateConfig()', 'PUT', 1, 'admin', '研发部门', '/agent/manage/config', '127.0.0.1', '内网IP', '{\"llm_api_key\":\"sk-5cdd3c4764c841aba7952a4baadf3d5f\",\"llm_base_url\":\"https://api.deepseek.com/anthropic\",\"llm_model\":\"deepseek-v4-flash\",\"llm_provider\":\"anthropic\"} ', '{\"msg\":\"AI 配置已更新\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"配置已更新\\\",\\\"data\\\":{\\\"llm_provider\\\":\\\"anthropic\\\",\\\"llm_api_key\\\":\\\"sk-5cdd3***\\\",\\\"llm_base_url\\\":\\\"https://api.deepseek.com/anthropic\\\",\\\"llm_model\\\":\\\"deepseek-v4-flash\\\",\\\"vector_store_path\\\":\\\"./data/vector_store\\\",\\\"chunk_size\\\":500,\\\"chunk_overlap\\\":50,\\\"host\\\":\\\"0.0.0.0\\\",\\\"port\\\":8000,\\\"system_prompt\\\":\\\"\\\",\\\"docstore_path\\\":\\\"./data/docstore.db\\\",\\\"tavily_api_key\\\":\\\"tvly-dev***\\\",\\\"tavily_api_url\\\":\\\"https://api.tavily.com/v1/search\\\",\\\"java_backend_url\\\":\\\"http://localhost:8080\\\",\\\"embedding_model\\\":\\\"BAAI/bge-large-zh-v1.5\\\",\\\"embedding_device\\\":\\\"cpu\\\"}}\"}', 0, NULL, '2026-05-12 02:02:34', 86);
INSERT INTO `sys_oper_log` VALUES (231, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/210127f7-2b3d-4308-a028-ba2e5e96bb0d', '127.0.0.1', '内网IP', '\"210127f7-2b3d-4308-a028-ba2e5e96bb0d\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 02:18:08', 15);
INSERT INTO `sys_oper_log` VALUES (232, '模型预设', 2, 'com.zhihuitong.agent.controller.AiModelPresetController.edit()', 'PUT', 1, 'admin', '研发部门', '/agent/preset', '127.0.0.1', '内网IP', '{\"anthropic_base_url\":\"https://api.deepseek.com/anthropic\",\"anthropic_model\":\"deepseek-v4-flash\",\"api_key\":\"sk-5cdd3c4764c841aba7952a4baadf3d5f\",\"createBy\":\"admin\",\"createTime\":\"2026-05-12 00:36:40\",\"icon\":\"custom\",\"id\":17,\"name\":\"DeepSeek V4\",\"ollama_base_url\":\"http://localhost:11434\",\"ollama_model\":\"\",\"openai_base_url\":\"\",\"openai_model\":\"\",\"params\":{},\"protocol\":\"anthropic\",\"provider\":\"anthropic\",\"remark\":\"\",\"sort_order\":0,\"status\":\"0\",\"updateBy\":\"admin\",\"updateTime\":\"2026-05-12 02:02:31\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:18:53', 10);
INSERT INTO `sys_oper_log` VALUES (233, 'AI 配置', 2, 'com.zhihuitong.agent.controller.AgentManageController.updateConfig()', 'PUT', 1, 'admin', '研发部门', '/agent/manage/config', '127.0.0.1', '内网IP', '{\"llm_api_key\":\"sk-5cdd3c4764c841aba7952a4baadf3d5f\",\"llm_base_url\":\"https://api.deepseek.com/anthropic\",\"llm_model\":\"deepseek-v4-flash\",\"llm_provider\":\"anthropic\"} ', '{\"msg\":\"AI 配置已更新\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"配置已更新\\\",\\\"data\\\":{\\\"llm_provider\\\":\\\"anthropic\\\",\\\"llm_api_key\\\":\\\"sk-5cdd3***\\\",\\\"llm_base_url\\\":\\\"https://api.deepseek.com/anthropic\\\",\\\"llm_model\\\":\\\"deepseek-v4-flash\\\",\\\"vector_store_path\\\":\\\"./data/vector_store\\\",\\\"chunk_size\\\":500,\\\"chunk_overlap\\\":50,\\\"host\\\":\\\"0.0.0.0\\\",\\\"port\\\":8000,\\\"system_prompt\\\":\\\"\\\",\\\"docstore_path\\\":\\\"./data/docstore.db\\\",\\\"tavily_api_key\\\":\\\"tvly-dev***\\\",\\\"tavily_api_url\\\":\\\"https://api.tavily.com/v1/search\\\",\\\"java_backend_url\\\":\\\"http://localhost:8080\\\",\\\"embedding_model\\\":\\\"BAAI/bge-large-zh-v1.5\\\",\\\"embedding_device\\\":\\\"cpu\\\"}}\"}', 0, NULL, '2026-05-12 02:18:56', 1016);
INSERT INTO `sys_oper_log` VALUES (234, '菜单管理', 1, 'com.zhihuitong.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"report/report/index\",\"createBy\":\"admin\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"报修上报\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2065,\"path\":\"report\",\"perms\":\"repair:repair:list\",\"status\":\"0\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:25:47', 37);
INSERT INTO `sys_oper_log` VALUES (235, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"water/water/index\",\"createTime\":\"2026-05-11 06:39:16\",\"icon\":\"水控类\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2066,\"menuName\":\"水控管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2065,\"path\":\"water\",\"perms\":\"water:water:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:26:20', 20);
INSERT INTO `sys_oper_log` VALUES (236, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"electric/electric/index\",\"createTime\":\"2026-05-11 06:39:16\",\"icon\":\"电控柜-copy\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2072,\"menuName\":\"电控管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2065,\"path\":\"electric\",\"perms\":\"electric:electric:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:26:29', 18);
INSERT INTO `sys_oper_log` VALUES (237, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"repair/repair/index\",\"createTime\":\"2026-05-11 06:39:16\",\"icon\":\"报修\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2078,\"menuName\":\"报修管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2065,\"path\":\"repair\",\"perms\":\"repair:repair:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:26:36', 19);
INSERT INTO `sys_oper_log` VALUES (238, '角色管理', 2, 'com.zhihuitong.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2026-05-07 14:50:19\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[2065,2079,2080,2081,2110,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:27:07', 66);
INSERT INTO `sys_oper_log` VALUES (239, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/1b149b40-4d57-458c-83e8-41db4061bd54', '127.0.0.1', '内网IP', '\"1b149b40-4d57-458c-83e8-41db4061bd54\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 02:34:24', 26);
INSERT INTO `sys_oper_log` VALUES (240, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"agent/preset/index\",\"createTime\":\"2026-05-11 13:37:07\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2105,\"menuName\":\"模型配置\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2041,\"path\":\"preset\",\"perms\":\"agent:preset:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:35:06', 17);
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"student/score/index\",\"createTime\":\"2026-05-11 11:44:29\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2099,\"menuName\":\"成绩管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2092,\"path\":\"score\",\"perms\":\"student:score:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:35:25', 17);
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"course/course/index\",\"createTime\":\"2026-05-07 16:22:48\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"课表管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"course\",\"perms\":\"course:course:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:35:52', 22);
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"course/timetable/index\",\"createTime\":\"2026-05-08 15:34:26\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"课表展示\",\"menuType\":\"C\",\"orderNum\":99,\"params\":{},\"parentId\":2000,\"path\":\"timetable\",\"perms\":\"course:course:list\",\"query\":\"\",\"routeName\":\"CourseTimetable\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:36:01', 15);
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"note/note/index\",\"createTime\":\"2026-05-09 10:04:41\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2022,\"menuName\":\"学习笔记\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2021,\"path\":\"note\",\"perms\":\"note:note:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:36:14', 19);
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"template/template/index\",\"createTime\":\"2026-05-09 10:09:53\",\"icon\":\"tab\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2028,\"menuName\":\"笔记模板\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2021,\"path\":\"template\",\"perms\":\"template:template:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:36:31', 16);
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 2, 'com.zhihuitong.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"task/remind/index\",\"createTime\":\"2026-05-11 06:56:51\",\"icon\":\"tab\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2086,\"menuName\":\"代办提醒\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2084,\"path\":\"remind\",\"perms\":\"task:task:list\",\"query\":\"\",\"routeName\":\"TaskRemind\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 02:36:57', 15);
INSERT INTO `sys_oper_log` VALUES (247, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"设备状态\",\"dictType\":\"logistic_use_status\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:00:41', 21);
INSERT INTO `sys_oper_log` VALUES (248, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"正常\",\"dictSort\":0,\"dictType\":\"logistic_use_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:01:15', 21);
INSERT INTO `sys_oper_log` VALUES (249, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"异常\",\"dictSort\":0,\"dictType\":\"logistic_use_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:01:22', 16);
INSERT INTO `sys_oper_log` VALUES (250, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"离线\",\"dictSort\":0,\"dictType\":\"logistic_use_status\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:01:28', 12);
INSERT INTO `sys_oper_log` VALUES (251, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"报修类型\",\"dictType\":\"repair_type\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:03:19', 13);
INSERT INTO `sys_oper_log` VALUES (252, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"水控\",\"dictSort\":0,\"dictType\":\"repair_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:03:46', 13);
INSERT INTO `sys_oper_log` VALUES (253, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"电控\",\"dictSort\":0,\"dictType\":\"repair_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:03:53', 14);
INSERT INTO `sys_oper_log` VALUES (254, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"其他\",\"dictSort\":0,\"dictType\":\"repair_type\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:03:59', 14);
INSERT INTO `sys_oper_log` VALUES (255, '字典类型', 1, 'com.zhihuitong.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"报修状态\",\"dictType\":\"repair_status\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:04:36', 10);
INSERT INTO `sys_oper_log` VALUES (256, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"待处理\",\"dictSort\":0,\"dictType\":\"repair_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:04:57', 12);
INSERT INTO `sys_oper_log` VALUES (257, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"处理中\",\"dictSort\":0,\"dictType\":\"repair_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:05:17', 12);
INSERT INTO `sys_oper_log` VALUES (258, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已完成\",\"dictSort\":0,\"dictType\":\"repair_status\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:05:26', 12);
INSERT INTO `sys_oper_log` VALUES (259, '字典数据', 1, 'com.zhihuitong.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已取消\",\"dictSort\":0,\"dictType\":\"repair_status\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:05:33', 14);
INSERT INTO `sys_oper_log` VALUES (260, '字典类型', 2, 'com.zhihuitong.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2026-05-12 03:00:41\",\"dictId\":108,\"dictName\":\"使用状态\",\"dictType\":\"logistic_use_status\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:09:06', 28);
INSERT INTO `sys_oper_log` VALUES (261, '字典类型', 2, 'com.zhihuitong.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2026-05-12 03:00:41\",\"dictId\":108,\"dictName\":\"使用状态\",\"dictType\":\"logistics_use_status\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"} ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-05-12 03:18:04', 29);
INSERT INTO `sys_oper_log` VALUES (262, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/bbc1c615-9281-457f-8e65-7d1c042d55b8', '127.0.0.1', '内网IP', '\"bbc1c615-9281-457f-8e65-7d1c042d55b8\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 06:33:17', 36);
INSERT INTO `sys_oper_log` VALUES (263, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/4ea74821-5ba3-45d2-bd50-14f8ad924f41', '127.0.0.1', '内网IP', '\"4ea74821-5ba3-45d2-bd50-14f8ad924f41\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 06:36:54', 18);
INSERT INTO `sys_oper_log` VALUES (264, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Knowledge indexing complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-12 06:54:15', 618);
INSERT INTO `sys_oper_log` VALUES (265, 'AI 管理', 2, 'com.zhihuitong.agent.controller.AgentManageController.setConcurrency()', 'PUT', 1, 'admin', '研发部门', '/agent/manage/concurrency', '127.0.0.1', '内网IP', '{\"maxConcurrency\":2} ', '{\"msg\":\"最大并发数已设置为 2\",\"code\":200}', 0, NULL, '2026-05-12 06:54:25', 2);
INSERT INTO `sys_oper_log` VALUES (266, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/ae7421ad-d9d5-4510-b12c-5554a1a1f9cc', '127.0.0.1', '内网IP', '\"ae7421ad-d9d5-4510-b12c-5554a1a1f9cc\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 06:54:35', 15);
INSERT INTO `sys_oper_log` VALUES (267, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.reindexAll()', 'POST', 1, 'admin', '研发部门', '/agent/rag/reindex/all', '127.0.0.1', '内网IP', '', '{\"msg\":\"全量重建索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Full reindex complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-12 06:55:55', 331);
INSERT INTO `sys_oper_log` VALUES (268, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.reindexAll()', 'POST', 1, 'admin', '研发部门', '/agent/rag/reindex/all', '127.0.0.1', '内网IP', '', '{\"msg\":\"全量重建索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Full reindex complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-12 07:02:50', 341);
INSERT INTO `sys_oper_log` VALUES (269, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.reindexAll()', 'POST', 1, 'admin', '研发部门', '/agent/rag/reindex/all', '127.0.0.1', '内网IP', '', '{\"msg\":\"全量重建索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Full reindex complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-12 07:14:07', 512);
INSERT INTO `sys_oper_log` VALUES (270, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.reindexAll()', 'POST', 1, 'admin', '研发部门', '/agent/rag/reindex/all', '127.0.0.1', '内网IP', '', '{\"msg\":\"全量重建索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Full reindex complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-12 07:14:39', 466);
INSERT INTO `sys_oper_log` VALUES (271, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.reindexAll()', 'POST', 1, 'admin', '研发部门', '/agent/rag/reindex/all', '127.0.0.1', '内网IP', '', '{\"msg\":\"全量重建索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Full reindex complete\\\",\\\"data\\\":{\\\"total\\\":0,\\\"indexed\\\":0,\\\"skipped\\\":0,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-12 07:22:20', 341);
INSERT INTO `sys_oper_log` VALUES (272, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.reindexAll()', 'POST', 1, 'admin', '研发部门', '/agent/rag/reindex/all', '127.0.0.1', '内网IP', '', '{\"msg\":\"全量重建索引失败: null\",\"code\":500}', 0, NULL, '2026-05-12 07:30:15', 30008);
INSERT INTO `sys_oper_log` VALUES (273, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/1c8f5fcc-6d09-409b-bb2c-17e9279d0a4f', '127.0.0.1', '内网IP', '\"1c8f5fcc-6d09-409b-bb2c-17e9279d0a4f\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 07:31:02', 19);
INSERT INTO `sys_oper_log` VALUES (274, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引完成\",\"code\":200,\"data\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"Knowledge indexing complete\\\",\\\"data\\\":{\\\"total\\\":49,\\\"indexed\\\":0,\\\"skipped\\\":49,\\\"errors\\\":0}}\"}', 0, NULL, '2026-05-12 07:39:58', 12339);
INSERT INTO `sys_oper_log` VALUES (275, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引失败: null\",\"code\":500}', 0, NULL, '2026-05-12 07:55:48', 30049);
INSERT INTO `sys_oper_log` VALUES (276, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/5801c2a8-fe81-486c-ae5d-9fcf363bb27a', '127.0.0.1', '内网IP', '\"5801c2a8-fe81-486c-ae5d-9fcf363bb27a\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 07:57:07', 29);
INSERT INTO `sys_oper_log` VALUES (277, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引失败: null\",\"code\":500}', 0, NULL, '2026-05-12 08:05:45', 30004);
INSERT INTO `sys_oper_log` VALUES (278, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/ca971086-686b-4559-994c-50458e1557a8', '127.0.0.1', '内网IP', '\"ca971086-686b-4559-994c-50458e1557a8\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 08:06:57', 19);
INSERT INTO `sys_oper_log` VALUES (279, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引完成\",\"code\":200,\"data\":{\"total\":49,\"indexed\":0,\"skipped\":49,\"errors\":0}}', 0, NULL, '2026-05-12 08:16:54', 102);
INSERT INTO `sys_oper_log` VALUES (280, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/0f13836d-0288-4715-a3c1-f231862b2874', '127.0.0.1', '内网IP', '\"0f13836d-0288-4715-a3c1-f231862b2874\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 08:17:06', 25);
INSERT INTO `sys_oper_log` VALUES (281, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/8ee14106-3ece-4d3a-9421-ba696352af48', '127.0.0.1', '内网IP', '\"8ee14106-3ece-4d3a-9421-ba696352af48\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 08:25:04', 29);
INSERT INTO `sys_oper_log` VALUES (282, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引失败: null\",\"code\":500}', 0, NULL, '2026-05-12 08:27:07', 30026);
INSERT INTO `sys_oper_log` VALUES (283, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/fb03c0a3-2208-4b19-863f-8cb9192020d1', '127.0.0.1', '内网IP', '\"fb03c0a3-2208-4b19-863f-8cb9192020d1\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 08:27:42', 16);
INSERT INTO `sys_oper_log` VALUES (284, 'RAG 索引', 2, 'com.zhihuitong.agent.controller.AgentRagController.indexKnowledge()', 'POST', 1, 'admin', '研发部门', '/agent/rag/index/knowledge', '127.0.0.1', '内网IP', '', '{\"msg\":\"知识库索引失败: null\",\"code\":500}', 0, NULL, '2026-05-12 08:53:08', 30005);
INSERT INTO `sys_oper_log` VALUES (285, 'AI 聊天', 3, 'com.zhihuitong.agent.controller.AgentChatController.deleteMemory()', 'DELETE', 1, 'admin', '研发部门', '/agent/chat/memory/fd22a780-1eb8-4903-8c0f-19d0a3ebfa16', '127.0.0.1', '内网IP', '\"fd22a780-1eb8-4903-8c0f-19d0a3ebfa16\" ', '{\"msg\":\"{\\\"code\\\":200,\\\"msg\\\":\\\"记忆已清除\\\",\\\"data\\\":null}\",\"code\":200}', 0, NULL, '2026-05-12 08:53:48', 21);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2026-05-07 14:50:18', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2026-05-07 14:50:18', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2026-05-07 14:50:18', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2026-05-07 14:50:18', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2026-05-07 14:50:19', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 0, 1, '0', '0', 'admin', '2026-05-07 14:50:19', 'admin', '2026-05-12 02:27:07', '普通角色');
INSERT INTO `sys_role` VALUES (3, '普通角色1', 'xiaozhi', 3, '1', 1, 1, '0', '0', 'admin', '2026-05-08 10:33:51', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2020);
INSERT INTO `sys_role_menu` VALUES (1, 2041);
INSERT INTO `sys_role_menu` VALUES (1, 2042);
INSERT INTO `sys_role_menu` VALUES (1, 2043);
INSERT INTO `sys_role_menu` VALUES (1, 2044);
INSERT INTO `sys_role_menu` VALUES (1, 2045);
INSERT INTO `sys_role_menu` VALUES (1, 2046);
INSERT INTO `sys_role_menu` VALUES (1, 2047);
INSERT INTO `sys_role_menu` VALUES (1, 2048);
INSERT INTO `sys_role_menu` VALUES (1, 2049);
INSERT INTO `sys_role_menu` VALUES (1, 2050);
INSERT INTO `sys_role_menu` VALUES (1, 2051);
INSERT INTO `sys_role_menu` VALUES (1, 2084);
INSERT INTO `sys_role_menu` VALUES (1, 2085);
INSERT INTO `sys_role_menu` VALUES (1, 2086);
INSERT INTO `sys_role_menu` VALUES (1, 2087);
INSERT INTO `sys_role_menu` VALUES (1, 2088);
INSERT INTO `sys_role_menu` VALUES (1, 2089);
INSERT INTO `sys_role_menu` VALUES (1, 2090);
INSERT INTO `sys_role_menu` VALUES (1, 2091);
INSERT INTO `sys_role_menu` VALUES (1, 2105);
INSERT INTO `sys_role_menu` VALUES (1, 2106);
INSERT INTO `sys_role_menu` VALUES (1, 2107);
INSERT INTO `sys_role_menu` VALUES (1, 2108);
INSERT INTO `sys_role_menu` VALUES (1, 2109);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 2065);
INSERT INTO `sys_role_menu` VALUES (2, 2079);
INSERT INTO `sys_role_menu` VALUES (2, 2080);
INSERT INTO `sys_role_menu` VALUES (2, 2081);
INSERT INTO `sys_role_menu` VALUES (2, 2110);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2019);

-- ----------------------------
-- Table structure for sys_score
-- ----------------------------
DROP TABLE IF EXISTS `sys_score`;
CREATE TABLE `sys_score`  (
  `score_id` bigint NOT NULL AUTO_INCREMENT COMMENT '成绩ID',
  `student_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `course_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程名称',
  `score_value` decimal(5, 1) NULL DEFAULT NULL COMMENT '成绩',
  `full_score` decimal(5, 1) NULL DEFAULT 100.0 COMMENT '满分',
  `exam_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '考试类型（0期中考试 1期末考试 2月考 3平时成绩）',
  `exam_date` date NULL DEFAULT NULL COMMENT '考试时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`score_id`) USING BTREE,
  INDEX `idx_score_student`(`student_no` ASC) USING BTREE,
  INDEX `idx_score_exam_type`(`exam_type` ASC) USING BTREE,
  INDEX `idx_score_exam_date`(`exam_date` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '成绩信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_score
-- ----------------------------

-- ----------------------------
-- Table structure for sys_student
-- ----------------------------
DROP TABLE IF EXISTS `sys_student`;
CREATE TABLE `sys_student`  (
  `student_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号（主键）',
  `user_id` bigint NULL DEFAULT NULL COMMENT '关联系统用户ID',
  `student_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `id_card` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '性别（0男 1女）',
  `grade` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '年级',
  `class_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班级',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '住址',
  `enrollment_date` date NULL DEFAULT NULL COMMENT '入学日期',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`student_no`) USING BTREE,
  INDEX `idx_student_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_student_grade`(`grade` ASC) USING BTREE,
  INDEX `idx_student_class`(`class_name` ASC) USING BTREE,
  INDEX `idx_student_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_student
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '椰子', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2026-05-12 16:52:08', '2026-05-07 14:50:17', 'admin', '2026-05-07 14:50:17', '', '2026-05-08 15:27:56', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2026-05-07 14:50:17', '2026-05-07 14:50:17', 'admin', '2026-05-07 14:50:17', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (3, NULL, 'xiaozhi', '小智', '00', '', '', '0', '', '$2a$10$sLIOrBV4/4yCXIqvRC2ezuDVYSXcIQj6y2X4IfuVs6bhyr7d/YAQe', '0', '0', '127.0.0.1', '2026-05-08 14:34:42', NULL, 'admin', '2026-05-08 10:35:44', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 3);

SET FOREIGN_KEY_CHECKS = 1;
