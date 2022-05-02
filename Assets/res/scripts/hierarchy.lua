-- 层次结构
Hierarchy = {}
Hierarchy.Canvas = Unity.GameObject.Find("Canvas").transform

Hierarchy.FindButton = function(transform, path, listener)
    local button = transform:Find(path).gameObject:GetComponent("Button")
    if listener then
        -- 移除所有监听
        button.onClick:RemoveAllListeners()
        -- 添加新的监听
        button.onClick:AddListener(listener)
    end
    return button
end
