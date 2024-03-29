local Classes = { 
    "UIStroke",
    "Sky", "Hat", "Bone", "Chat", "Seat", "Fire", "Beam", "Skin", "Tool", "File", 
    "Snap", "Weld", "Part", "Hint", "Flag", "Team", "Sound", "Shirt", "Teams", "Motor", 
    "Smoke", "Decal", "Pants", "Light", "Model", "Frame", "Trail", "Clouds", "Camera", "Torque", 
    "Hopper", "Player", "Rotate", "Debris", "Dialog", "Script", "Folder", "Message", "Players", "CoreGui", 
    "TextBox", "Motor6D", "UIScale", "RotateV", "Texture", "RotateP", "GuiMain", "UILayout", "MeshPart", "Platform", 
    "Humanoid", "Lighting", "BasePart", "RayValue", "UICorner", "Clothing", "Animator", "GuiLabel", "FileMesh", "Sparkles", 
    "BodyGyro", "Backpack", "Geometry", "WrapLayer", "GuiObject", "FlagStand", "GuiButton", "LineForce", "Explosion", "Accessory", 
    "ScreenGui", "HopperBin", "SpotLight", "BodyForce", "BodyMover", "DataModel", "TextLabel", "BlockMesh", "BevelMesh", "Animation", 
    "Selection", "BoolValue", "WedgePart", "PlayerGui", "TrussPart", "UIPadding", "UIGradient", "ImageLabel", "VideoFrame", "SurfaceGui", 
    "SoundGroup", "ManualWeld", "TextButton", "ManualGlue", "PVInstance", "PointLight", "NumberPose", "WrapTarget", "Attachment", "BodyThrust", 
    "ForceField", "Constraint", "Atmosphere", "ArcHandles", "CoreScript", "BodyColors", "BlurEffect", "Controller", "RemoteEvent", "Color3Value", 
    "PVAdornment", "UIComponent", "ObjectValue", "BloomEffect", "CFrameValue", "StringValue", "SoundEffect", "SpecialMesh", "NumberValue", "LocalScript", 
    "VehicleSeat", "VectorForce", "ImageButton", "FaceInstance", "ShirtGraphic", "UIGridLayout", "UIConstraint", "BodyVelocity", "BodyPosition", "SurfaceLight", 
    "UIListLayout", "BackpackItem", "BillboardGui", "Vector3Value", "SelectionBox", "DialogChoice", "CylinderMesh", "ModuleScript", "UIPageLayout", "CorePackages", 
    "ClickDetector", "AlignPosition", "ViewportFrame", "DataModelMesh", "SpawnLocation", "CharacterMesh", "JointInstance", "PartAdornment", "SunRaysEffect", "TerrainRegion", 
    "BindableEvent", "VelocityMotor", "RodConstraint", "Configuration", "UITableLayout", "RemoteFunction", "AnimationTrack", "FormFactorPart", "WeldConstraint", "RopeConstraint", 
    "ScrollingFrame", "AdvancedDragger", "HandleAdornment", "AngularVelocity", "ParticleEmitter", "BrickColorValue", "HingeConstraint", "SelectionSphere", "EchoSoundEffect", "CornerWedgePart", 
    "ContentProvider", "ProximityPrompt", "AlignOrientation", "TouchTransmitter", "BindableFunction", "TriangleMeshPart", "RocketPropulsion", "SpringConstraint", "UISizeConstraint", "BinaryStringValue", 
    "VehicleController", "FlangeSoundEffect", "ChorusSoundEffect", "SurfaceAppearance", "InstanceAdornment", "ReverbSoundEffect", "UIGridStyleLayout", "ParabolaAdornment", "TremoloSoundEffect", "AnalysticsSettings", 
    "HumanoidController", "SkateboardPlatform", "BoxHandleAdornment", "DepthOfFieldEffect", "MeshContentProvider", "AnimationController", "BodyAngularVelocity", "CharacterAppearance", "LineHandleAdornment", "ConeHandleAdornment", 
    "HumanoidDescription", "CustomEventReceiver", "PrismaticConstraint", "EqualizerSoundEffect", "ImageHandleAdornment", "UITextSizeConstraint", "SkateboardController", "BallSocketConstraint", "CompressorSoundEffect", "CylindricalConstraint", 
    "ColorCorrectionEffect", "SlidingBallConstraint", "SphereHandleAdornment", "PitchShiftSoundEffect", "DistortionSoundEffect", "NoCollisionConstraint", "DoubleConstrainedValue", "CylinderHandleAdornment", "UIAspectRatioConstraint", "ManualSurfaceJointInstance"
}

local Enviroment = getfenv()

for _, Class in pairs(Classes) do
    Enviroment[Class] = function(Properties)
        local Object = Instance.new(Class)

        for Property, Value in pairs(Properties) do
         pcall(function()
          if type(Value) == "function" then
            Object[Property]:Connect(function(...)
              if Object.Parent then
                  Value(Object, ...)
                end
            end)
            elseif pcall(function() local Property = Object[Property] end) then
                Object[Property] = Value
            else
                Value.Parent = Object
            end
          end)
        end

        return Object
    end
end

return loadstring(game:HttpGet("https://raw.github.com/0zBug/Clutterify/main/main.lua"))() -- Clutterify
