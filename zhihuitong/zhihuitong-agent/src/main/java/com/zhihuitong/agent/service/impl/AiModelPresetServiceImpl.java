package com.zhihuitong.agent.service.impl;

import com.zhihuitong.agent.domain.AiModelPreset;
import com.zhihuitong.agent.mapper.AiModelPresetMapper;
import com.zhihuitong.agent.service.IAiModelPresetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AiModelPresetServiceImpl implements IAiModelPresetService
{
    @Autowired
    private AiModelPresetMapper aiModelPresetMapper;

    @Override
    public AiModelPreset selectAiModelPresetById(Long id) {
        return aiModelPresetMapper.selectAiModelPresetById(id);
    }

    @Override
    public List<AiModelPreset> selectAiModelPresetList(AiModelPreset preset) {
        return aiModelPresetMapper.selectAiModelPresetList(preset);
    }

    @Override
    public int insertAiModelPreset(AiModelPreset preset) {
        return aiModelPresetMapper.insertAiModelPreset(preset);
    }

    @Override
    public int updateAiModelPreset(AiModelPreset preset) {
        return aiModelPresetMapper.updateAiModelPreset(preset);
    }

    @Override
    public int deleteAiModelPresetByIds(Long[] ids) {
        return aiModelPresetMapper.deleteAiModelPresetByIds(ids);
    }

    @Override
    public int deleteAiModelPresetById(Long id) {
        return aiModelPresetMapper.deleteAiModelPresetById(id);
    }
}
