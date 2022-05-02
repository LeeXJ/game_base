require "hierarchy"
local handle = Unity.AddressablesUtility.Instantiate('Assets/res/ui_prefabs/Login.prefab', Hierarchy.Canvas)
local transform = handle.Result.gameObject.transform
local button = Hierarchy.FindButton(transform, 'Button', function()
    -- Unity.GameObject.Destroy(transform.gameObject)
    Unity.AddressablesUtility.Release(handle)
end)
