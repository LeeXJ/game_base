require "FairyGUI"

local uiPanel
local mainView
local backBtn
local demoContainer
local viewController
local demoObjects

local function PlayGraph()
    local obj = demoObjects["Graph"]
    local shape = obj:GetChild("pie").shape
    local ellipse = shape.graphics:GetMeshFactory(typeof(EllipseMesh))
    ellipse.startDegree = 30
    ellipse.endDegreee = 300
    shape.graphics:SetMeshDirty()
    shape = obj:GetChild("trapezoid").shape
    local trapezoid = shape.graphics:GetMeshFactory(typeof(PolygonMesh))
    trapezoid.usePercentPositions = true
    trapezoid.points:Clear()
    trapezoid.points:Add({0, 1})
    trapezoid.points:Add({0.3, 0})
    trapezoid.points:Add({0.7, 0})
    trapezoid.points:Add({1, 1})
    trapezoid.texcoords:Clear()
    trapezoid.texcoords:AddRange(VertexBuffer.NormalizedUV)
    shape.graphics:SetMeshDirty()
end

local function RunDemo(context)
    local type = string.sub(context.sender.name, 5)
    if nil == demoObjects[type] then
        demoObjects[type] = UIPackage.CreateObject("Basics", "Demo_" .. type)
    end
    demoContainer:RemoveChildren()
    demoContainer:AddChild(demoObjects[type])
    viewController.selectedIndex = 1
    backBtn.visible = true
    if "Graph" == type then
        PlayGraph()
        return
    end
end

local function Start()
    uiPanel = Hierarchy.UIPanel:GetComponent("UIPanel")
    mainView = uiPanel.ui
    backBtn = mainView:GetChild("btn_Back")
    demoContainer = mainView:GetChild("container")
    viewController = mainView:GetController("c1")
    demoObjects = {}
    local cnt = mainView.numChildren
    for i = 1, cnt do
        local obj = mainView:GetChildAt(i - 1)
        if obj.group ~= nil and obj.group.name == "btns" then
            obj.onClick:Add(RunDemo)
        end
    end
end

Start()
