package com.zhihuitong.agent.service;

import com.zhihuitong.agent.domain.AiModelPreset;
import java.util.List;

public interface IAiModelPresetService
{
    public AiModelPreset selectAiModelPresetById(Long id);
    public List<AiModelPreset> selectAiModelPresetList(AiModelPreset preset);
    public int insertAiModelPreset(AiModelPreset preset);
    public int updateAiModelPreset(AiModelPreset preset);
    public int deleteAiModelPresetByIds(Long[] ids);
    public int deleteAiModelPresetById(Long id);
}
