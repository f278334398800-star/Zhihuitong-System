package com.zhihuitong.agent.mapper;

import com.zhihuitong.agent.domain.AiModelPreset;
import java.util.List;

public interface AiModelPresetMapper
{
    public AiModelPreset selectAiModelPresetById(Long id);
    public List<AiModelPreset> selectAiModelPresetList(AiModelPreset preset);
    public int insertAiModelPreset(AiModelPreset preset);
    public int updateAiModelPreset(AiModelPreset preset);
    public int deleteAiModelPresetById(Long id);
    public int deleteAiModelPresetByIds(Long[] ids);
}
