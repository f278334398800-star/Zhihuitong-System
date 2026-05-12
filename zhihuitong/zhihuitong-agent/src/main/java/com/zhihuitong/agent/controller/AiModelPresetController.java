package com.zhihuitong.agent.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.zhihuitong.agent.domain.AiModelPreset;
import com.zhihuitong.agent.service.IAiModelPresetService;
import com.zhihuitong.common.annotation.Log;
import com.zhihuitong.common.core.controller.BaseController;
import com.zhihuitong.common.core.domain.AjaxResult;
import com.zhihuitong.common.core.page.TableDataInfo;
import com.zhihuitong.common.enums.BusinessType;

/**
 * AI 模型预设配置 Controller
 */
@RestController
@RequestMapping("/agent/preset")
public class AiModelPresetController extends BaseController {

    @Autowired
    private IAiModelPresetService presetService;

    /**
     * 查询预设列表（分页）
     */
    @PreAuthorize("@ss.hasPermi('agent:preset:list')")
    @GetMapping("/list")
    public TableDataInfo list(AiModelPreset preset) {
        startPage();
        List<AiModelPreset> list = presetService.selectAiModelPresetList(preset);
        return getDataTable(list);
    }

    /**
     * 查询预设详情
     */
    @PreAuthorize("@ss.hasPermi('agent:preset:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable Long id) {
        return success(presetService.selectAiModelPresetById(id));
    }

    /**
     * 新增预设
     */
    @PreAuthorize("@ss.hasPermi('agent:preset:add')")
    @Log(title = "模型预设", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody AiModelPreset preset) {
        preset.setCreateBy(getUsername());
        return toAjax(presetService.insertAiModelPreset(preset));
    }

    /**
     * 修改预设
     */
    @PreAuthorize("@ss.hasPermi('agent:preset:edit')")
    @Log(title = "模型预设", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody AiModelPreset preset) {
        preset.setUpdateBy(getUsername());
        return toAjax(presetService.updateAiModelPreset(preset));
    }

    /**
     * 删除预设
     */
    @PreAuthorize("@ss.hasPermi('agent:preset:remove')")
    @Log(title = "模型预设", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(presetService.deleteAiModelPresetByIds(ids));
    }
}
