<template>
  <div class="preset-manage">
    <!-- 页面标题 -->
    <div class="page-header" :class="{ 'is-visible': headerVisible }">
      <div class="header-content">
        <div class="header-icon">
          <el-icon :size="28"><Box /></el-icon>
        </div>
        <div class="header-text">
          <h1>模型配置中心</h1>
          <p>管理已配置模型，选择预设模板快速配置，或自定义添加新模型</p>
        </div>
      </div>
      <div class="header-actions">
        <el-button :icon="Refresh" circle @click="refreshAll" :loading="refreshing" />
      </div>
    </div>

    <!-- 主要内容区 -->
    <div class="content-grid">
      <!-- 当前运行配置 -->
      <transition name="card-slide" appear>
        <div v-if="cardsVisible[0]" class="card current-config-card" :style="{ '--delay': '0.05s' }">
          <div class="card-header">
            <div class="card-title">
              <el-icon class="title-icon"><Monitor /></el-icon>
              <span>当前运行配置</span>
              <el-tag v-if="activePresetName" type="success" size="small" effect="plain" class="active-preset-tag">
                {{ activePresetName }}
              </el-tag>
            </div>
            <el-button size="small" @click="fetchCurrentConfig" :loading="refreshing">
              <el-icon><Refresh /></el-icon>
            </el-button>
          </div>
          <div class="card-body">
            <div v-if="currentConfig.llm_model" class="config-grid">
              <div class="config-item">
                <div class="config-label">协议</div>
                <div class="config-value">
                  <el-tag :type="getProviderTagType(currentConfig.llm_provider)" size="small">
                    {{ getProviderLabel(currentConfig.llm_provider) }}
                  </el-tag>
                </div>
              </div>
              <div class="config-item">
                <div class="config-label">模型</div>
                <div class="config-value model-name">{{ currentConfig.llm_model }}</div>
              </div>
              <div class="config-item">
                <div class="config-label">API 地址</div>
                <div class="config-value api-url">{{ currentConfig.llm_base_url || '默认' }}</div>
              </div>
              <div class="config-item">
                <div class="config-label">API Key</div>
                <div class="config-value">{{ maskApiKey(currentConfig.llm_api_key) }}</div>
              </div>
            </div>
            <div v-else class="config-empty">
              <el-icon :size="32"><WarningFilled /></el-icon>
              <span>尚未配置任何模型，请从下方已配置模型中启用一个</span>
            </div>
          </div>
        </div>
      </transition>

      <!-- 已配置模型列表 -->
      <transition name="card-slide" appear>
        <div v-if="cardsVisible[1]" class="card configured-card" :style="{ '--delay': '0.15s' }">
          <div class="card-header">
            <div class="card-title">
              <el-icon class="title-icon"><List /></el-icon>
              <span>已配置模型</span>
              <el-tag type="info" size="small" effect="plain" class="count-tag">{{ allPresets.length }}</el-tag>
            </div>
            <div class="header-right">
              <el-input
                v-model="searchKeyword"
                placeholder="搜索模型..."
                clearable
                size="small"
                class="search-input"
                :prefix-icon="Search"
              />
              <el-button type="primary" size="small" @click="handleAdd">
                <el-icon><Plus /></el-icon>
                自定义添加
              </el-button>
            </div>
          </div>
          <div class="card-body">
            <el-table
              :data="filteredPresets"
              stripe
              highlight-current-row
              class="models-table"
              empty-text="暂无已配置模型，请添加或从预设模板中选择"
            >
              <el-table-column width="50" align="center">
                <template #default="{ row }">
                  <div class="table-icon" :style="getIconStyle(row.icon)">
                    <span class="table-icon-text">{{ getIconLabel(row.icon) }}</span>
                  </div>
                </template>
              </el-table-column>
              <el-table-column prop="name" label="名称" min-width="140">
                <template #default="{ row }">
                  <div class="model-name-cell">
                    <span class="name-text">{{ row.name }}</span>
                    <el-tag v-if="isActivePreset(row)" type="success" size="small" effect="dark" class="running-tag">
                      运行中
                    </el-tag>
                  </div>
                </template>
              </el-table-column>
              <el-table-column label="协议" width="110" align="center">
                <template #default="{ row }">
                  <el-tag :type="getProviderTagType(row.protocol || row.provider)" size="small" effect="plain">
                    {{ getProviderLabel(row.protocol || row.provider) }}
                  </el-tag>
                </template>
              </el-table-column>
              <el-table-column label="模型" min-width="180">
                <template #default="{ row }">
                  <span class="model-id-text">{{ getModelName(row) }}</span>
                </template>
              </el-table-column>
              <el-table-column label="API 地址" min-width="200">
                <template #default="{ row }">
                  <span class="api-url-text">{{ getBaseUrl(row) || '默认' }}</span>
                </template>
              </el-table-column>
              <el-table-column label="备注" prop="remark" min-width="120" show-overflow-tooltip />
              <el-table-column label="操作" width="240" align="center" fixed="right">
                <template #default="{ row }">
                  <el-button
                    v-if="!isActivePreset(row)"
                    type="primary"
                    size="small"
                    link
                    @click="handleEnable(row)"
                    :loading="enablingId === row.id"
                  >
                    <el-icon><Check /></el-icon>
                    启用
                  </el-button>
                  <el-button
                    v-else
                    type="success"
                    size="small"
                    link
                    disabled
                  >
                    <el-icon><CircleCheckFilled /></el-icon>
                    当前使用
                  </el-button>
                  <el-button type="primary" size="small" link @click="openEditDialog(row)">
                    <el-icon><Edit /></el-icon>
                    编辑
                  </el-button>
                  <el-button type="danger" size="small" link @click="handleDelete(row)">
                    <el-icon><Delete /></el-icon>
                    删除
                  </el-button>
                </template>
              </el-table-column>
            </el-table>
          </div>
        </div>
      </transition>

    </div>

    <!-- 编辑对话框 -->
    <el-dialog
      :title="dialogTitle"
      v-model="dialogVisible"
      width="520px"
      append-to-body
      destroy-on-close
    >
      <el-form
        ref="formRef"
        :model="form"
        :rules="rules"
        label-width="80px"
        class="edit-form"
      >
        <el-form-item label="名称" prop="name">
          <el-input v-model="form.name" placeholder="模型显示名称" />
        </el-form-item>

        <el-form-item label="协议" prop="protocol">
          <el-radio-group v-model="form.protocol" @change="onProtocolChange">
            <el-radio-button value="openai">OpenAI</el-radio-button>
            <el-radio-button value="anthropic">Anthropic</el-radio-button>
            <el-radio-button value="ollama">Ollama</el-radio-button>
          </el-radio-group>
        </el-form-item>

        <!-- OpenAI 协议配置 -->
        <template v-if="form.protocol === 'openai'">
          <el-form-item label="模型" prop="openai_model">
            <el-input v-model="form.openai_model" placeholder="如: gpt-4o, deepseek-chat" />
          </el-form-item>
          <el-form-item label="API 地址" prop="openai_base_url">
            <el-input v-model="form.openai_base_url" placeholder="如: https://api.openai.com/v1" />
          </el-form-item>
        </template>

        <!-- Anthropic 协议配置 -->
        <template v-if="form.protocol === 'anthropic'">
          <el-form-item label="模型" prop="anthropic_model">
            <el-input v-model="form.anthropic_model" placeholder="如: claude-sonnet-4-20250514" />
          </el-form-item>
          <el-form-item label="API 地址" prop="anthropic_base_url">
            <el-input v-model="form.anthropic_base_url" placeholder="留空使用官方地址" />
          </el-form-item>
        </template>

        <!-- Ollama 配置 -->
        <template v-if="form.protocol === 'ollama'">
          <el-form-item label="模型" prop="ollama_model">
            <el-input v-model="form.ollama_model" placeholder="如: qwen2.5:7b" />
          </el-form-item>
          <el-form-item label="API 地址" prop="ollama_base_url">
            <el-input v-model="form.ollama_base_url" placeholder="http://localhost:11434" />
          </el-form-item>
        </template>

        <el-form-item label="API Key" prop="api_key">
          <el-input
            v-model="form.api_key"
            type="password"
            show-password
            placeholder="该模型的 API Key"
          />
        </el-form-item>

        <el-form-item label="备注">
          <el-input v-model="form.remark" type="textarea" :rows="2" placeholder="可选备注" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button @click="dialogVisible = false">取消</el-button>
          <el-button type="primary" :loading="submitLoading" @click="submitForm">
            {{ isEdit ? '保存修改' : '添加配置' }}
          </el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup lang="ts">
import { ref, reactive, computed, onMounted } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'
import {
  Box,
  Refresh,
  Plus,
  Delete,
  Check,
  Monitor,
  Search,
  List,
  Edit,
  WarningFilled,
  CircleCheckFilled
} from '@element-plus/icons-vue'
import {
  listModelPreset,
  addModelPreset,
  updateModelPreset,
  delModelPreset,
  updateAiConfig,
  getAiConfig
} from '@/api/agent/manage'
import type { AiModelPreset } from '@/api/agent/manage'

// 入场动画控制
const headerVisible = ref(false)
const cardsVisible = ref([false, false])

// 加载状态
const refreshing = ref(false)
const submitLoading = ref(false)
const enablingId = ref<number | null>(null)

// 数据
const allPresets = ref<AiModelPreset[]>([])
const searchKeyword = ref('')

// 当前配置
const currentConfig = ref({
  llm_provider: '',
  llm_model: '',
  llm_base_url: '',
  llm_api_key: ''
})

// 当前激活的预设名称
const activePresetName = computed(() => {
  if (!currentConfig.value.llm_model) return ''
  const active = allPresets.value.find(p => isActivePreset(p))
  return active?.name || ''
})

// 搜索过滤
const filteredPresets = computed(() => {
  if (!searchKeyword.value) return allPresets.value
  const keyword = searchKeyword.value.toLowerCase()
  return allPresets.value.filter(p =>
    p.name.toLowerCase().includes(keyword) ||
    p.remark?.toLowerCase().includes(keyword) ||
    getModelName(p)?.toLowerCase().includes(keyword)
  )
})

// 对话框
const dialogVisible = ref(false)
const dialogTitle = ref('')
const formRef = ref()
const isEdit = ref(false)

const defaultForm = (): AiModelPreset => ({
  id: 0,
  name: '',
  provider: 'openai',
  protocol: 'openai',
  openai_model: '',
  openai_base_url: '',
  anthropic_model: '',
  anthropic_base_url: '',
  ollama_model: '',
  ollama_base_url: '',
  api_key: '',
  icon: 'custom',
  sort_order: 100,
  status: '0',
  remark: ''
})

const form = reactive<AiModelPreset>(defaultForm())

const rules = {
  name: [{ required: true, message: '请输入模型名称', trigger: 'blur' }],
  protocol: [{ required: true, message: '请选择协议', trigger: 'change' }],
  api_key: [{ required: true, message: '请输入 API Key', trigger: 'blur' }]
}

// 图标样式映射
const iconStyleMap: Record<string, { bg: string }> = {
  openai: { bg: 'linear-gradient(135deg, #10b981 0%, #34d399 100%)' },
  anthropic: { bg: 'linear-gradient(135deg, #f97316 0%, #fb923c 100%)' },
  deepseek: { bg: 'linear-gradient(135deg, #3b82f6 0%, #60a5fa 100%)' },
  qwen: { bg: 'linear-gradient(135deg, #8b5cf6 0%, #a78bfa 100%)' },
  zhipu: { bg: 'linear-gradient(135deg, #ef4444 0%, #f87171 100%)' },
  kimi: { bg: 'linear-gradient(135deg, #06b6d4 0%, #22d3ee 100%)' },
  baidu: { bg: 'linear-gradient(135deg, #3b82f6 0%, #2563eb 100%)' },
  doubao: { bg: 'linear-gradient(135deg, #f59e0b 0%, #fbbf24 100%)' },
  spark: { bg: 'linear-gradient(135deg, #ec4899 0%, #f472b6 100%)' },
  ollama: { bg: 'linear-gradient(135deg, #6b7280 0%, #9ca3af 100%)' },
  custom: { bg: 'linear-gradient(135deg, #a855f7 0%, #c084fc 100%)' }
}

const iconLabelMap: Record<string, string> = {
  openai: 'AI',
  anthropic: 'An',
  deepseek: 'DS',
  qwen: 'Qw',
  zhipu: 'GL',
  kimi: 'Ki',
  baidu: 'Er',
  doubao: 'Db',
  spark: 'Sp',
  ollama: 'Ol',
  custom: 'Cu'
}

const getIconStyle = (icon: string) => {
  const style = iconStyleMap[icon] || iconStyleMap.custom
  return { background: style.bg }
}

const getIconLabel = (icon: string) => {
  return iconLabelMap[icon] || icon?.substring(0, 2)?.toUpperCase() || 'AI'
}

const getProviderTagType = (provider: string) => {
  const map: Record<string, string> = {
    openai: 'success',
    anthropic: 'warning',
    ollama: 'info'
  }
  return (map[provider] || 'info') as any
}

const getProviderLabel = (provider: string) => {
  const map: Record<string, string> = {
    openai: 'OpenAI',
    anthropic: 'Anthropic',
    ollama: 'Ollama'
  }
  return map[provider] || provider || '未知'
}

const getModelName = (preset: AiModelPreset) => {
  const protocol = preset.protocol || preset.provider
  if (protocol === 'openai') return preset.openai_model
  if (protocol === 'anthropic') return preset.anthropic_model
  if (protocol === 'ollama') return preset.ollama_model
  return ''
}

const getBaseUrl = (preset: AiModelPreset) => {
  const protocol = preset.protocol || preset.provider
  if (protocol === 'openai') return preset.openai_base_url
  if (protocol === 'anthropic') return preset.anthropic_base_url
  if (protocol === 'ollama') return preset.ollama_base_url
  return ''
}

const maskApiKey = (key: string) => {
  if (!key) return '未配置'
  if (key.length <= 8) return '***'
  return key.substring(0, 4) + '****' + key.substring(key.length - 4)
}

const isActivePreset = (preset: AiModelPreset) => {
  const protocol = preset.protocol || preset.provider
  const model = getModelName(preset)
  return currentConfig.value.llm_provider === protocol && currentConfig.value.llm_model === model
}

// 获取数据
const fetchPresets = async () => {
  try {
    const res = await listModelPreset({})
    allPresets.value = res.rows || []
  } catch (error) {
    console.error('获取预设列表失败:', error)
    ElMessage.error('获取预设列表失败')
  }
}

const fetchCurrentConfig = async () => {
  try {
    const res = await getAiConfig()
    if (res && typeof res === 'object') {
      // 处理可能的嵌套响应结构
      const data = (res as any).data !== undefined ? (res as any).data : res
      if (typeof data === 'string') {
        try {
          currentConfig.value = JSON.parse(data)
        } catch {
          currentConfig.value = data as any
        }
      } else if (data && typeof data === 'object') {
        currentConfig.value = data as any
      }
    }
  } catch (error) {
    console.error('获取当前配置失败:', error)
  }
}

const refreshAll = async () => {
  refreshing.value = true
  await Promise.all([fetchPresets(), fetchCurrentConfig()])
  refreshing.value = false
}

// 启用模型 - 将预设配置应用为当前运行配置
const handleEnable = async (preset: AiModelPreset) => {
  const protocol = preset.protocol || preset.provider
  const model = getModelName(preset)
  const baseUrl = getBaseUrl(preset)

  if (!preset.api_key && protocol !== 'ollama') {
    ElMessage.warning('该模型未配置 API Key，请先编辑补充')
    return
  }

  if (!getBaseUrl(preset) && protocol !== 'ollama') {
    ElMessage.warning('该模型未配置 API 地址，请先编辑补充')
    return
  }

  await ElMessageBox.confirm(
    `确定要启用模型 "${preset.name}" (${model}) 作为当前运行配置吗？`,
    '启用模型',
    { type: 'info', confirmButtonText: '确认启用', cancelButtonText: '取消' }
  )

  enablingId.value = preset.id
  try {
    await updateAiConfig({
      llm_provider: protocol,
      llm_model: model,
      llm_base_url: baseUrl || '',
      llm_api_key: preset.api_key || '',
      chunk_size: undefined,
      chunk_overlap: undefined,
      system_prompt: undefined
    })
    ElMessage.success(`模型 "${preset.name}" 已启用`)
    await fetchCurrentConfig()
  } catch (error: any) {
    console.error('启用模型失败:', error)
    const msg = error?.message || error?.response?.data?.detail || '启用模型失败'
    ElMessage.error(msg)
  } finally {
    enablingId.value = null
  }
}

// 删除模型
const handleDelete = async (preset: AiModelPreset) => {
  await ElMessageBox.confirm(
    `确定要删除模型配置 "${preset.name}" 吗？`,
    '删除确认',
    { type: 'warning', confirmButtonText: '确认删除', cancelButtonText: '取消' }
  )

  try {
    await delModelPreset(String(preset.id))
    ElMessage.success('删除成功')
    await fetchPresets()
  } catch (error) {
    console.error('删除失败:', error)
    ElMessage.error('删除失败')
  }
}

// 打开编辑对话框
const openEditDialog = (preset: AiModelPreset) => {
  Object.assign(form, { ...preset })
  if (!form.protocol) {
    form.protocol = form.provider
  }
  dialogTitle.value = '编辑模型配置'
  isEdit.value = !!preset.id
  dialogVisible.value = true
}

// 新增自定义模型
const handleAdd = () => {
  Object.assign(form, defaultForm())
  dialogTitle.value = '自定义添加模型'
  isEdit.value = false
  dialogVisible.value = true
}

// 协议变更时的处理
const onProtocolChange = (protocol: string) => {
  form.provider = protocol
}

// 提交表单
const submitForm = async () => {
  try {
    await formRef.value?.validate()
  } catch {
    return
  }

  submitLoading.value = true
  try {
    const formData = { ...form }
    if (isEdit.value) {
      await updateModelPreset(formData as AiModelPreset)
      ElMessage.success('保存成功')
    } else {
      await addModelPreset(formData as AiModelPreset)
      ElMessage.success('添加成功')
    }
    dialogVisible.value = false
    await fetchPresets()
  } catch (error) {
    console.error('提交表单失败:', error)
    ElMessage.error(isEdit.value ? '保存失败' : '添加失败')
  } finally {
    submitLoading.value = false
  }
}

// 入场动画
const startEntryAnimation = () => {
  headerVisible.value = true
  cardsVisible.value.forEach((_, index) => {
    setTimeout(() => {
      cardsVisible.value[index] = true
    }, 100 + index * 100)
  })
}

// 生命周期
onMounted(async () => {
  startEntryAnimation()
  await Promise.all([fetchPresets(), fetchCurrentConfig()])
})
</script>

<style scoped lang="scss">
.preset-manage {
  min-height: 100vh;
  padding: 20px;
  background: linear-gradient(135deg, #f5f7fa 0%, #e4e8ec 100%);
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
}

// 页面标题
.page-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
  padding: 16px 24px;
  background: #ffffff;
  border-radius: 12px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
  transform: translateY(-20px);
  opacity: 0;
  transition: all 0.6s cubic-bezier(0.16, 1, 0.3, 1);

  &.is-visible {
    transform: translateY(0);
    opacity: 1;
  }

  .header-content {
    display: flex;
    align-items: center;
    gap: 12px;
  }

  .header-icon {
    width: 44px;
    height: 44px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    border-radius: 12px;
    color: #ffffff;
    box-shadow: 0 4px 12px rgba(102, 126, 234, 0.3);
  }

  .header-text {
    h1 {
      margin: 0;
      font-size: 18px;
      font-weight: 600;
      color: #1a1a2e;
    }

    p {
      margin: 2px 0 0;
      font-size: 13px;
      color: #6b7280;
    }
  }
}

// 内容网格
.content-grid {
  display: flex;
  flex-direction: column;
  gap: 16px;
}

// 卡片通用样式
.card {
  background: #ffffff;
  border-radius: 12px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
  overflow: hidden;
  transition: all 0.3s ease;

  &:hover {
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  }

  .card-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 12px 16px;
    border-bottom: 1px solid #f0f0f0;
  }

  .card-title {
    display: flex;
    align-items: center;
    gap: 8px;
    font-size: 14px;
    font-weight: 600;
    color: #1a1a2e;

    .title-icon {
      font-size: 16px;
    }

    .count-tag {
      margin-left: 4px;
    }

    .active-preset-tag {
      margin-left: 8px;
    }
  }

  .card-body {
    padding: 16px;
  }
}

// 当前配置卡片
.current-config-card {
  .card-title .title-icon {
    color: #3b82f6;
  }

  .config-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 12px;

    @media (max-width: 768px) {
      grid-template-columns: repeat(2, 1fr);
    }
  }

  .config-item {
    padding: 10px 12px;
    background: #f8fafc;
    border-radius: 8px;
    border: 1px solid #e2e8f0;
  }

  .config-label {
    font-size: 11px;
    color: #64748b;
    margin-bottom: 4px;
  }

  .config-value {
    font-size: 13px;
    color: #1e293b;
    font-weight: 500;

    &.model-name {
      font-family: 'SF Mono', Monaco, 'Cascadia Code', monospace;
      color: #0ea5e9;
      font-size: 12px;
    }

    &.api-url {
      font-size: 11px;
      color: #64748b;
      font-family: 'SF Mono', Monaco, 'Cascadia Code', monospace;
      word-break: break-all;
    }
  }

  .config-empty {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    padding: 16px;
    color: #f59e0b;
    background: #fffbeb;
    border-radius: 8px;
    border: 1px solid #fde68a;
    font-size: 13px;
  }
}

// 已配置模型卡片
.configured-card {
  .card-title .title-icon {
    color: #667eea;
  }

  .header-right {
    display: flex;
    align-items: center;
    gap: 8px;
  }

  .search-input {
    width: 180px;
  }

  .models-table {
    width: 100%;

    :deep(.el-table__header th) {
      background: #f8fafc;
      color: #475569;
      font-weight: 600;
      font-size: 13px;
    }

    :deep(.el-table__row) {
      cursor: default;
    }
  }

  .table-icon {
    width: 32px;
    height: 32px;
    border-radius: 6px;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  }

  .table-icon-text {
    font-size: 11px;
    font-weight: 700;
    color: #ffffff;
    letter-spacing: 0.5px;
  }

  .model-name-cell {
    display: flex;
    align-items: center;
    gap: 6px;
  }

  .name-text {
    font-weight: 600;
    color: #1a1a2e;
    font-size: 13px;
  }

  .running-tag {
    flex-shrink: 0;
  }

  .model-id-text {
    font-family: 'SF Mono', Monaco, 'Cascadia Code', monospace;
    font-size: 12px;
    color: #0ea5e9;
  }

  .api-url-text {
    font-family: 'SF Mono', Monaco, 'Cascadia Code', monospace;
    font-size: 11px;
    color: #64748b;
    word-break: break-all;
  }
}

// 编辑对话框表单
.edit-form {
  :deep(.el-form-item__label) {
    color: #4b5563;
    font-weight: 500;
  }

  :deep(.el-radio-button__inner) {
    padding: 8px 16px;
  }
}

.dialog-footer {
  display: flex;
  justify-content: flex-end;
  gap: 8px;
}

// 动画
.card-slide-enter-active {
  transition: all 0.6s cubic-bezier(0.16, 1, 0.3, 1);
  transition-delay: var(--delay, 0s);
}

.card-slide-enter-from {
  opacity: 0;
  transform: translateY(20px) scale(0.98);
}

// 响应式调整
@media (max-width: 768px) {
  .preset-manage {
    padding: 12px;
  }

  .page-header {
    flex-direction: column;
    gap: 12px;
    text-align: center;

    .header-content {
      flex-direction: column;
    }
  }
}
</style>
