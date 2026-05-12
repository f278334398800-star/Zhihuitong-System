-- 模型配置菜单（若依 sys_menu 表）
-- 前提：已执行 agent_menu.sql 创建了 "AI 助手" 一级菜单
-- 执行此 SQL 后，AI 助手目录下会显示 "模型配置" 菜单项

SET @agent_menu_id = (SELECT menu_id FROM sys_menu WHERE menu_name = 'AI 助手' AND menu_type = 'M' LIMIT 1);

-- 二级菜单：模型配置（order_num=3，排在 AI 对话=1 和 Agent 管理=2 之后）
INSERT INTO sys_menu (menu_name, parent_id, order_num, path, component, query, route_name, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, remark)
VALUES ('模型配置', @agent_menu_id, 3, 'preset', 'agent/preset/index', '', '', 1, 0, 'C', '0', 0, 'agent:preset:list', 'model', 'admin', NOW(), 'AI 模型预设配置菜单');

-- 按钮权限
SET @preset_menu_id = LAST_INSERT_ID();

INSERT INTO sys_menu (menu_name, parent_id, order_num, path, component, query, route_name, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, remark)
VALUES ('模型预设查询', @preset_menu_id, 1, '#', '', '', '', 1, 0, 'F', '0', 0, 'agent:preset:query', '#', 'admin', NOW(), '');

INSERT INTO sys_menu (menu_name, parent_id, order_num, path, component, query, route_name, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, remark)
VALUES ('模型预设新增', @preset_menu_id, 2, '#', '', '', '', 1, 0, 'F', '0', 0, 'agent:preset:add', '#', 'admin', NOW(), '');

INSERT INTO sys_menu (menu_name, parent_id, order_num, path, component, query, route_name, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, remark)
VALUES ('模型预设修改', @preset_menu_id, 3, '#', '', '', '', 1, 0, 'F', '0', 0, 'agent:preset:edit', '#', 'admin', NOW(), '');

INSERT INTO sys_menu (menu_name, parent_id, order_num, path, component, query, route_name, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, remark)
VALUES ('模型预设删除', @preset_menu_id, 4, '#', '', '', '', 1, 0, 'F', '0', 0, 'agent:preset:remove', '#', 'admin', NOW(), '');
