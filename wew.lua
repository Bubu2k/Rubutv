
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "WewHub Premium",
	Text = "Loading Ui....",
	Icon = ""
})

function GetUi() 
    if getgenv().Tvk then
    if game.CoreGui:FindFirstChild("WEW GUI") then
        for a, v in ipairs(game.CoreGui:GetChildren()) do
            if v.Name == "WEW GUI" then
                v:Destroy()
            end
        end
    end
end
getgenv().Tvk = true
getgenv().Chon = true

local oldcolor = {
    ["Border Color"] = Color3.fromRGB(209, 23, 23),
    ["Click Effect Color"] = Color3.fromRGB(230, 230, 230),
    ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Logo Image"] = "rbxassetid://94177612555189",
    ["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
    ["Search Icon Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["GUI Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
    ["Title Text Color"] = Color3.fromRGB(0, 0, 0),
    ["Background 1 Color"] = Color3.fromRGB(43, 43, 43),
    ["Background 1 Transparency"] = 0,
    ["Background 2 Color"] = Color3.fromRGB(90, 90, 90),
    ["Background 3 Color"] = Color3.fromRGB(53, 53, 53),
    ["Background Image"] = "",
    ["Page Selected Color"] = Color3.fromRGB(209, 23, 23),
    ["Section Text Color"] = Color3.fromRGB(209, 23, 23),
    ["Section Underline Color"] = Color3.fromRGB(209, 23, 23),
    ["Toggle Border Color"] = Color3.fromRGB(209, 23, 23),
    ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230),
    ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
    ["Button Color"] = Color3.fromRGB(209, 23, 23),
    ["Label Color"] = Color3.fromRGB(209, 23, 23),
    ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Dropdown Selected Color"] = Color3.fromRGB(209, 23, 23),
    ["Textbox Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Box Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Slider Line Color"] = Color3.fromRGB(75, 75, 75),
    ["Slider Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Tween Animation 1 Speed"] = 0.25,
    ["Tween Animation 2 Speed"] = 0.5,
    ["Tween Animation 3 Speed"] = 0.1
}

local b = {
    ["Border Color"] = Color3.fromRGB(255, 255, 255),
    ["Click Effect Color"] = Color3.fromRGB(230, 230, 230),
    ["Setting Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Logo Image"] = "rbxassetid://94177612555189",
    ["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
    ["Search Icon Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["GUI Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Text Color"] = Color3.fromRGB(230, 230, 230),
    ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
    ["Title Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Background Main Color"] = Color3.fromRGB(0, 0, 0),
    ["Background 1 Color"] = Color3.fromRGB(43, 43, 43),
    ["Background 1 Transparency"] = 0,
    ["Background 2 Color"] = Color3.fromRGB(90, 90, 90),
    ["Background 3 Color"] = Color3.fromRGB(53, 53, 53),
    ["Background Image"] = "",
    ["Page Selected Color"] = Color3.fromRGB(209, 23, 23),
    ["Section Text Color"] = Color3.fromRGB(209, 23, 23),
    ["Section Underline Color"] = Color3.fromRGB(209, 23, 23),
    ["Toggle Border Color"] = Color3.fromRGB(209, 23, 23),
    ["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230),
    ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
    ["Button Color"] = Color3.fromRGB(209, 23, 23),
    ["Button Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Label Color"] = Color3.fromRGB(209, 23, 23),
    ["Label Text Color"] = Color3.fromRGB(255, 255, 255),
    ["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230),
    ["Dropdown Selected Color"] = Color3.fromRGB(209, 23, 23),
    ["Textbox Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Box Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Slider Line Color"] = Color3.fromRGB(75, 75, 75),
    ["Slider Highlight Color"] = Color3.fromRGB(209, 23, 23),
    ["Tween Animation 1 Speed"] = 0.25,
    ["Tween Animation 2 Speed"] = 0.5,
    ["Tween Animation 3 Speed"] = 0.1
}

local c = {}
for d, v in pairs(b) do
    c[d] = {}
end
local e = {}
for d, v in pairs(b) do
    e[d] = {Color = v, Rainbow = false, Breathing = {Toggle = false, Color1 = Color3.new(), Color2 = Color3.new()}}
end
local function f(g)
    return {math.floor(g.r * 255), math.floor(g.g * 255), math.floor(g.b * 255), "Dit"}
end
function CorrectTable(h)
    local i = {}
    for d, v in pairs(h) do
        if typeof(v) == "Color3" then
            i[d] = f(v)
        elseif type(v) == "table" then
            i[d] = CorrectTable(v)
        else
            i[d] = v
        end
    end
    return i
end
function DCorrectTable(h)
    local i = {}
    for d, v in pairs(h) do
        if type(v) == "table" and v[4] == "Dit" then
            i[d] = Color3.fromRGB(unpack(v))
        elseif type(v) == "table" then
            i[d] = DCorrectTable(v)
        else
            i[d] = v
        end
    end
    return i
end
local j = game:GetService("HttpService")
local k = "!CustomUI.json"
function SaveCustomUISettings()
    local j = game:GetService("HttpService")
    if not isfolder("WeW") then
        makefolder("WeW")
    end
    writefile("WeW/" .. k, j:JSONEncode(CorrectTable(e)))
end
function ReadCustomUISetting()
    local l, m =
        pcall(
        function()
            local j = game:GetService("HttpService")
            if not isfolder("WeW") then
                makefolder("WeW")
            end
            local n = j:JSONDecode(readfile("WeW/" .. k))
            for d, v in pairs(n) do
                local function o()
                    if v.Color == nil then
                        return
                    end
                    if v.Rainbow == nil then
                        return
                    end
                    if v.Breathing == nil then
                        return
                    end
                    if v.Breathing.Color1 == nil then
                        return
                    end
                    if v.Breathing.Color2 == nil then
                        return
                    end
                    return true
                end
                if not o() then
                    SaveCustomUISettings()
                    return ReadCustomUISetting()
                end
            end
            return n
        end
    )
    if l then
        return m
    else
        SaveCustomUISettings()
        return ReadCustomUISetting()
    end
end
if not getgenv().Chon then 
    e = DCorrectTable(ReadCustomUISetting())
    for d, v in pairs(e) do
        b[d] = v.Color
    end
end
if not getgenv().ractvkretarddumb then
    spawn(
        function()
            while wait(1) do
                SaveCustomUISettings()
            end
        end
    )
    getgenv().ractvkretarddumb = true
end
getgenv().UIColor = b
    setmetatable(
    {},
    {__newindex = function(p, q, r)
            if c[q] then
                for d, v in pairs(c[q]) do
                    v()
                end
            end
            rawset(b, q, r)
            if not e[q] then
                e[q] = {
                    Color = v,
                    Rainbow = false,
                    Breathing = {Toggle = false, Color1 = Color3.new(), Color2 = Color3.new()}
                }
            end
            e[q].Color = r
        end, __index = b}
)
local s = {}
local t = {}
local u = {}
local w = game:GetService("TweenService")
local x = game:GetService("UserInputService")
function u.ButtonEffect()
    local y = game:GetService("Players").LocalPlayer:GetMouse()
    local z = Drawing.new("Circle")
    z.Visible = true
    z.Radius = 10
    z.Filled = true
    z.Color = getgenv().UIColor["Click Effect Color"]
    z.Position = Vector2.new(y.X, y.Y + 35)
    local A = Instance.new("Folder")
    A.Parent = u.gui
    A.Name = "Game nhu buoi"
    local n = Instance.new("NumberValue")
    n.Value = 10
    n.Parent = A
    n.Name = "Rua nhu buoi"
    local B = Instance.new("NumberValue")
    B.Value = 1
    B.Parent = A
    B.Name = "Rua nhu buoi 2"
    w:Create(n, TweenInfo.new(.25), {Value = 25}):Play()
    w:Create(B, TweenInfo.new(.25), {Value = 0}):Play()
    n:GetPropertyChangedSignal("Value"):Connect(
        function()
            z.Radius = n.Value
        end
    )
    B:GetPropertyChangedSignal("Value"):Connect(
        function()
            z.Transparency = B.Value
        end
    )
    wait(.5)
    A:Destroy()
end
u.GetIMG = function(C)
    local D = "SynAsset ["
    local E = ""
    if string.find(C, "rbxassetid://") then
        E = C
    else
        pcall(
            function()
                if C and type(C) == "string" and tostring(game:HttpGet(C)):find("PNG") then
                    for a = 1, 5 do
                        D = tostring(D .. string.char(math.random(65, 122)))
                    end
                    D = D .. "].png"
                    writefile(D, game:HttpGet(C))
                    spawn(
                        function()
                            wait(5)
                            delfile(D)
                        end
                    )
                    E = getsynasset(D)
                end
            end
        )
    end
    return E
end
u.Gui = Instance.new("ScreenGui")
u.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
u.Gui.Name = "WeW GUI"
getgenv().ReadyForGuiLoaded = false
spawn(
    function()
        u.Gui.Enabled = false
        repeat
            wait()
        until getgenv().ReadyForGuiLoaded
        u.Gui.Enabled = true
    end
)
u.NotiGui = Instance.new("ScreenGui")
u.NotiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
u.NotiGui.Name = "WeW Notification"
local F = Instance.new("Frame")
local G = Instance.new("UIListLayout")
F.Name = "NotiContainer"
F.Parent = u.NotiGui
F.AnchorPoint = Vector2.new(1, 1)
F.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
F.BackgroundTransparency = 1.000
F.Position = UDim2.new(1, -5, 1, -5)
F.Size = UDim2.new(0, 350, 1, -10)
G.Name = "NotiList"
G.Parent = F
G.SortOrder = Enum.SortOrder.LayoutOrder
G.VerticalAlignment = Enum.VerticalAlignment.Bottom
G.Padding = UDim.new(0, 5)
wait()
getgenv().GUI = u.Gui
--syn.unprotect_gui(GUI)
-- // GOOGLE TRANSLATE // --

-- function SetUpTranslate()
--     local YourLang = "vi" -- Language code that the messages are going to be translated to

--     local googlev = isfile'googlev.txt' and readfile'googlev.txt' or ''
--     local request = request or syn.request
    
--     local function outputHook(fnc)
--         return function(...)
--             return fnc('[INLINE TRANSLATOR]', ...)
--         end
--     end
--     local translate, getISOCode do
--         function googleConsent(Body) -- Because google really said: "Fuck you."
--             local args = {}
    
--             for match in Body:gmatch('<input type="hidden" name=".-" value=".-">') do
--                 local k,v = match:match('<input type="hidden" name="(.-)" value="(.-)">')
--                 args[k] = v
--             end
--             googlev = args.v
--             writefile('googlev.txt', args.v)
--         end
    
--         local function got(url, Method, Body) -- Basic version of https://www.npmjs.com/package/got using synapse's request API for google websites
--             Method = Method or "GET"
            
--             local res = request({
--                 Url = url,
--                 Method = Method,
--                 Headers = {cookie="CONSENT=YES+"..googlev},
--                 Body = Body
--             })
            
--             if res.Body:match('https://consent.google.com/s') then
--                 googleConsent(res.Body)
--                 res = request({
--                     Url = url,
--                     Method = "GET",
--                     Headers = {cookie="CONSENT=YES+"..googlev}
--                 })
--             end
            
--             return res
--         end
    
--         getgenv().languages = {
--             auto = "Automatic",
--             ['zh-cn'] = "Chinese Simplified",
--             ['zh-tw'] = "Chinese Traditional",
--             en = "English",
--             fr = "French",
--             de = "German",
--             el = "Greek",
--             hu = "Hungarian",
--             id = "Indonesian",
--             it = "Italian",
--             ja = "Japanese",
--             ko = "Korean",
--             mg = "Malagasy",
--             pl = "Polish",
--             pt = "Portuguese",
--             ru = "Russian",
--             es = "Spanish",
--             tr = "Turkish",
--             vi = "Vietnamese",
--         };
--         local listl = {}
--         for k,v in pairs(languages) do table.insert(listl,k) end
--         function SetRandomLang() 
--             YourLang = listl[math.random(1,#listl)]
--         end
--         function find(lang)
--             for i,v in pairs(languages) do
--                 if i == lang or v == lang then
--                     return i
--                 end
--             end
--         end
    
--         function isSupported(lang)
--             local key = find(lang)
--             return key and true or false 
--         end
    
--         function getISOCode(lang)
--             local key = find(lang)
--             return key
--         end
    
--         function stringifyQuery(dataFields)
--             local data = ""
--             for k, v in pairs(dataFields) do
--                 if type(v) == "table" then
--                     for _,v in pairs(v) do
--                         data = data .. ("&%s=%s"):format(
--                             game.HttpService:UrlEncode(k),
--                             game.HttpService:UrlEncode(v)
--                         )
--                     end
--                 else
--                     data = data .. ("&%s=%s"):format(
--                         game.HttpService:UrlEncode(k),
--                         game.HttpService:UrlEncode(v)
--                     )
--                 end
--             end
--             data = data:sub(2)
--             return data
--         end
    
--         local reqid = math.random(1000,9999)
--         local rpcidsTranslate = "MkEWBc"
--         local rootURL = "https://translate.google.com/"
--         local executeURL = "https://translate.google.com/_/TranslateWebserverUi/data/batchexecute"
--         local fsid, bl
    
--         do -- init
--             local InitialReq = got(rootURL)
--             fsid = InitialReq.Body:match('"FdrFJe":"(.-)"')
--             bl = InitialReq.Body:match('"cfb2h":"(.-)"')
--         end
    
--         local HttpService = game:GetService("HttpService")
--         function jsonE(o)
--             return HttpService:JSONEncode(o)
--         end
--         function jsonD(o)
--             return HttpService:JSONDecode(o)
--         end
    
--         function translate(str, to, from)
--             reqid = reqid + 10000
--             from = from and getISOCode(from) or 'auto'
--             to = to and getISOCode(to) or 'en'
    
--             local data = {{str, from, to, true}, {nil}}
    
--             local freq = {
--                 {
--                     {
--                         rpcidsTranslate, 
--                         jsonE(data),
--                         nil,
--                         "generic"
--                     }
--                 }
--             }
    
--             local url = executeURL..'?'..stringifyQuery{rpcids = rpcidsTranslate, ['f.sid'] = fsid, bl = bl, hl="en", _reqid = reqid-10000, rt = 'c'}
--             local body = stringifyQuery{['f.req'] = jsonE(freq)}
            
--             local req = got(url, "POST", body)
            
--             local body = jsonD(req.Body:match'%[.-%]\n')
--             local translationData = jsonD(body[1][3])
--             local result = {
--                 text = "",
--                 from = {
--                     language = "",
--                     text = ""
--                 },
--                 raw = ""
--             }
--             result.raw = translationData
--             result.text = translationData[2][1][1][6][1][1]
            
--             result.from.language = translationData[3]
--             result.from.text = translationData[2][5][1]
    
--             return result
--         end
--     end
--     function translateFrom(message)
--         local translation = translate(message, YourLang)
    
--         local text
--         if translation.from.language ~= YourLang then 
--             text = translation.text
--         end
    
--         return {text, translation.from.language}
--     end
--     function Translate(message) 
--         local s,translated =  pcall(function() 
--             return translateFrom(message)[1]
--         end)
--         if s then return translated 
--         else
--             --print(message,translated)
--         end
--     end
-- end
-- SetUpTranslate()
-- getgenv().TranslateCache = {}
-- if not isfolder("WeW") then
--     makefolder("WeW")
-- end
-- local s,Translated = pcall(function() 
--     return game.HttpService:JSONDecode(readfile("wew/!UIText.json"))
-- end)
-- function SaveFile() 
--     pcall(function() 
--         writefile("amin Hub/!UIText.json",game.HttpService:JSONEncode(getgenv().TranslateCache))
--     end)
-- end
-- function isnumber() end
-- local UIChanged = false
-- if s and Translated then 
--     getgenv().TranslateCache = Translated end
-- if GUI then 
--     GUI.DescendantAdded:Connect(function(des) 
--         if des then 
--             if pcall(function() return des.Text end) then 
--                 delay(0,function() 
--                     if des.Text=="" or #des.Text<=4 or tonumber(des.Text)~=nil then
--                         return
--                     end
--                     if string.match(des.Text,"Heiskso Hub") then 
--                         local tvk = des.Text:gsub("Heiskso Hub","Trung Tâm Biển")
--                         des.Text = tvk
--                         return
--                     end
--                     local old = des.Text
--                     local c = 0
--                     while des.Text==old and c<3 do 
--                         --SetRandomLang()
--                         if getgenv().TranslateCache[des.Text] then 
--                             des.Text = getgenv().TranslateCache[des.Text]
--                             return
--                         end
--                         local t = Translate(des.Text)
--                         if t and t ~= old then 
--                             getgenv().TranslateCache[des.Text] = t
--                             UIChanged =true
--                             if t then des.Text = t end
--                         end
--                         wait(1)
--                         c=c+1
--                     end
--                     getgenv().TranslateCache[des.Text]  = des.Text
--                     UIChanged =true
--                 end)
--             end
--         end
--     end)
-- end
-- spawn(function() 
--     local t = tick()
--     while wait(2) do 
--         if tick()-t>30 then 
--             if UIChanged then 
--                 SaveFile()
--                 UIChanged = false
--             end
--         else
--             SaveFile()
--         end
--     end
-- end)
-- if syn.protect_gui then
--     syn.protect_gui(u.Gui)
--     syn.protect_gui(u.NotiGui)
--     u.Gui.Parent = game:GetService("CoreGui")
--     u.NotiGui.Parent = game:GetService("CoreGui")
-- end
u.Gui.Parent = game:GetService("CoreGui")
u.NotiGui.Parent = game:GetService("CoreGui")

function u.Getcolor(g)
    return {math.floor(g.r * 255), math.floor(g.g * 255), math.floor(g.b * 255)}
end
function t.CreateNoti(H)
    getgenv().TitleNameNoti = H.Title or ""
    local I = H.Desc
    local J = H.ShowTime or 10
    local K = Instance.new("Frame")
    local L = Instance.new("Frame")
    local M = Instance.new("UICorner")
    local N = Instance.new("Frame")
    local O = Instance.new("ImageLabel")
    local P = Instance.new("UICorner")
    local Q = Instance.new("TextLabel")
    local R = Instance.new("Frame")
    local S = Instance.new("ImageLabel")
    local T = Instance.new("TextButton")
    local U = Instance.new("TextLabel")
    K.Name = "NotiFrame"
    K.Parent = F
    K.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    K.BackgroundTransparency = 1.000
    K.ClipsDescendants = true
    K.Position = UDim2.new(0, 0, 0, 0)
    K.Size = UDim2.new(1, 0, 0, 0)
    K.AutomaticSize = Enum.AutomaticSize.Y
    L.Name = "Noticontainer"
    L.Parent = K
    L.Position = UDim2.new(1, 0, 0, 0)
    L.Size = UDim2.new(1, 0, 1, 6)
    L.AutomaticSize = Enum.AutomaticSize.Y
    L.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
    table.insert(
        c["Background 3 Color"],
        function()
            L.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
        end
    )
    M.CornerRadius = UDim.new(0, 4)
    M.Parent = L
    N.Name = "Topnoti"
    N.Parent = L
    N.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    N.BackgroundTransparency = 1.000
    N.Position = UDim2.new(0, 0, 0, 5)
    N.Size = UDim2.new(1, 0, 0, 25)
    O.Name = "Ruafimg"
    O.Parent = N
    O.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    O.BackgroundTransparency = 1.000
    O.Position = UDim2.new(0, 10, 0, 0)
    O.Size = UDim2.new(0, 25, 0, 25)
    O.Image = getgenv().UIColor["Logo Image"]
    table.insert(
        c["Logo Image"],
        function()
            O.Image = u.GetIMG(getgenv().UIColor["Logo Image"])
        end
    )
    P.CornerRadius = UDim.new(1, 0)
    P.Name = "RuafimgCorner"
    P.Parent = O
    local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
    local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
    local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
    local g = V .. "," .. W .. "," .. X
    Q.Text = '<font color="rgb(' .. g .. ')">WeW  Hub</font> ' .. getgenv().TitleNameNoti
    table.insert(
        c["Title Text Color"],
        function()
            local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
            local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
            local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
            local g = V .. "," .. W .. "," .. X
            Q.Text = '<font color="rgb(' .. g .. ')">WewHub premium</font> ' .. getgenv().TitleNameNoti
        end
    )
    Q.Name = "TextLabelNoti"
    Q.Parent = N
    Q.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    Q.BackgroundTransparency = 1.000
    Q.Position = UDim2.new(0, 40, 0, 0)
    Q.Size = UDim2.new(1, -40, 1, 0)
    Q.Font = Enum.Font.GothamBold
    Q.TextSize = 14.000
    Q.TextWrapped = true
    Q.TextXAlignment = Enum.TextXAlignment.Left
    Q.RichText = true
    Q.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            Q.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    R.Name = "CloseContainer"
    R.Parent = N
    R.AnchorPoint = Vector2.new(1, 0.5)
    R.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    R.BackgroundTransparency = 1.000
    R.Position = UDim2.new(1, -4, 0.5, 0)
    R.Size = UDim2.new(0, 22, 0, 22)
    S.Name = "CloseImage"
    S.Parent = R
    S.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    S.BackgroundTransparency = 1.000
    S.Size = UDim2.new(1, 0, 1, 0)
    S.Image = "rbxassetid://13717478897"
    S.ImageRectOffset = Vector2.new(284, 4)
    S.ImageRectSize = Vector2.new(24, 24)
    S.ImageColor3 = getgenv().UIColor["Search Icon Color"]
    table.insert(
        c["Search Icon Color"],
        function()
            S.ImageColor3 = getgenv().UIColor["Search Icon Color"]
        end
    )
    T.Parent = R
    T.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    T.BackgroundTransparency = 1.000
    T.Size = UDim2.new(1, 0, 1, 0)
    T.Font = Enum.Font.SourceSans
    T.Text = ""
    T.TextColor3 = Color3.fromRGB(0, 0, 0)
    T.TextSize = 14.000
    if I then
        U.Name = "TextColor"
        U.Parent = L
        U.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        U.BackgroundTransparency = 1.000
        U.Position = UDim2.new(0, 10, 0, 35)
        U.Size = UDim2.new(1, -15, 0, 0)
        U.Font = Enum.Font.GothamBold
        U.Text = I
        U.TextSize = 14.000
        U.TextXAlignment = Enum.TextXAlignment.Left
        U.RichText = true
        U.TextColor3 = getgenv().UIColor["Text Color"]
        U.AutomaticSize = Enum.AutomaticSize.Y
        U.TextWrapped = true
        table.insert(
            c["Text Color"],
            function()
                U.TextColor3 = getgenv().UIColor["Text Color"]
            end
        )
    end
    local function Y()
        w:Create(L, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(1, 0, 0, 0)}):Play(

        )
        wait(.25)
        K:Destroy()
    end
    w:Create(L, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(0, 0, 0, 0)}):Play()
    T.MouseEnter:Connect(
        function()
            w:Create(
                S,
                TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"]}
            ):Play()
        end
    )
    T.MouseLeave:Connect(
        function()
            w:Create(
                S,
                TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Color"]}
            ):Play()
        end
    )
    T.MouseButton1Click:Connect(
        function()
            spawn(
                function()
                    u.ButtonEffect()
                end
            )
            wait(.25)
            Y()
        end
    )
    spawn(
        function()
            wait(J)
            Y()
        end
    )
end
function t.CreateMain(H)
    local Z = tostring(H.Title) or "Wewhub premium"
    getgenv().MainDesc = H.Desc or ""
    local _ = false
    cac = false
    local function a0(a1, a2)
        local a3 = nil
        local a4 = nil
        local a5 = nil
        local a6 = nil
        a1.InputBegan:Connect(
            function(a7)
                if a7.UserInputType == Enum.UserInputType.MouseButton1 or a7.UserInputType == Enum.UserInputType.Touch then
                    a3 = true
                    a5 = a7.Position
                    a6 = a2.Position
                    a7.Changed:Connect(
                        function()
                            if a7.UserInputState == Enum.UserInputState.End then
                                a3 = false
                            end
                        end
                    )
                end
            end
        )
        a1.InputChanged:Connect(
            function(a7)
                if a7.UserInputType == Enum.UserInputType.MouseMovement or a7.UserInputType == Enum.UserInputType.Touch then
                    a4 = a7
                end
            end
        )
        x.InputChanged:Connect(
            function(a7)
                if a7 == a4 and a3 then
                    local a8 = a7.Position - a5
                    if not _ and cac then
                        w:Create(
                            a2,
                            TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                            {Position = UDim2.new(a6.X.Scale, a6.X.Offset + a8.X, a6.Y.Scale, a6.Y.Offset + a8.Y)}
                        ):Play()
                    elseif not _ and not cac then
                        a2.Position = UDim2.new(a6.X.Scale, a6.X.Offset + a8.X, a6.Y.Scale, a6.Y.Offset + a8.Y)
                    end
                end
            end
        )
    end
    local a9 = Instance.new("Frame")
    local aa = Instance.new("ImageLabel")
    local ab = Instance.new("UICorner")
    local ac = Instance.new("Frame")
    local O = Instance.new("ImageLabel")
    local ad = Instance.new("TextLabel")
    local ae = Instance.new("Frame")
    local M = Instance.new("UICorner")
    local af = Instance.new("ScrollingFrame")
    local ag = Instance.new("UIListLayout")
    local ah = Instance.new("TextLabel")
    local ai = Instance.new("Frame")
    local aj = Instance.new("UIPageLayout")
    local ak = Instance.new("Frame")
    local al = Instance.new("TextButton")
    local am = Instance.new("ImageLabel")
    local an = Instance.new("Frame")
    local ao = Instance.new("Frame")
    local ap = Instance.new("Frame")
    local aq = Instance.new("UIPageLayout")
    local ar
    a9.Name = "Main"
    a9.Parent = u.Gui
    a9.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
    a9.BackgroundTransparency = 1.000
    a9.Position = UDim2.new(0.5, 0, 0.5, 0)
    a9.AnchorPoint = Vector2.new(0.5, 0.5)
    a9.Size = UDim2.new(0, 629, 0, 359)
    a0(a9, a9)
    aa.Name = "maingui"
    aa.Parent = a9
    aa.AnchorPoint = Vector2.new(0.5, 0.5)
    aa.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    aa.BackgroundTransparency = 1.000
    aa.Position = UDim2.new(0.5, 0, 0.5, 0)
    aa.Selectable = true
    aa.Size = UDim2.new(1, 30, 1, 30)
    aa.Image = ""
    aa.ScaleType = Enum.ScaleType.Slice
    aa.SliceCenter = Rect.new(15, 15, 175, 175)
    aa.SliceScale = 1.300
    aa.ImageColor3 = getgenv().UIColor["Border Color"]
    table.insert(
        c["Border Color"],
        function()
            aa.ImageColor3 = getgenv().UIColor["Border Color"]
        end
    )
    local ScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")
    _G.CloseandOpenUi = true

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    ImageButton.Parent = ScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.100739375, 0, 0.121457487, 0)
    ImageButton.Size = UDim2.new(0, 40, 0, 40)
    ImageButton.Image = "rbxassetid://94177612555189"
    ImageButton.MouseButton1Click:Connect(function()
        _G.CloseandOpenUi = not _G.CloseandOpenUi
        a9.Visible = _G.CloseandOpenUi
    end)

    UICorner.Parent = ImageButton

    UIStroke.Color = Color3.fromRGB(255, 255, 255)
    UIStroke.Parent = ImageButton
    function u.ReloadMain(v)
        aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
        local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
        local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
        local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
        local g = V .. "," .. W .. "," .. X
        ad.Text = '<font color="rgb(' .. g .. ')">WeW  Hub</font> ' .. getgenv().MainDesc
        table.insert(
            c["Title Text Color"],
            function()
                aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
                local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
                local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
                local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
                local g = V .. "," .. W .. "," .. X
                ad.Text = '<font color="rgb(' .. g .. ')">WewHub premium</font> ' .. getgenv().MainDesc
            end
        )
        local as
        if
            v ~= "" and type(v) == "string" and string.find(v:lower(), ".webm") and
                pcall(
                    function()
                        writefile("seahub.webm", syn.request({Url = v}).Body)
                    end
                )
         then
            wait(.25)
            local at = isfile("seahub.webm")
            wait(.25)
            if at then
                as = Instance.new("VideoFrame")
                as.Name = "MainContainer"
                as.Parent = a9
                as.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
                as.Size = UDim2.new(1, 0, 1, 0)
                as.Video = getsynasset("seahub.webm")
                as.Looped = true
                as:Play()
                wait(.5)
                delfile("seahub.webm")
            end
        else
            as = Instance.new("ImageLabel")
            as.Name = "MainContainer"
            as.Parent = a9
            as.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
            as.Size = UDim2.new(1, 0, 1, 0)
            as.Image = u.GetIMG(v)
        end
        MainCorner_ = Instance.new("UICorner")
        MainCorner_.CornerRadius = UDim.new(0, 4)
        MainCorner_.Name = "MainCorner"
        MainCorner_.Parent = as
        for a, m in next, a9:GetChildren() do
            if m.Name == "MainContainer" then
                for a, v in next, m:GetChildren() do
                    v.Parent = as
                end
                wait()
                m:Destroy()
                break
            end
        end
        table.insert(
            c["Background 3 Color"],
            function()
                as.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
            end
        )
    end
    aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
    local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
    local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
    local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
    local g = V .. "," .. W .. "," .. X
    ad.Text = '<font color="rgb(' .. g .. ')">WewHub premium</font> ' .. getgenv().MainDesc
    table.insert(
        c["Title Text Color"],
        function()
            aa.ImageColor3 = getgenv().UIColor["Title Text Color"]
            local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
            local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
            local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
            local g = V .. "," .. W .. "," .. X
            ad.Text = '<font color="rgb(' .. g .. ')">WewHub Premium</font> ' .. getgenv().MainDesc
        end
    )
    local ar
    local au = getgenv().UIColor["Background Image"]
    if
        au ~= "" and type(au) == "string" and string.find(au:lower(), ".webm") and
            pcall(
                function()
                    writefile("seahub.webm", syn.request({Url = au}).Body)
                end
            )
     then
        wait(.25)
        local at = isfile("seahub.webm")
        wait(.25)
        if at then
            ar = Instance.new("VideoFrame")
            ar.Name = "MainContainer"
            ar.Parent = a9
            ar.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
            ar.Size = UDim2.new(1, 0, 1, 0)
            ar.Video = getsynasset("seahub.webm")
            ar.Looped = true
            ar:Play()
            wait(.5)
            delfile("seahub.webm")
        end
    else
        ar = Instance.new("ImageLabel")
        ar.Name = "MainContainer"
        ar.Parent = a9
        ar.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
        ar.Size = UDim2.new(1, 0, 1, 0)
        ar.Image = u.GetIMG(au)
    end
    table.insert(
        c["Background 3 Color"],
        function()
            ar.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
        end
    )
    getgenv().ReadyForGuiLoaded = true
    ab.CornerRadius = UDim.new(0, 4)
    ab.Name = "MainCorner"
    ab.Parent = ar
    an.Name = "Concacontainer"
    an.Parent = ar
    an.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    an.BackgroundTransparency = 1.000
    an.ClipsDescendants = true
    an.Position = UDim2.new(0, 0, 0, 30)
    an.Size = UDim2.new(1, 0, 1, -30)
    ao.Name = "Concacmain"
    ao.Parent = an
    ao.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ao.BackgroundTransparency = 1.000
    ao.Selectable = true
    ao.Size = UDim2.new(1, 0, 1, 0)
    ap.Name = "Background1"
    ap.Parent = an
    ap.LayoutOrder = 1
    ap.Selectable = true
    ap.Size = UDim2.new(1, 0, 1, 0)
    ap.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
    table.insert(
        c["Background 1 Transparency"],
        function()
            ap.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
        end
    )
    ap.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
    table.insert(
        c["Background 1 Color"],
        function()
            ap.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
        end
    )
    aq.Name = "Concacpage"
    aq.Parent = an
    aq.SortOrder = Enum.SortOrder.LayoutOrder
    aq.EasingDirection = Enum.EasingDirection.InOut
    aq.EasingStyle = Enum.EasingStyle.Quad
    aq.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
    table.insert(
        c["Tween Animation 1 Speed"],
        function()
            aq.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
        end
    )
    ac.Name = "TopMain"
    ac.Parent = ar
    ac.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ac.BackgroundTransparency = 1.000
    ac.Size = UDim2.new(1, 0, 0, 25)
    O.Name = "Ruafimg"
    O.Parent = ac
    O.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    O.BackgroundTransparency = 1.000
    O.Position = UDim2.new(0, 5, 0, 0)
    O.Size = UDim2.new(0, 25, 0, 25)
    O.Image = getgenv().UIColor["Logo Image"]
    table.insert(
        c["Logo Image"],
        function()
            O.Image = getgenv().UIColor["Logo Image"]
        end
    )
    ad.Name = "TextLabelMain"
    ad.Parent = ac
    ad.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    ad.BackgroundTransparency = 1.000
    ad.Position = UDim2.new(0, 35, 0, 0)
    ad.Size = UDim2.new(1, -35, 1, 0)
    ad.Font = Enum.Font.GothamBold
    ad.RichText = true
    ad.TextSize = 16.000
    ad.TextWrapped = true
    ad.TextXAlignment = Enum.TextXAlignment.Left
    ad.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            ad.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
    local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
    local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
    local g = V .. "," .. W .. "," .. X
    ad.Text = '<font color="rgb(' .. g .. ')">WewHub Premium</font> ' .. getgenv().MainDesc
    table.insert(
        c["Title Text Color"],
        function()
            local V = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[1])
            local W = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[2])
            local X = tostring(u.Getcolor(getgenv().UIColor["Title Text Color"])[3])
            local g = V .. "," .. W .. "," .. X
            ad.Text = '<font color="rgb(' .. g .. ')">WewHub Premium</font> ' .. getgenv().MainDesc
        end
    )
    ak.Name = "SettionMain"
    ak.Parent = ac
    ak.AnchorPoint = Vector2.new(1, 0)
    ak.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ak.BackgroundTransparency = 1.000
    ak.Position = UDim2.new(1, 0, 0, 0)
    ak.Size = UDim2.new(0, 30, 0, 30)
    al.Name = "SettionButton"
    al.Parent = ak
    al.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    al.BackgroundTransparency = 1.000
    al.BorderColor3 = Color3.fromRGB(27, 42, 53)
    al.Size = UDim2.new(1, 0, 1, 0)
    al.Font = Enum.Font.SourceSans
    al.Text = ""
    al.TextColor3 = Color3.fromRGB(0, 0, 0)
    al.TextSize = 14.000
    al.Visible = true
    am.Name = "SettingIcon"
    am.Parent = ak
    am.AnchorPoint = Vector2.new(0.5, 0.5)
    am.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    am.BackgroundTransparency = 1.000
    am.Position = UDim2.new(0.5, 0, 0.5, 0)
    am.Size = UDim2.new(1, -10, 1, -10)
    am.Image = "rbxassetid://94177612555189"
    am.Visible = true
    am.ImageColor3 = getgenv().UIColor["Setting Icon Color"]
    table.insert(
        c["Setting Icon Color"],
        function()
            am.ImageColor3 = getgenv().UIColor["Setting Icon Color"]
        end
    )
    ae.Name = "Background1"
    ae.Parent = ao
    ae.Position = UDim2.new(0, 5, 0, 0)
    ae.Size = UDim2.new(0, 180, 0, 325)
    ae.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
    table.insert(
        c["Background 1 Transparency"],
        function()
            ae.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
        end
    )
    ae.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
    table.insert(
        c["Background 1 Color"],
        function()
            ae.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
        end
    )
    M.CornerRadius = UDim.new(0, 4)
    M.Parent = ae
    af.Name = "ControlList"
    af.Parent = ae
    af.Active = true
    af.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    af.BackgroundTransparency = 1.000
    af.BorderColor3 = Color3.fromRGB(27, 42, 53)
    af.BorderSizePixel = 0
    af.Position = UDim2.new(0, 0, 0, 30)
    af.Size = UDim2.new(1, -5, 1, -30)
    af.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    af.CanvasSize = UDim2.new(0, 0, 0, 0)
    af.ScrollBarThickness = 5
    af.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    ag.Parent = af
    ag.SortOrder = Enum.SortOrder.LayoutOrder
    ag.Padding = UDim.new(0, 5)
    ah.Name = "GUITextColor"
    ah.Parent = ae
    ah.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    ah.BackgroundTransparency = 1.000
    ah.Position = UDim2.new(0, 5, 0, 0)
    ah.Size = UDim2.new(1, 0, 0, 25)
    ah.Font = Enum.Font.GothamBold
    ah.Text = Z
    ah.TextSize = 14.000
    ah.TextXAlignment = Enum.TextXAlignment.Left
    ah.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            ah.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    ai.Name = "MainPage"
    ai.Parent = ao
    ai.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    ai.BackgroundTransparency = 1.000
    ai.ClipsDescendants = true
    ai.Position = UDim2.new(0, 190, 0, 0)
    ai.Size = UDim2.new(0, 435, 0, 325)
    aj.Name = "UIPage"
    aj.Parent = ai
    aj.FillDirection = Enum.FillDirection.Vertical
    aj.SortOrder = Enum.SortOrder.LayoutOrder
    aj.EasingDirection = Enum.EasingDirection.InOut
    aj.EasingStyle = Enum.EasingStyle.Quart
    aj.Padding = UDim.new(0, 10)
    aj.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
    aj.ScrollWheelInputEnabled = false
    table.insert(
        c["Tween Animation 1 Speed"],
        function()
            aj.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
        end
    )
    ag:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
        function()
            af.CanvasSize = UDim2.new(0, 0, 0, ag.AbsoluteContentSize.Y + 5)
        end
    )
    local av = false
    al.MouseButton1Click:Connect(
        function()
            u.ButtonEffect()
        end
    )
    al.MouseButton1Click:Connect(
        function()
            av = not av
            pa = av and 1 or 0
            ro = av and 180 or 0
          --  aq:JumpToIndex(pa)
            game.TweenService:Create(am, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Rotation = ro}):Play(

            )
        end
    )
    local aw = Instance.new("ScrollingFrame")
    local ax = Instance.new("UIListLayout")
    aw.Name = "CustomList"
    aw.Parent = ap
    aw.Active = true
    aw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aw.BackgroundTransparency = 1.000
    aw.BorderColor3 = Color3.fromRGB(27, 42, 53)
    aw.BorderSizePixel = 0
    aw.Position = UDim2.new(0, 5, 0, 30)
    aw.Size = UDim2.new(1, -10, 1, -30)
    aw.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    aw.ScrollBarThickness = 5
    aw.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    ax.Name = "CustomListLayout"
    ax.Parent = aw
    ax.SortOrder = Enum.SortOrder.LayoutOrder
    ax.Padding = UDim.new(0, 5)
    ax:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
        function()
            aw.CanvasSize = UDim2.new(0, 0, 0, ax.AbsoluteContentSize.Y + 5)
        end
    )
    local ay = Instance.new("TextLabel")
    ay.Name = "GUITextColor"
    ay.Parent = ap
    ay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ay.BackgroundTransparency = 1.000
    ay.Position = UDim2.new(0, 15, 0, 0)
    ay.Size = UDim2.new(1, -15, 0, 25)
    ay.Font = Enum.Font.GothamBold
    ay.Text = ""
    ay.TextSize = 16.000
    ay.TextXAlignment = Enum.TextXAlignment.Left
    ay.TextColor3 = getgenv().UIColor["GUI Text Color"]
    table.insert(
        c["GUI Text Color"],
        function()
            ay.TextColor3 = getgenv().UIColor["GUI Text Color"]
        end
    )
    local az = Instance.new("Frame")
    local aA = Instance.new("UICorner")
    local aB = Instance.new("Frame")
    local aC = Instance.new("ImageLabel")
    local aD = Instance.new("TextButton")
    local aE = Instance.new("TextBox")
    az.Name = "Background2"
    az.Parent = ap
    az.AnchorPoint = Vector2.new(1, 0)
    az.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
    az.ClipsDescendants = true
    az.Position = UDim2.new(1, -5, 0, 5)
    az.Size = UDim2.new(0, 20, 0, 20)
    az.ClipsDescendants = true
    table.insert(
        c["Background 2 Color"],
        function()
            az.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
        end
    )
    aA.CornerRadius = UDim.new(0, 2)
    aA.Name = "PageSearchCorner"
    aA.Parent = az
    aB.Name = "SearchFrame"
    aB.Parent = az
    aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aB.BackgroundTransparency = 1.000
    aB.Size = UDim2.new(0, 20, 0, 20)
    aC.Name = "SearchIcon"
    aC.Parent = aB
    aC.AnchorPoint = Vector2.new(0.5, 0.5)
    aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aC.BackgroundTransparency = 1.000
    aC.Position = UDim2.new(0.5, 0, 0.5, 0)
    aC.Size = UDim2.new(0, 16, 0, 16)
    aC.Image = "rbxassetid://8154282545"
    aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
    table.insert(
        c["Search Icon Color"],
        function()
            aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
        end
    )
    aD.Name = "active"
    aD.Parent = aB
    aD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aD.BackgroundTransparency = 1.000
    aD.Size = UDim2.new(1, 0, 1, 0)
    aD.Font = Enum.Font.SourceSans
    aD.Text = ""
    aD.TextColor3 = Color3.fromRGB(0, 0, 0)
    aD.TextSize = 14.000
    aE.Name = "TextColorPlaceholder"
    aE.Parent = az
    aE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aE.BackgroundTransparency = 1.000
    aE.Position = UDim2.new(0, 30, 0, 0)
    aE.Size = UDim2.new(1, -30, 1, 0)
    aE.Font = Enum.Font.GothamBold
    aE.Text = ""
    aE.TextSize = 14.000
    aE.TextXAlignment = Enum.TextXAlignment.Left
    aE.PlaceholderText = "Search Section name"
    aE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
    aE.TextColor3 = getgenv().UIColor["Text Color"]
    table.insert(
        c["Placeholder Text Color"],
        function()
            aE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
        end
    )
    table.insert(
        c["Text Color"],
        function()
            aE.TextColor3 = getgenv().UIColor["Text Color"]
        end
    )
    local aF = false
    aD.MouseEnter:Connect(
        function()
            w:Create(
                aC,
                TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"]}
            ):Play()
        end
    )
    aD.MouseLeave:Connect(
        function()
            w:Create(
                aC,
                TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                {ImageColor3 = getgenv().UIColor["Search Icon Color"]}
            ):Play()
        end
    )
    aD.MouseButton1Click:Connect(
        function()
            u.ButtonEffect()
        end
    )
    aE.Focused:Connect(
        function()
            u.ButtonEffect()
        end
    )
    aD.MouseButton1Click:Connect(
        function()
            aF = not aF
            local aG = aF and UDim2.new(0, 175, 0, 20) or UDim2.new(0, 20, 0, 20)
            game.TweenService:Create(az, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = aG}):Play(

            )
        end
    )
    local function aH()
        for a, v in next, aw:GetChildren() do
            if not v:IsA("UIListLayout") then
                v.Visible = false
            end
        end
    end
    local function aI()
        for n, B in pairs(aw:GetChildren()) do
            if not B:IsA("UIListLayout") then
                if string.find(string.lower(B.Name), string.lower(aE.Text)) then
                    B.Visible = true
                end
            end
        end
    end
    aE:GetPropertyChangedSignal("Text"):Connect(
        function()
            aH()
            aI()
        end
    )
    function t.CreateCustomColor(aJ)
        ay.Text = aJ or "Custom GUI"
        local aK = {}
        function aK.CreateSection(aL)
            local aM = Instance.new("Frame")
            local M = Instance.new("UICorner")
            local aN = Instance.new("Frame")
            local aO = Instance.new("TextLabel")
            local aP = Instance.new("Frame")
            local aQ = Instance.new("UIGradient")
            local aR = Instance.new("UIListLayout")
            local aS = aL or "Section"
            aM.Name = aL .. "Section"
            aM.Parent = aw
            aM.Size = UDim2.new(1, 0, 0, 285)
            aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
            table.insert(
                c["Background 3 Color"],
                function()
                    aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
                end
            )
            aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            table.insert(
                c["Background 1 Transparency"],
                function()
                    aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                end
            )
            M.CornerRadius = UDim.new(0, 4)
            M.Parent = aM
            aN.Name = "Topsec"
            aN.Parent = aM
            aN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            aN.BackgroundTransparency = 1.000
            aN.Size = UDim2.new(1, 0, 0, 27)
            aO.Name = "Sectiontitle"
            aO.Parent = aN
            aO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            aO.BackgroundTransparency = 1.000
            aO.Size = UDim2.new(1, 0, 1, 0)
            aO.Font = Enum.Font.GothamBold
            aO.Text = aL
            aO.TextSize = 14.000
            aO.TextColor3 = getgenv().UIColor["Section Text Color"]
            table.insert(
                c["Section Text Color"],
                function()
                    aO.TextColor3 = getgenv().UIColor["Section Text Color"]
                end
            )
            aP.Name = "Linesec"
            aP.Parent = aN
            aP.AnchorPoint = Vector2.new(0.5, 1)
            aP.BorderSizePixel = 0
            aP.Position = UDim2.new(0.5, 0, 1, -2)
            aP.Size = UDim2.new(1, -10, 0, 2)
            aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
            table.insert(
                c["Section Underline Color"],
                function()
                    aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                end
            )
            aQ.Transparency =
                NumberSequence.new {
                NumberSequenceKeypoint.new(0.00, 1.00),
                NumberSequenceKeypoint.new(0.50, 0.00),
                NumberSequenceKeypoint.new(0.51, 0.02),
                NumberSequenceKeypoint.new(1.00, 1.00)
            }
            aQ.Parent = aP
            aR.Name = "SectionList"
            aR.Parent = aM
            aR.SortOrder = Enum.SortOrder.LayoutOrder
            aR.Padding = UDim.new(0, 5)
            aR:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    aM.Size = UDim2.new(1, 0, 0, aR.AbsoluteContentSize.Y + 5)
                end
            )
            local aT = {}
            function aT.CreateColorPicker(H)
                local aU =
                    setmetatable(
                    {},
                    {__index = function(p, q)
                            if q == "Cungroi" then
                                return e[H.Type].Rainbow
                            end
                        end, __newindex = function(p, q, r)
                            if q == "Cungroi" then
                                e[H.Type].Rainbow = r
                            end
                        end}
                )
                local aV, aW, aX
                local aY = H.Title or "Color Picker"
                local aZ = e[H.Type].Color or Color3.fromRGB(255, 255, 255)
                local a_ = H.Type
                local b0 = Instance.new("Frame")
                local b1 = Instance.new("UICorner")
                local b2 = Instance.new("Frame")
                local b3 = Instance.new("UICorner")
                local b4 = Instance.new("TextLabel")
                local b5 = Instance.new("Frame")
                local b6 = Instance.new("UICorner")
                local b7 = Instance.new("TextButton")
                local b8 = Instance.new("Frame")
                local b9 = Instance.new("UIGradient")
                local ba = Instance.new("Frame")
                local M = Instance.new("UICorner")
                local bb = Instance.new("Frame")
                local bc = Instance.new("Frame")
                local bd = Instance.new("TextLabel")
                local be = Instance.new("TextBox")
                local bf = Instance.new("Frame")
                local bg = Instance.new("TextLabel")
                local bh = Instance.new("TextBox")
                local bi = Instance.new("Frame")
                local bj = Instance.new("TextLabel")
                local bk = Instance.new("TextBox")
                local ag = Instance.new("UIListLayout")
                local bl = Instance.new("Frame")
                local bm = Instance.new("TextLabel")
                local bn = Instance.new("TextBox")
                local aP = Instance.new("Frame")
                local aQ = Instance.new("UIGradient")
                local bo = Instance.new("Frame")
                local bp = Instance.new("Frame")
                local bq = Instance.new("TextLabel")
                local br = Instance.new("ImageLabel")
                local bs = Instance.new("ImageLabel")
                local bt = Instance.new("TextButton")
                local bu = Instance.new("ImageLabel")
                local bv = Instance.new("Frame")
                local bw = Instance.new("UICorner")
                local bx = Instance.new("Frame")
                local by = Instance.new("Frame")
                local bz = Instance.new("TextLabel")
                local bA = Instance.new("ImageLabel")
                local bB = Instance.new("ImageLabel")
                local bC = Instance.new("TextButton")
                local bD = Instance.new("Frame")
                local bE = Instance.new("UIListLayout")
                local bF = Instance.new("Frame")
                local bG = Instance.new("UICorner")
                local bH = Instance.new("TextButton")
                local bI = Instance.new("Frame")
                local bJ = Instance.new("UICorner")
                local bK = Instance.new("TextButton")
                b0.Name = "ColorPick"
                b0.Parent = aM
                b0.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                b0.BackgroundTransparency = 1.000
                b0.ClipsDescendants = true
                b0.Position = UDim2.new(0, 0, 0.112280704, 0)
                b0.Size = UDim2.new(1, 0, 0, 35)
                b1.CornerRadius = UDim.new(0, 4)
                b1.Name = "ColorPickCorner"
                b1.Parent = b0
                b2.Name = "Background1"
                b2.Parent = b0
                b2.AnchorPoint = Vector2.new(0.5, 0.5)
                b2.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                b2.Position = UDim2.new(0.5, 0, 0.5, 0)
                b2.Size = UDim2.new(1, -10, 1, 0)
                table.insert(
                    c["Background 1 Color"],
                    function()
                        b2.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                b2.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        b2.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                b3.CornerRadius = UDim.new(0, 4)
                b3.Name = "ColorpickBGCorner"
                b3.Parent = b2
                b4.Name = "TextColor"
                b4.Parent = b2
                b4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b4.BackgroundTransparency = 1.000
                b4.Position = UDim2.new(0, 10, 0, 0)
                b4.Size = UDim2.new(1, -10, 0, 35)
                b4.Font = Enum.Font.GothamBlack
                b4.Text = aY
                b4.TextSize = 14.000
                b4.TextXAlignment = Enum.TextXAlignment.Left
                b4.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        b4.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                b5.Name = "ColorVal"
                b5.Parent = b0
                b5.AnchorPoint = Vector2.new(1, 0)
                b5.BackgroundColor3 = e[a_].Color
                b5.Position = UDim2.new(1, -10, 0, 5)
                b5.Size = UDim2.new(0, 150, 0, 25)
                b6.CornerRadius = UDim.new(0, 4)
                b6.Name = "ColorValCorner"
                b6.Parent = b5
                b7.Name = "ColorValButton"
                b7.Parent = b5
                b7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b7.BackgroundTransparency = 1.000
                b7.Size = UDim2.new(1, 0, 1, 0)
                b7.Font = Enum.Font.SourceSans
                b7.Text = ""
                b7.TextColor3 = Color3.fromRGB(0, 0, 0)
                b7.TextSize = 14.000
                b8.Name = "Hue"
                b8.Parent = b0
                b8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                b8.BorderSizePixel = 0
                b8.Position = UDim2.new(0, 460, 0, 40)
                b8.Size = UDim2.new(0, 25, 0, 200)
                b9.Color =
                    ColorSequence.new {
                    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
                    ColorSequenceKeypoint.new(0.17, Color3.fromRGB(235, 7, 255)),
                    ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 9, 189)),
                    ColorSequenceKeypoint.new(0.49, Color3.fromRGB(0, 193, 196)),
                    ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 255, 0)),
                    ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 247, 0)),
                    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
                }
                b9.Rotation = 90
                b9.Name = "HueGra"
                b9.Parent = b8
                ba.Parent = b8
                ba.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ba.Position = UDim2.new(0, 0, 1, 0)
                ba.Size = UDim2.new(1, 0, 0, 2)
                M.CornerRadius = UDim.new(0, 4)
                M.Parent = b8
                bb.Name = "Concac"
                bb.Parent = b0
                bb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bb.BackgroundTransparency = 1.000
                bb.Position = UDim2.new(0, 495, 0, 40)
                bb.Size = UDim2.new(0, 115, 0, 100)
                bc.Name = "RFrame"
                bc.Parent = bb
                bc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bc.BackgroundTransparency = 1.000
                bc.Size = UDim2.new(1, 0, 0, 25)
                bc.LayoutOrder = 0
                bd.Name = "RText"
                bd.Parent = bc
                bd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bd.BackgroundTransparency = 1.000
                bd.Size = UDim2.new(0, 25, 0, 25)
                bd.Font = Enum.Font.GothamBold
                bd.Text = "R:"
                bd.TextColor3 = Color3.fromRGB(115, 115, 115)
                bd.TextSize = 14.000
                bd.TextXAlignment = Enum.TextXAlignment.Left
                be.Name = "RBox"
                be.Parent = bc
                be.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                be.BackgroundTransparency = 1.000
                be.Position = UDim2.new(0, 25, 0, 0)
                be.Size = UDim2.new(1, -25, 1, 0)
                be.ClearTextOnFocus = false
                be.Font = Enum.Font.GothamBold
                be.Text = "255"
                be.TextColor3 = Color3.fromRGB(255, 255, 255)
                be.TextSize = 14.000
                be.TextXAlignment = Enum.TextXAlignment.Left
                bf.Name = "GFrame"
                bf.Parent = bb
                bf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bf.BackgroundTransparency = 1.000
                bf.Size = UDim2.new(1, 0, 0, 25)
                bf.LayoutOrder = 1
                bg.Name = "GText"
                bg.Parent = bf
                bg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bg.BackgroundTransparency = 1.000
                bg.Size = UDim2.new(0, 25, 0, 25)
                bg.Font = Enum.Font.GothamBold
                bg.Text = "G:"
                bg.TextColor3 = Color3.fromRGB(115, 115, 115)
                bg.TextSize = 14.000
                bg.TextXAlignment = Enum.TextXAlignment.Left
                bh.Name = "GBox"
                bh.Parent = bf
                bh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bh.BackgroundTransparency = 1.000
                bh.Position = UDim2.new(0, 25, 0, 0)
                bh.Size = UDim2.new(1, -25, 1, 0)
                bh.ClearTextOnFocus = false
                bh.Font = Enum.Font.GothamBold
                bh.Text = "255"
                bh.TextColor3 = Color3.fromRGB(255, 255, 255)
                bh.TextSize = 14.000
                bh.TextXAlignment = Enum.TextXAlignment.Left
                bi.Name = "BFrame"
                bi.Parent = bb
                bi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bi.BackgroundTransparency = 1.000
                bi.Size = UDim2.new(1, 0, 0, 25)
                bi.LayoutOrder = 2
                bj.Name = "BText"
                bj.Parent = bi
                bj.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bj.BackgroundTransparency = 1.000
                bj.Size = UDim2.new(0, 25, 0, 25)
                bj.Font = Enum.Font.GothamBold
                bj.Text = "B:"
                bj.TextColor3 = Color3.fromRGB(115, 115, 115)
                bj.TextSize = 14.000
                bj.TextXAlignment = Enum.TextXAlignment.Left
                bk.Name = "BBox"
                bk.Parent = bi
                bk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bk.BackgroundTransparency = 1.000
                bk.Position = UDim2.new(0, 25, 0, 0)
                bk.Size = UDim2.new(1, -25, 1, 0)
                bk.ClearTextOnFocus = false
                bk.Font = Enum.Font.GothamBold
                bk.Text = "255"
                bk.TextColor3 = Color3.fromRGB(255, 255, 255)
                bk.TextSize = 14.000
                bk.TextXAlignment = Enum.TextXAlignment.Left
                ag.Parent = bb
                ag.SortOrder = Enum.SortOrder.LayoutOrder
                bl.Name = "HexFrame"
                bl.Parent = bb
                bl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bl.BackgroundTransparency = 1.000
                bl.Size = UDim2.new(1, 0, 0, 25)
                bl.LayoutOrder = 3
                bm.Name = "HexText"
                bm.Parent = bl
                bm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bm.BackgroundTransparency = 1.000
                bm.Size = UDim2.new(0, 25, 0, 25)
                bm.Font = Enum.Font.GothamBold
                bm.Text = "#"
                bm.TextColor3 = Color3.fromRGB(115, 115, 115)
                bm.TextSize = 14.000
                bm.TextXAlignment = Enum.TextXAlignment.Left
                bn.Name = "HexBox"
                bn.Parent = bl
                bn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bn.BackgroundTransparency = 1.000
                bn.Position = UDim2.new(0, 25, 0, 0)
                bn.Size = UDim2.new(1, -25, 1, 0)
                bn.ClearTextOnFocus = false
                bn.Font = Enum.Font.GothamBold
                bn.Text = "FFFFFF"
                bn.TextColor3 = Color3.fromRGB(255, 255, 255)
                bn.TextSize = 14.000
                bn.TextXAlignment = Enum.TextXAlignment.Left
                aP.Name = "Linesec"
                aP.Parent = bb
                aP.AnchorPoint = Vector2.new(0.5, 1)
                aP.BorderSizePixel = 0
                aP.Position = UDim2.new(0.5, 0, 1, -2)
                aP.Size = UDim2.new(1, -10, 0, 2)
                aP.LayoutOrder = 4
                aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                table.insert(
                    c["Section Underline Color"],
                    function()
                        aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                    end
                )
                aQ.Transparency =
                    NumberSequence.new {
                    NumberSequenceKeypoint.new(0.00, 1.00),
                    NumberSequenceKeypoint.new(0.30, 0.25),
                    NumberSequenceKeypoint.new(0.70, 0.25),
                    NumberSequenceKeypoint.new(1.00, 1.00)
                }
                aQ.Parent = aP
                bo.Name = "CungroiF"
                bo.Parent = b0
                bo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bo.BackgroundTransparency = 1.000
                bo.Position = UDim2.new(0, 495, 0, 145)
                bo.Size = UDim2.new(0, 115, 0, 25)
                bp.Name = "CungroiFF"
                bp.Parent = bo
                bp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bp.BackgroundTransparency = 1.000
                bp.Size = UDim2.new(1, 0, 0, 25)
                bp.LayoutOrder = 4
                bq.Name = "TextColor"
                bq.Parent = bp
                bq.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bq.BackgroundTransparency = 1.000
                bq.Size = UDim2.new(0, 85, 0, 25)
                bq.Font = Enum.Font.GothamBold
                bq.Text = "Rainbow"
                bq.TextSize = 14.000
                bq.TextXAlignment = Enum.TextXAlignment.Left
                bq.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        bq.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                br.Name = "Setting_checkbox"
                br.Parent = bp
                br.AnchorPoint = Vector2.new(1, 0.5)
                br.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                br.BackgroundTransparency = 1.000
                br.Position = UDim2.new(1, -5, 0.5, 0)
                br.Size = UDim2.new(0, 25, 0, 25)
                br.Image = "rbxassetid://4552505888"
                br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                table.insert(
                    c["Toggle Border Color"],
                    function()
                        br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                    end
                )
                bs.Name = "Setting_check"
                bs.Parent = br
                bs.AnchorPoint = Vector2.new(0, 1)
                bs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bs.BackgroundTransparency = 1.000
                bs.Position = UDim2.new(0, 0, 1, 0)
                bs.Image = "rbxassetid://4555411759"
                bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                table.insert(
                    c["Toggle Checked Color"],
                    function()
                        bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                    end
                )
                bt.Name = "Cungroitog"
                bt.Parent = bp
                bt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bt.BackgroundTransparency = 1.000
                bt.Size = UDim2.new(1, 0, 1, 0)
                bt.Font = Enum.Font.SourceSans
                bt.Text = ""
                bt.TextColor3 = Color3.fromRGB(0, 0, 0)
                bt.TextSize = 14.000
                bu.Name = "Color"
                bu.Parent = b0
                bu.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                bu.BorderSizePixel = 0
                bu.Position = UDim2.new(0, 10, 0, 40)
                bu.Size = UDim2.new(0, 440, 0, 200)
                bu.Image = "rbxassetid://4155801252"
                bv.Name = "SelectorColor"
                bv.Parent = bu
                bv.AnchorPoint = Vector2.new(0.5, 0.5)
                bv.BackgroundColor3 = Color3.fromRGB(203, 203, 203)
                bv.BorderColor3 = Color3.fromRGB(70, 70, 70)
                bv.Position = UDim2.new(1, 0, 0, 0)
                bv.Size = UDim2.new(0, 4, 0, 4)
                bw.CornerRadius = UDim.new(0, 4)
                bw.Parent = bu
                bx.Name = "HoithoF"
                bx.Parent = b0
                bx.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bx.BackgroundTransparency = 1.000
                bx.Position = UDim2.new(0, 495, 0, 175)
                bx.Size = UDim2.new(0, 115, 0, 25)
                bx.LayoutOrder = 5
                by.Name = "HoithoF"
                by.Parent = bx
                by.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                by.BackgroundTransparency = 1.000
                by.Size = UDim2.new(1, 0, 1, 25)
                bz.Name = "TextColor"
                bz.Parent = by
                bz.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bz.BackgroundTransparency = 1.000
                bz.Size = UDim2.new(0, 85, 0, 25)
                bz.Font = Enum.Font.GothamBold
                bz.Text = "Breathing"
                bz.TextSize = 14.000
                bz.TextXAlignment = Enum.TextXAlignment.Left
                bz.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        bz.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                bA.Name = "setting_checkbox"
                bA.Parent = by
                bA.AnchorPoint = Vector2.new(1, 0)
                bA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bA.BackgroundTransparency = 1.000
                bA.Position = UDim2.new(1, -5, 0, 0)
                bA.Size = UDim2.new(0, 25, 0, 25)
                bA.Image = "rbxassetid://4552505888"
                bA.ImageColor3 = Color3.fromRGB(209, 23, 23)
                bA.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                table.insert(
                    c["Toggle Border Color"],
                    function()
                        bA.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                    end
                )
                bB.Name = "setting_check"
                bB.Parent = bA
                bB.AnchorPoint = Vector2.new(0, 1)
                bB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bB.BackgroundTransparency = 1.000
                bB.Position = UDim2.new(0, 0, 1, 0)
                bB.Image = "rbxassetid://4555411759"
                bB.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                table.insert(
                    c["Toggle Checked Color"],
                    function()
                        bB.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                    end
                )
                bC.Name = "Hoithoitog"
                bC.Parent = by
                bC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bC.BackgroundTransparency = 1.000
                bC.Size = UDim2.new(1, 0, 0, 25)
                bC.Font = Enum.Font.SourceSans
                bC.Text = ""
                bC.TextColor3 = Color3.fromRGB(0, 0, 0)
                bC.TextSize = 14.000
                bD.Parent = by
                bD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bD.BackgroundTransparency = 1.000
                bD.Position = UDim2.new(0, 0, 0, 30)
                bD.Size = UDim2.new(1, 0, 0, 25)
                bE.Parent = bD
                bE.FillDirection = Enum.FillDirection.Horizontal
                bE.SortOrder = Enum.SortOrder.LayoutOrder
                bE.Padding = UDim.new(0, 5)
                bF.Name = "Cor1"
                bF.Parent = bD
                bF.BackgroundColor3 = e[a_].Breathing.Color1
                bF.Selectable = true
                bF.Size = UDim2.new(0, 25, 0, 25)
                bG.CornerRadius = UDim.new(1, 0)
                bG.Parent = bF
                bH.Name = "BCor1"
                bH.Parent = bF
                bH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bH.BackgroundTransparency = 1.000
                bH.Size = UDim2.new(1, 0, 1, 0)
                bH.Font = Enum.Font.SourceSans
                bH.Text = ""
                bH.TextColor3 = Color3.fromRGB(0, 0, 0)
                bH.TextSize = 14.000
                bI.Name = "Cor2"
                bI.Parent = bD
                bI.BackgroundColor3 = e[a_].Breathing.Color2
                bI.Selectable = true
                bI.Size = UDim2.new(0, 25, 0, 25)
                bJ.CornerRadius = UDim.new(1, 0)
                bJ.Parent = bI
                bK.Name = "BCor2"
                bK.Parent = bI
                bK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                bK.BackgroundTransparency = 1.000
                bK.Size = UDim2.new(1, 0, 1, 0)
                bK.Font = Enum.Font.SourceSans
                bK.Text = ""
                bK.TextColor3 = Color3.fromRGB(0, 0, 0)
                bK.TextSize = 14.000
                local bL = false
                b7.MouseButton1Click:Connect(
                    function()
                        bL = not bL
                        local bM = bL and UDim2.new(1, 0, 0, 255) or UDim2.new(1, 0, 0, 35)
                        w:Create(b0, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Size = bM}):Play()
                    end
                )
                b7.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                local bN = game:GetService("UserInputService")
                local bO = game:GetService("RunService")
                local bP = game.Players.LocalPlayer
                local y = bP:GetMouse()
                local bQ, bR = nil, nil
                local bS = true
                local bT = 0
                local function bU(...)
                    if bS then
                        return wait(...)
                    else
                        wait()
                        return false
                    end
                end
                local function bV(g)
                    return {math.floor(g.r * 255), math.floor(g.g * 255), math.floor(g.b * 255)}
                end
                local function bW(bX)
                    bX = bX:gsub("#", ""):upper():gsub("0X", "")
                    return Color3.fromRGB(
                        tonumber(bX:sub(1, 2), 16),
                        tonumber(bX:sub(3, 4), 16),
                        tonumber(bX:sub(5, 6), 16)
                    )
                end
                local function bY(g)
                    local bZ, b_, B =
                        string.format("%X", math.floor(g.R * 255)),
                        string.format("%X", math.floor(g.G * 255)),
                        string.format("%X", math.floor(g.B * 255))
                    if #bZ < 2 then
                        bZ = "0" .. bZ
                    end
                    if #b_ < 2 then
                        b_ = "0" .. b_
                    end
                    if #B < 2 then
                        B = "0" .. B
                    end
                    return string.format("%s%s%s", bZ, b_, B)
                end
                aV, aW, aX = 1, 1, 1
                local function c0(n, B)
                    if n > B then
                        return n, B
                    else
                        return B, n
                    end
                end
                local function c1(n, B)
                    if n + B > 255 then
                        local c2, c3 = c0(n, B)
                        local a8 = 255 - c2
                        local c4, c5 = c0(a8, c3)
                        return c4 - c5
                    else
                        return n + B
                    end
                end
                function CongColor(n, B)
                    local c6, c7 = n, B
                    local c8 = math.sqrt
                    local c9 = {}
                    c9.R = 255 - c8(((255 - c6.R) ^ 2 + (255 - c7.R) ^ 2) / 2)
                    c9.G = 255 - c8(((255 - c6.G) ^ 2 + (255 - c7.G) ^ 2) / 2)
                    c9.B = 255 - c8(((255 - c6.B) ^ 2 + (255 - c7.B) ^ 2) / 2)
                    return Color3.new(c9.R, c9.G, c9.B)
                end
                local function ca(cb)
                    local c9 = cb or Color3.fromHSV(aV, aW, aX)
                    if not c9 then
                        aW, aV, aX = cb:ToHSV()
                    end
                    bn.Text = bY(c9)
                    bu.BackgroundColor3 = Color3.fromHSV(aV, 1, 1)
                    if cb then
                        bu.BackgroundColor3 = cb
                        bv.Position = UDim2.new(cb and select(3, Color3.toHSV(cb)))
                    end
                    local cc = 1 - Color3.toHSV(c9)
                    local cd = b8.Frame.Position.Y.Scale
                    if cd ~= cc and not ((cc == 0 or cc == 1) and (cd == 1 or cd == 0)) then
                        b8.Frame.Position = UDim2.fromScale(0, cc)
                    end
                    be.Text, bh.Text, bk.Text = bV(c9)[1], bV(c9)[2], bV(c9)[3]
                    b5.BackgroundColor3 = c9
                    local ce = {}
                    getgenv().UIColor[a_] = c9
                end
                ca(e[a_].Color)
                local function cf(cg)
                    if bQ then
                        bQ = bQ:Disconnect() and nil or nil
                    end
                    if bR then
                        bR = bR:Disconnect() and nil or nil
                    end
                    if cg then
                        pcall(
                            function()
                                local ch = 1 / 255
                                while bU() and aU.Cungroi do
                                    bT = ch + bT
                                    if bT > 1 then
                                        bT = 0
                                    end
                                    aV = bT
                                    ca(Color3.fromHSV(bT, 1, 1))
                                end
                            end
                        )
                    end
                end
                local ci = aU.Cungroi and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                local cc = aU.Cungroi and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                local cj = aU.Cungroi and Vector2.new(.5, .5) or Vector2.new(0, 1)
                bs.Size = ci
                bs.Position = cc
                bs.AnchorPoint = cj
                spawn(
                    function()
                        cf(aU.Cungroi)
                    end
                )
                bt.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                bt.MouseButton1Click:Connect(
                    function()
                        aU.Cungroi = not aU.Cungroi
                        ci = aU.Cungroi and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                        cc = aU.Cungroi and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                        cj = aU.Cungroi and Vector2.new(.5, .5) or Vector2.new(0, 1)
                        game.TweenService:Create(
                            bs,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                            {Size = ci, Position = cc, AnchorPoint = cj}
                        ):Play()
                        cf(aU.Cungroi)
                    end
                )
                bn.FocusLost:Connect(
                    function()
                        if #bn.Text > 5 then
                            local ck, cl = pcall(bW, bn.Text)
                            ca(ck and cl)
                        end
                    end
                )
                be.FocusLost:Connect(
                    function()
                        if tonumber(be.Text) > 255 then
                            be.Text = 255
                        elseif tonumber(be.Text) < 0 then
                            be.Text = 0
                        end
                        local ck, cl = pcall(Color3.fromRGB, tonumber(be.Text), tonumber(bk.Text), tonumber(bh.Text))
                        ca(ck and cl)
                    end
                )
                bh.FocusLost:Connect(
                    function()
                        if tonumber(bh.Text) > 255 then
                            bh.Text = 255
                        elseif tonumber(bh.Text) < 0 then
                            bh.Text = 0
                        end
                        local ck, cl = pcall(Color3.fromRGB, tonumber(be.Text), tonumber(bk.Text), tonumber(bh.Text))
                        ca(ck and cl)
                    end
                )
                bk.FocusLost:Connect(
                    function()
                        if tonumber(bk.Text) > 255 then
                            bk.Text = 255
                        elseif tonumber(bk.Text) < 0 then
                            bk.Text = 0
                        end
                        local ck, cl = pcall(Color3.fromRGB, tonumber(be.Text), tonumber(bk.Text), tonumber(bh.Text))
                        ca(ck and cl)
                    end
                )
                aV =
                    1 -
                    math.clamp(b8.Frame.AbsolutePosition.Y - b8.AbsolutePosition.Y, 0, b8.AbsoluteSize.Y) /
                        b8.AbsoluteSize.Y
                aW =
                    math.clamp(bu.SelectorColor.AbsolutePosition.X - bu.AbsolutePosition.X, 0, bu.AbsoluteSize.X) /
                    bu.AbsoluteSize.X
                aX =
                    1 -
                    math.clamp(bu.SelectorColor.AbsolutePosition.Y - bu.AbsolutePosition.Y, 0, bu.AbsoluteSize.Y) /
                        bu.AbsoluteSize.Y
                bu.InputBegan:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bQ then
                                bQ:Disconnect()
                            end
                            _ = true
                            bQ =
                                bO.RenderStepped:Connect(
                                function()
                                    local cm =
                                        math.clamp(y.X - bu.AbsolutePosition.X, 0, bu.AbsoluteSize.X) /
                                        bu.AbsoluteSize.X
                                    local cn =
                                        math.clamp(y.Y - bu.AbsolutePosition.Y, 0, bu.AbsoluteSize.Y) /
                                        bu.AbsoluteSize.Y
                                    bv.Position = UDim2.fromScale(cm, cn)
                                    aW = cm
                                    aX = 1 - cn
                                    ca()
                                end
                            )
                        end
                    end
                )
                bu.InputEnded:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bQ then
                                _ = false
                                bQ:Disconnect()
                            end
                        end
                    end
                )
                b8.InputBegan:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bR then
                                bR:Disconnect()
                            end
                            _ = true
                            bR =
                                bO.RenderStepped:Connect(
                                function()
                                    local co =
                                        math.clamp(y.Y - b8.AbsolutePosition.Y, 0, b8.AbsoluteSize.Y) /
                                        b8.AbsoluteSize.Y
                                    b8.Frame.Position = UDim2.fromScale(0, co)
                                    aV = 1 - co
                                    ca()
                                end
                            )
                        end
                    end
                )
                b8.InputEnded:Connect(
                    function(a7)
                        if a7.UserInputType == Enum.UserInputType.MouseButton1 then
                            if bR then
                                _ = false
                                bR:Disconnect()
                            end
                        end
                    end
                )
                bH.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                bK.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                bH.MouseButton1Click:Connect(
                    function()
                        bF.BackgroundColor3 = b5.BackgroundColor3
                        e[a_].Breathing.Color1 = b5.BackgroundColor3
                    end
                )
                bK.MouseButton1Click:Connect(
                    function()
                        bI.BackgroundColor3 = b5.BackgroundColor3
                        e[a_].Breathing.Color2 = b5.BackgroundColor3
                    end
                )
                bC.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                local cp = false
                spawn(
                    function()
                        while wait() do
                            if e[a_].Breathing.Toggle then
                                ca(b5.BackgroundColor3)
                            end
                        end
                    end
                )
                local function cq()
                    local cr, cs = bI.BackgroundColor3, bF.BackgroundColor3
                    local ci = e[a_].Breathing.Toggle and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                    local cc = e[a_].Breathing.Toggle and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                    local cj = e[a_].Breathing.Toggle and Vector2.new(.5, .5) or Vector2.new(0, 1)
                    game.TweenService:Create(
                        bB,
                        TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                        {Size = ci, Position = cc, AnchorPoint = cj}
                    ):Play()
                    if e[a_].Breathing.Toggle then
                        local ct = game.TweenService:Create(b5, TweenInfo.new(2), {BackgroundColor3 = cs})
                        local cu = game.TweenService:Create(bu, TweenInfo.new(2), {BackgroundColor3 = cs})
                        ct:Play()
                        cu:Play()
                        ct.Completed:Connect(
                            function()
                                if e[a_].Breathing.Toggle then
                                    local cv = game.TweenService:Create(b5, TweenInfo.new(2), {BackgroundColor3 = cr})
                                    local cw = game.TweenService:Create(bu, TweenInfo.new(2), {BackgroundColor3 = cr})
                                    cv:Play()
                                    cw:Play()
                                    if e[a_].Breathing.Toggle then
                                        cv.Completed:Connect(
                                            function()
                                                ct:Play()
                                                cu:Play()
                                            end
                                        )
                                    end
                                end
                            end
                        )
                    end
                end
                spawn(
                    function()
                        cq()
                    end
                )
                bC.MouseButton1Click:Connect(
                    function()
                        e[a_].Breathing.Toggle = not e[a_].Breathing.Toggle
                        cq()
                    end
                )
            end
            function aT.CreateBox(H)
                local cx = tostring(H.Title) or ""
                local cy = tostring(H.Placeholder) or ""
                local aZ = getgenv().UIColor[H.Type] or ""
                local cz = Instance.new("Frame")
                local cA = Instance.new("UICorner")
                local cB = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local cD = Instance.new("TextLabel")
                local cE = Instance.new("Frame")
                local cF = Instance.new("UICorner")
                local cG = Instance.new("TextBox")
                local cH = Instance.new("Frame")
                cz.Name = "BoxFrame"
                cz.Parent = aM
                cz.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cz.BackgroundTransparency = 1.000
                cz.Position = UDim2.new(0, 0, 0.208333328, 0)
                cz.Size = UDim2.new(1, 0, 0, 60)
                cA.CornerRadius = UDim.new(0, 4)
                cA.Name = "BoxCorner"
                cA.Parent = cz
                cB.Name = "Background1"
                cB.Parent = cz
                cB.AnchorPoint = Vector2.new(0.5, 0.5)
                cB.Position = UDim2.new(0.5, 0, 0.5, 0)
                cB.Size = UDim2.new(1, -10, 1, 0)
                cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = cB
                cD.Name = "TextColor"
                cD.Parent = cB
                cD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                cD.BackgroundTransparency = 1.000
                cD.Position = UDim2.new(0, 10, 0, 0)
                cD.Size = UDim2.new(1, -10, 0.5, 0)
                cD.Font = Enum.Font.GothamBlack
                cD.Text = cx
                cD.TextSize = 14.000
                cD.TextXAlignment = Enum.TextXAlignment.Left
                cD.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cD.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cE.Name = "Background2"
                cE.Parent = cB
                cE.AnchorPoint = Vector2.new(1, 0.5)
                cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                cE.ClipsDescendants = true
                cE.Position = UDim2.new(1, -5, 0, 40)
                cE.Size = UDim2.new(1, -10, 0, 25)
                table.insert(
                    c["Text Color"],
                    function()
                        cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cF.CornerRadius = UDim.new(0, 4)
                cF.Name = "ButtonCorner"
                cF.Parent = cE
                cG.Name = "TextColorPlaceholder"
                cG.Parent = cE
                cG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                cG.BackgroundTransparency = 1.000
                cG.Position = UDim2.new(0, 5, 0, 0)
                cG.Size = UDim2.new(1, -5, 1, 0)
                cG.Font = Enum.Font.GothamBold
                cG.PlaceholderText = cy
                cG.Text = ""
                cG.TextSize = 14.000
                cG.TextXAlignment = Enum.TextXAlignment.Left
                cG.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                cG.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Placeholder Text Color"],
                    function()
                        cG.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                    end
                )
                table.insert(
                    c["Text Color"],
                    function()
                        cG.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cH.Name = "Setting_Lineeeee"
                cH.Parent = cE
                cH.BackgroundTransparency = 1.000
                cH.Position = UDim2.new(0, 0, 1, -2)
                cH.Size = UDim2.new(1, 0, 0, 6)
                cH.BackgroundColor3 = getgenv().UIColor["Textbox Highlight Color"]
                table.insert(
                    c["Textbox Highlight Color"],
                    function()
                        cH.BackgroundColor3 = getgenv().UIColor["Textbox Highlight Color"]
                    end
                )
                cG.Focused:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 0}
                        ):Play()
                    end
                )
                cG.Focused:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                cG.FocusLost:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 1}
                        ):Play()
                        if cG.Text ~= "" then
                            getgenv().UIColor[H.Type] = cG.Text
                            if H.Type == "Background Image" then
                                u.ReloadMain(cG.Text)
                            end
                        end
                    end
                )
                local cI = {}
                if aZ then
                    cG.Text = aZ
                    getgenv().UIColor[H.Type] = aZ
                end
                function cI.SetValue(r)
                    cG.Text = r
                    getgenv().UIColor[H.Type] = r
                end
                return cI
            end
            function aT.CreateSlider(H)
                local cx = tostring(H.Title) or ""
                local cJ = tonumber(H.min) or 0
                local cK = tonumber(H.Max) or 100
                local cL = H.Precise or false
                local cM = getgenv().UIColor[H.Type] or 0
                local cN = function(v)
                    getgenv().UIColor[H.Type] = v
                end
                local cO = 600
                local cP = Instance.new("Frame")
                local cQ = Instance.new("UICorner")
                local cR = Instance.new("Frame")
                local cS = Instance.new("UICorner")
                local cT = Instance.new("TextLabel")
                local cU = Instance.new("Frame")
                local cV = Instance.new("TextButton")
                local cW = Instance.new("UICorner")
                local cX = Instance.new("Frame")
                local cY = Instance.new("UICorner")
                local cZ = Instance.new("Frame")
                local c_ = Instance.new("UICorner")
                local d0 = Instance.new("TextBox")
                cP.Name = cx .. "buda"
                cP.Parent = aM
                cP.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cP.BackgroundTransparency = 1.000
                cP.Position = UDim2.new(0, 0, 0.208333328, 0)
                cP.Size = UDim2.new(1, 0, 0, 50)
                cQ.CornerRadius = UDim.new(0, 4)
                cQ.Name = "SliderCorner"
                cQ.Parent = cP
                cR.Name = "Background1"
                cR.Parent = cP
                cR.AnchorPoint = Vector2.new(0.5, 0.5)
                cR.Position = UDim2.new(0.5, 0, 0.5, 0)
                cR.Size = UDim2.new(1, -10, 1, 0)
                cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cS.CornerRadius = UDim.new(0, 4)
                cS.Name = "SliderBGCorner"
                cS.Parent = cR
                cT.Name = "TextColor"
                cT.Parent = cR
                cT.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cT.BackgroundTransparency = 1.000
                cT.Position = UDim2.new(0, 10, 0, 0)
                cT.Size = UDim2.new(1, -10, 0, 25)
                cT.Font = Enum.Font.GothamBlack
                cT.Text = cx
                cT.TextSize = 14.000
                cT.TextXAlignment = Enum.TextXAlignment.Left
                cT.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cT.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cU.Name = "SliderBar"
                cU.Parent = cP
                cU.AnchorPoint = Vector2.new(.5, 0.5)
                cU.Position = UDim2.new(.5, 0, 0.5, 14)
                cU.Size = UDim2.new(0, 600, 0, 6)
                cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cV.Name = "SliderButton "
                cV.Parent = cU
                cV.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cV.BackgroundTransparency = 1.000
                cV.Size = UDim2.new(1, 0, 1, 0)
                cV.Font = Enum.Font.GothamBold
                cV.Text = ""
                cV.TextColor3 = Color3.fromRGB(230, 230, 230)
                cV.TextSize = 14.000
                cW.CornerRadius = UDim.new(1, 0)
                cW.Name = "SliderBarCorner"
                cW.Parent = cU
                cX.Name = "Bar"
                cX.BorderSizePixel = 0
                cX.Parent = cU
                cX.Size = UDim2.new(0, 0, 1, 0)
                cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                table.insert(
                    c["Slider Line Color"],
                    function()
                        cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                    end
                )
                cY.CornerRadius = UDim.new(1, 0)
                cY.Name = "BarCorner"
                cY.Parent = cX
                cZ.Name = "Background2"
                cZ.Parent = cP
                cZ.AnchorPoint = Vector2.new(1, 0)
                cZ.Position = UDim2.new(1, -10, 0, 5)
                cZ.Size = UDim2.new(0, 150, 0, 25)
                cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                c_.CornerRadius = UDim.new(0, 4)
                c_.Name = "Sliderbox"
                c_.Parent = cZ
                d0.Name = "TextColor"
                d0.Parent = cZ
                d0.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                d0.BackgroundTransparency = 1.000
                d0.Size = UDim2.new(1, 0, 1, 0)
                d0.Font = Enum.Font.GothamBold
                d0.Text = ""
                d0.TextSize = 14.000
                d0.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        d0.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cV.MouseEnter:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"]}
                        ):Play()
                    end
                )
                cV.MouseLeave:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Line Color"]}
                        ):Play()
                    end
                )
                local y = game.Players.LocalPlayer:GetMouse()
                if cM then
                    if cM <= cJ then
                        cM = cJ
                    elseif cM >= cK then
                        cM = cK
                    end
                    cX.Size = UDim2.new(1 - (cK - cM) / (cK - cJ), 0, 0, 6)
                    d0.Text = cM
                    cN(cM)
                end
                cV.MouseButton1Down:Connect(
                    function()
                        local d1 =
                            cL and
                            tonumber(
                                string.format(
                                    "%.1f",
                                    (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                )
                            ) or
                            math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                        pcall(
                            function()
                                cN(d1)
                                d0.Text = d1
                            end
                        )
                        cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                        moveconnection =
                            y.Move:Connect(
                            function()
                                local d1 =
                                    cL and
                                    tonumber(
                                        string.format(
                                            "%.1f",
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    ) or
                                    math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                                pcall(
                                    function()
                                        cN(d1)
                                        d0.Text = d1
                                    end
                                )
                                cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                            end
                        )
                        releaseconnection =
                            x.InputEnded:Connect(
                            function(d2)
                                if d2.UserInputType == Enum.UserInputType.MouseButton1 then
                                    local d1 =
                                        cL and
                                        tonumber(
                                            string.format(
                                                "%.1f",
                                                (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                            )
                                        ) or
                                        math.floor(
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    pcall(
                                        function()
                                            cN(d1)
                                            d0.Text = d1
                                        end
                                    )
                                    cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                                    moveconnection:Disconnect()
                                    releaseconnection:Disconnect()
                                end
                            end
                        )
                    end
                )
                local function d3(r)
                    if tonumber(r) <= cJ then
                        cX.Size = UDim2.new(0, 0 * cO, 0, 6)
                        d0.Text = cJ
                        cN(tonumber(cJ))
                    elseif tonumber(r) >= cK then
                        cX.Size = UDim2.new(0, cK / cK * cO, 0, 6)
                        d0.Text = cK
                        cN(tonumber(cK))
                    else
                        cX.Size = UDim2.new(1 - (cK - r) / (cK - cJ), 0, 0, 6)
                        cN(tonumber(r))
                    end
                end
                d0.FocusLost:Connect(
                    function()
                        d3(d0.Text)
                    end
                )
                local d4 = {}
                function d4.SetValue(r)
                    d3(r)
                end
                return d4
            end
            return aT
        end
        return aK
    end
    local d5 = t.CreateCustomColor()
    local d6 = d5.CreateSection("Main")
    d6.CreateColorPicker({Title = "Border Color", Type = "Border Color"})
    d6.CreateColorPicker({Title = "Click Effect Color", Type = "Click Effect Color"})
    d6.CreateColorPicker({Title = "Setting Icon Color", Type = "Setting Icon Color"})
    d6.CreateBox({Title = "Logo Image", Placeholder = "URL Here (PNG only), Recommended 128x128", Type = "Logo Image"})
    local d7 = d5.CreateSection("Search")
    d7.CreateColorPicker({Title = "Search Icon Color", Type = "Search Icon Color"})
    d7.CreateColorPicker({Title = "Search Icon Highlight Color", Type = "Search Icon Highlight Color"})
    local d8 = d5.CreateSection("Text")
    d8.CreateColorPicker({Title = "GUI Text Color", Type = "GUI Text Color"})
    d8.CreateColorPicker({Title = "Text Color", Type = "Text Color"})
    d8.CreateColorPicker({Title = "Placeholder Text Color", Type = "Placeholder Text Color"})
    d8.CreateColorPicker({Title = "Title Text Color", Type = "Title Text Color"})
    local d9 = d5.CreateSection("Background")
    d9.CreateColorPicker({Title = "Background 1 Color", Type = "Background 1 Color"})
    d9.CreateSlider(
        {
            Title = "Background 1 Transparency",
            Type = "Background 1 Transparency",
            Min = 0,
            Max = 1,
            Default = 0,
            Precise = true
        }
    )
    d9.CreateColorPicker({Title = "Background 2 Color", Type = "Background 2 Color"})
    d9.CreateColorPicker({Title = "Background 3 Color", Type = "Background 3 Color"})
    d9.CreateBox(
        {
            Title = "Background Image",
            Placeholder = "URL Here (WEBM / PNG only), Recommended 1280x720",
            Type = "Background Image"
        }
    )
    local da = d5.CreateSection("Page")
    da.CreateColorPicker({Title = "Page Selected Color", Type = "Page Selected Color"})
    local db = d5.CreateSection("Section")
    db.CreateColorPicker({Title = "Section Text Color", Type = "Section Text Color"})
    db.CreateColorPicker({Title = "Section Underline Color", Type = "Section Underline Color"})
    local dc = d5.CreateSection("Toggle")
    dc.CreateColorPicker({Title = "Toggle Border Color", Type = "Toggle Border Color"})
    dc.CreateColorPicker({Title = "Toggle Checked Color", Type = "Toggle Checked Color"})
    dc.CreateColorPicker({Title = "Toggle Desc Color", Type = "Toggle Desc Color"})
    local dd = d5.CreateSection("Button")
    dd.CreateColorPicker({Title = "Button Color", Type = "Button Color"})
    local dd = d5.CreateSection("Label")
    dd.CreateColorPicker({Title = "Label Color", Type = "Label Color"})
    local de = d5.CreateSection("Dropdown")
    de.CreateColorPicker({Title = "Dropdown Icon Color", Type = "Dropdown Icon Color"})
    de.CreateColorPicker({Title = "Dropdown Selected Color", Type = "Dropdown Selected Color"})
    local df = d5.CreateSection("Textbox")
    df.CreateColorPicker({Title = "Textbox Highlight Color", Type = "Textbox Highlight Color"})
    local dg = d5.CreateSection("Box")
    dg.CreateColorPicker({Title = "Box Highlight Color", Type = "Box Highlight Color"})
    local dh = d5.CreateSection("Slider")
    dh.CreateColorPicker({Title = "Slider Line Color", Type = "Slider Line Color"})
    dh.CreateColorPicker({Title = "Slider Highlight Color", Type = "Slider Highlight Color"})
    local di = d5.CreateSection("Animation")
    di.CreateSlider(
        {
            Title = "Tween Animation 1 Speed",
            Type = "Tween Animation 1 Speed",
            Min = 0,
            Max = 0.75,
            Default = 0.25,
            Precise = true
        }
    )
    di.CreateSlider(
        {
            Title = "Tween Animation 2 Speed",
            Type = "Tween Animation 2 Speed",
            Min = 0,
            Max = 1,
            Default = 0.5,
            Precise = true
        }
    )
    di.CreateSlider(
        {
            Title = "Tween Animation 3 Speed",
            Type = "Tween Animation 3 Speed",
            Min = 0,
            Max = 0.5,
            Default = 0.1,
            Precise = true
        }
    )
    local dj = {}
    local dk = -1
    local dl = -1
    local dm = 1
    function dj.CreatePage(H)
        local dn = tostring(H.Page_Name)
        local dp = tostring(H.Page_Title)
        dl = dl + 1
        dk = dk + 1
        local dq = Instance.new("Frame")
        local ba = Instance.new("Frame")
        local dr = Instance.new("UICorner")
        local ds = Instance.new("Frame")
        local dt = Instance.new("Frame")
        local du = Instance.new("UICorner")
        local dv = Instance.new("Frame")
        local dw = Instance.new("TextLabel")
        local dx = Instance.new("TextButton")
        dq.Name = dn .. "_Control"
        dq.Parent = af
        dq.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dq.BackgroundTransparency = 1.000
        dq.Size = UDim2.new(1, -10, 0, 25)
        dq.LayoutOrder = dk
        ba.Parent = dq
        ba.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        ba.BackgroundTransparency = 1.000
        ba.Position = UDim2.new(0, 5, 0, 0)
        ba.Size = UDim2.new(1, -5, 1, 0)
        dr.CornerRadius = UDim.new(0, 4)
        dr.Name = "TabNameCorner"
        dr.Parent = ba
        ds.Name = "Line"
        ds.Parent = ba
        ds.AnchorPoint = Vector2.new(0, 0.5)
        ds.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        ds.BackgroundTransparency = 1.000
        ds.Position = UDim2.new(0, 0, 0.5, 0)
        ds.Size = UDim2.new(0, 14, 1, 0)
        dt.Name = "PageInLine"
        dt.Parent = ds
        dt.AnchorPoint = Vector2.new(0.5, 0.5)
        dt.BorderSizePixel = 0
        dt.Position = UDim2.new(0.5, 0, 0.5, 0)
        dt.Size = UDim2.new(1, -10, 0, 0)
        dt.BackgroundColor3 = getgenv().UIColor["Page Selected Color"]
        table.insert(
            c["Page Selected Color"],
            function()
                dt.BackgroundColor3 = getgenv().UIColor["Page Selected Color"]
            end
        )
        du.Name = "LineCorner"
        du.Parent = dt
        dv.Name = "TabTitleContainer"
        dv.Parent = ba
        dv.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dv.BackgroundTransparency = 1.000
        dv.Position = UDim2.new(0, 15, 0, 0)
        dv.Size = UDim2.new(1, -15, 1, 0)
        dw.Name = "GUITextColor"
        dw.Parent = dv
        dw.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dw.BackgroundTransparency = 1.000
        dw.Size = UDim2.new(1, 0, 1, 0)
        dw.Font = Enum.Font.GothamBold
        dw.Text = dn
        dw.TextColor3 = Color3.fromRGB(230, 230, 230)
        dw.TextSize = 14.000
        dw.TextXAlignment = Enum.TextXAlignment.Left
        dw.TextColor3 = getgenv().UIColor["GUI Text Color"]
        table.insert(
            c["GUI Text Color"],
            function()
                dw.TextColor3 = getgenv().UIColor["GUI Text Color"]
            end
        )
        dx.Name = "PageButton"
        dx.Parent = dq
        dx.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dx.BackgroundTransparency = 1.000
        dx.Size = UDim2.new(1, 0, 1, 0)
        dx.Font = Enum.Font.SourceSans
        dx.Text = ""
        dx.TextColor3 = Color3.fromRGB(0, 0, 0)
        dx.TextSize = 14.000
        local dy = Instance.new("Frame")
        local M = Instance.new("UICorner")
        local dz = Instance.new("TextLabel")
        local dA = Instance.new("ScrollingFrame")
        local dB = Instance.new("UIListLayout")
        local dC = dm
        dm = dm + 1
        dy.Name = "Page" .. dC
        dy.Parent = ai
        dy.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
        dy.Position = UDim2.new(0, 190, 0, 30)
        dy.Size = UDim2.new(0, 435, 0, 325)
        dy.LayoutOrder = dl
        table.insert(
            c["Background 1 Color"],
            function()
                dy.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
            end
        )
        dy.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
        table.insert(
            c["Background 1 Transparency"],
            function()
                dy.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            end
        )
        M.CornerRadius = UDim.new(0, 4)
        M.Parent = dy
        dz.Name = "GUITextColor"
        dz.Parent = dy
        dz.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dz.BackgroundTransparency = 1.000
        dz.Position = UDim2.new(0, 5, 0, 0)
        dz.Size = UDim2.new(1, 0, 0, 25)
        dz.Font = Enum.Font.GothamBold
        dz.Text = dp
        dz.TextSize = 16.000
        dz.TextXAlignment = Enum.TextXAlignment.Left
        dz.TextColor3 = getgenv().UIColor["GUI Text Color"]
        table.insert(
            c["GUI Text Color"],
            function()
                dz.TextColor3 = getgenv().UIColor["GUI Text Color"]
            end
        )
        dA.Name = "PageList"
        dA.Parent = dy
        dA.Active = true
        dA.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        dA.BackgroundTransparency = 1.000
        dA.BorderColor3 = Color3.fromRGB(27, 42, 53)
        dA.BorderSizePixel = 0
        dA.Position = UDim2.new(0, 5, 0, 30)
        dA.Size = UDim2.new(1, -10, 1, -30)
        dA.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        dA.ScrollBarThickness = 5
        dA.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        dB.Name = "Pagelistlayout"
        dB.Parent = dA
        dB.SortOrder = Enum.SortOrder.LayoutOrder
        dB.Padding = UDim.new(0, 5)
        dB:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                dA.CanvasSize = UDim2.new(0, 0, 0, dB.AbsoluteContentSize.Y + 5)
            end
        )
        local dD = Instance.new("Frame")
        local aA = Instance.new("UICorner")
        local aB = Instance.new("Frame")
        local aC = Instance.new("ImageLabel")
        local aD = Instance.new("TextButton")
        local dE = Instance.new("TextBox")
        dD.Name = "Background2"
        dD.Parent = dy
        dD.AnchorPoint = Vector2.new(1, 0)
        dD.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
        dD.Position = UDim2.new(1, -5, 0, 5)
        dD.Size = UDim2.new(0, 20, 0, 20)
        dD.ClipsDescendants = true
        table.insert(
            c["Background 2 Color"],
            function()
                dD.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
            end
        )
        aA.CornerRadius = UDim.new(0, 2)
        aA.Name = "PageSearchCorner"
        aA.Parent = dD
        aB.Name = "SearchFrame"
        aB.Parent = dD
        aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aB.BackgroundTransparency = 1.000
        aB.Size = UDim2.new(0, 20, 0, 20)
        aC.Name = "SearchIcon"
        aC.Parent = aB
        aC.AnchorPoint = Vector2.new(0.5, 0.5)
        aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aC.BackgroundTransparency = 1.000
        aC.Position = UDim2.new(0.5, 0, 0.5, 0)
        aC.Size = UDim2.new(0, 16, 0, 16)
        aC.Image = "rbxassetid://8154282545"
        aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
        table.insert(
            c["Search Icon Color"],
            function()
                aC.ImageColor3 = getgenv().UIColor["Search Icon Color"]
            end
        )
        aD.Name = "active"
        aD.Parent = aB
        aD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aD.BackgroundTransparency = 1.000
        aD.Size = UDim2.new(1, 0, 1, 0)
        aD.Font = Enum.Font.SourceSans
        aD.Text = ""
        aD.TextColor3 = Color3.fromRGB(0, 0, 0)
        aD.TextSize = 14.000
        dE.Name = "TextColorPlaceholder"
        dE.Parent = dD
        dE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        dE.BackgroundTransparency = 1.000
        dE.Position = UDim2.new(0, 30, 0, 0)
        dE.Size = UDim2.new(1, -30, 1, 0)
        dE.Font = Enum.Font.GothamBold
        dE.Text = ""
        dE.TextSize = 14.000
        dE.TextXAlignment = Enum.TextXAlignment.Left
        dE.PlaceholderText = "Search Section name"
        dE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
        dE.TextColor3 = getgenv().UIColor["Text Color"]
        table.insert(
            c["Placeholder Text Color"],
            function()
                dE.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
            end
        )
        table.insert(
            c["Text Color"],
            function()
                dE.TextColor3 = getgenv().UIColor["Text Color"]
            end
        )
        local dF = false
        aD.MouseEnter:Connect(
            function()
                w:Create(
                    aC,
                    TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                    {ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"]}
                ):Play()
            end
        )
        aD.MouseLeave:Connect(
            function()
                w:Create(
                    aC,
                    TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]),
                    {ImageColor3 = getgenv().UIColor["Search Icon Color"]}
                ):Play()
            end
        )
        aD.MouseButton1Click:Connect(
            function()
                u.ButtonEffect()
            end
        )
        dE.Focused:Connect(
            function()
                u.ButtonEffect()
            end
        )
        aD.MouseButton1Click:Connect(
            function()
                dF = not dF
                local aG = dF and UDim2.new(0, 175, 0, 20) or UDim2.new(0, 20, 0, 20)
                game.TweenService:Create(dD, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = aG}):Play(

                )
            end
        )
        local function dG()
            for a, v in next, dA:GetChildren() do
                if not v:IsA("UIListLayout") then
                    v.Visible = false
                end
            end
        end
        local function dH()
            for n, B in pairs(dA:GetChildren()) do
                if not B:IsA("UIListLayout") then
                    if string.find(string.lower(B.Name), string.lower(dE.Text)) then
                        B.Visible = true
                    end
                end
            end
        end
        dE:GetPropertyChangedSignal("Text"):Connect(
            function()
                dG()
                dH()
            end
        )
        for a, v in pairs(af:GetChildren()) do
            if not v:IsA("UIListLayout") then
                if a == 2 then
                    v.Frame.Line.PageInLine.Size = UDim2.new(1, -10, 1, -10)
                    oldlay = v.LayoutOrder
                    oldobj = v
                end
            end
        end
        dx.MouseButton1Click:Connect(
            function()
                spawn(
                    function()
                        u.ButtonEffect()
                    end
                )
                if tostring(aj.CurrentPage) == dy.Name then
                    return
                end
                for a, v in pairs(ai:GetChildren()) do
                    if not v:IsA("UIPageLayout") and not v:IsA("UICorner") then
                        v.Visible = false
                    end
                end
                dy.Visible = true
                aj:JumpTo(dy)
                for a, v in next, af:GetChildren() do
                    if not v:IsA("UIListLayout") then
                        if v.Name == dn .. "_Control" then
                            if v.LayoutOrder > oldlay then
                                oldobj.Active = false
                                w:Create(
                                    oldobj.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 0, 0),
                                        Position = UDim2.new(0.5, 0, 1, 0),
                                        AnchorPoint = Vector2.new(.5, 1)
                                    }
                                ):Play()
                                v.Frame.Line.PageInLine.Position = UDim2.new(0.5, 0, 0, 0)
                                v.Frame.Line.PageInLine.AnchorPoint = Vector2.new(.5, 0)
                                wait(getgenv().UIColor["Tween Animation 1 Speed"])
                                w:Create(
                                    v.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 1, -10),
                                        Position = UDim2.new(0.5, 0, .5, 0),
                                        AnchorPoint = Vector2.new(.5, .5)
                                    }
                                ):Play()
                                v.Active = true
                                oldobj = v
                                oldlay = v.LayoutOrder
                            else
                                oldobj.Active = false
                                w:Create(
                                    oldobj.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 0, 0),
                                        Position = UDim2.new(0.5, 0, 0, 0),
                                        AnchorPoint = Vector2.new(.5, 0)
                                    }
                                ):Play()
                                v.Frame.Line.PageInLine.Position = UDim2.new(0.5, 0, 1, 0)
                                v.Frame.Line.PageInLine.AnchorPoint = Vector2.new(.5, 1)
                                wait(getgenv().UIColor["Tween Animation 1 Speed"])
                                w:Create(
                                    v.Frame.Line.PageInLine,
                                    TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                                    {
                                        Size = UDim2.new(1, -10, 1, -10),
                                        Position = UDim2.new(0.5, 0, .5, 0),
                                        AnchorPoint = Vector2.new(.5, .5)
                                    }
                                ):Play()
                                v.Active = true
                                oldobj = v
                                oldlay = v.LayoutOrder
                            end
                        end
                    end
                end
            end
        )
        local dI = {}
        function dI.CreateSection(aL)
            local aM = Instance.new("Frame")
            local M = Instance.new("UICorner")
            local aN = Instance.new("Frame")
            local aO = Instance.new("TextLabel")
            local aP = Instance.new("Frame")
            local aQ = Instance.new("UIGradient")
            local aR = Instance.new("UIListLayout")
            aM.Name = aL .. "_Dot"
            aM.Parent = dA
            aM.Size = UDim2.new(0, 415, 0, 100)
            aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
            table.insert(
                c["Background 3 Color"],
                function()
                    aM.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
                end
            )
            aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            table.insert(
                c["Background 1 Transparency"],
                function()
                    aM.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                end
            )
            M.CornerRadius = UDim.new(0, 4)
            M.Parent = aM
            aN.Name = "Topsec"
            aN.Parent = aM
            aN.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            aN.BackgroundTransparency = 1.000
            aN.Size = UDim2.new(0, 415, 0, 30)
            aO.Name = "Sectiontitle"
            aO.Parent = aN
            aO.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            aO.BackgroundTransparency = 1.000
            aO.Size = UDim2.new(1, 0, 1, 0)
            aO.Font = Enum.Font.GothamBold
            aO.Text = aL
            aO.TextSize = 14.000
            aO.TextColor3 = getgenv().UIColor["Section Text Color"]
            table.insert(
                c["Section Text Color"],
                function()
                    aO.TextColor3 = getgenv().UIColor["Section Text Color"]
                end
            )
            aP.Name = "Linesec"
            aP.Parent = aN
            aP.AnchorPoint = Vector2.new(0.5, 1)
            aP.BorderSizePixel = 0
            aP.Position = UDim2.new(0.5, 0, 1, -2)
            aP.Size = UDim2.new(1, -10, 0, 2)
            aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
            table.insert(
                c["Section Underline Color"],
                function()
                    aP.BackgroundColor3 = getgenv().UIColor["Section Underline Color"]
                end
            )
            aQ.Transparency =
                NumberSequence.new {
                NumberSequenceKeypoint.new(0.00, 1.00),
                NumberSequenceKeypoint.new(0.50, 0.00),
                NumberSequenceKeypoint.new(0.51, 0.02),
                NumberSequenceKeypoint.new(1.00, 1.00)
            }
            aQ.Parent = aP
            aR.Name = "SectionList"
            aR.Parent = aM
            aR.SortOrder = Enum.SortOrder.LayoutOrder
            aR.Padding = UDim.new(0, 5)
            aR:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    aM.Size = UDim2.new(1, -5, 0, aR.AbsoluteContentSize.Y + 5)
                end
            )
            local dJ = {}
            function dJ.CreateToggle(H, cN)
                local aY = tostring(H.Title)
                local I = H.Desc
                local aZ = H.Default
                local cN = cN or function()
                    end
                local dK = Instance.new("Frame")
                local dL = Instance.new("Frame")
                local br = Instance.new("ImageLabel")
                local bs = Instance.new("ImageLabel")
                local dM = Instance.new("TextLabel")
                local dN = Instance.new("TextLabel")
                local dO = Instance.new("Frame")
                local dP = Instance.new("UICorner")
                local dQ = Instance.new("TextButton")
                local dR = Instance.new("UIListLayout")
                dK.Name = "ToggleFrame"
                dK.Parent = aM
                dK.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dK.BackgroundTransparency = 1.000
                dK.Position = UDim2.new(0, 0, 0.300000012, 0)
                dK.Size = UDim2.new(1, 0, 0, 0)
                dK.AutomaticSize = Enum.AutomaticSize.Y
                dL.Name = "TogFrame1"
                dL.Parent = dK
                dL.AnchorPoint = Vector2.new(0.5, 0.5)
                dL.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dL.BackgroundTransparency = 1.000
                dL.Position = UDim2.new(0.5, 0, 0.5, 0)
                dL.Size = UDim2.new(1, -10, 0, 0)
                dL.AutomaticSize = Enum.AutomaticSize.Y
                br.Name = "checkbox"
                br.Parent = dL
                br.AnchorPoint = Vector2.new(1, 0.5)
                br.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                br.BackgroundTransparency = 1.000
                br.Position = UDim2.new(1, -5, 0.5, 3)
                br.Size = UDim2.new(0, 25, 0, 25)
                br.Image = "rbxassetid://4552505888"
                br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                table.insert(
                    c["Toggle Border Color"],
                    function()
                        br.ImageColor3 = getgenv().UIColor["Toggle Border Color"]
                    end
                )
                bs.Name = "check"
                bs.Parent = br
                bs.AnchorPoint = Vector2.new(0, 1)
                bs.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                bs.BackgroundTransparency = 1.000
                bs.Position = UDim2.new(0, 0, 1, 0)
                bs.Image = "rbxassetid://4555411759"
                bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                table.insert(
                    c["Toggle Checked Color"],
                    function()
                        bs.ImageColor3 = getgenv().UIColor["Toggle Checked Color"]
                    end
                )
                local cac = 5
                if I then
                    cac = 0
                    dM.Name = "ToggleDesc"
                    dM.Parent = dL
                    dM.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    dM.BackgroundTransparency = 1.000
                    dM.Position = UDim2.new(0, 15, 0, 20)
                    dM.Size = UDim2.new(1, -50, 0, 0)
                    dM.Font = Enum.Font.GothamBlack
                    dM.Text = I
                    dM.TextSize = 13.000
                    dM.TextWrapped = true
                    dM.TextXAlignment = Enum.TextXAlignment.Left
                    dM.RichText = true
                    dM.AutomaticSize = Enum.AutomaticSize.Y
                    dM.TextColor3 = getgenv().UIColor["Toggle Desc Color"]
                    table.insert(
                        c["Toggle Desc Color"],
                        function()
                            dM.TextColor3 = getgenv().UIColor["Toggle Desc Color"]
                        end
                    )
                else
                    dM.Text = ""
                end
                dN.Name = "TextColor"
                dN.Parent = dL
                dN.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dN.BackgroundTransparency = 1.000
                dN.Position = UDim2.new(0, 10, 0, cac)
                dN.Size = UDim2.new(1, -10, 0, 20)
                dN.Font = Enum.Font.GothamBlack
                dN.Text = aY
                dN.TextSize = 14.000
                dN.TextXAlignment = Enum.TextXAlignment.Left
                dN.TextYAlignment = Enum.TextYAlignment.Center
                dN.RichText = true
                dN.AutomaticSize = Enum.AutomaticSize.Y
                dN.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        dN.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                dO.Name = "Background1"
                dO.Parent = dL
                dO.Size = UDim2.new(1, 0, 1, 6)
                dO.ZIndex = 0
                dO.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        dO.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                dO.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        dO.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                dP.CornerRadius = UDim.new(0, 4)
                dP.Name = "ToggleCorner"
                dP.Parent = dO
                dQ.Name = "ToggleButton"
                dQ.Parent = dL
                dQ.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dQ.BackgroundTransparency = 1.000
                dQ.Size = UDim2.new(1, 0, 1, 6)
                dQ.Font = Enum.Font.SourceSans
                dQ.Text = ""
                dQ.TextColor3 = Color3.fromRGB(0, 0, 0)
                dQ.TextSize = 14.000
                dR.Name = "ToggleList"
                dR.Parent = dK
                dR.HorizontalAlignment = Enum.HorizontalAlignment.Center
                dR.SortOrder = Enum.SortOrder.LayoutOrder
                dR.VerticalAlignment = Enum.VerticalAlignment.Center
                dR.Padding = UDim.new(0, 5)
                local function dS(dT)
                    local ci = dT and UDim2.new(1, -4, 1, -4) or UDim2.new(0, 0, 0, 0)
                    local cc = dT and UDim2.new(.5, 0, .5, 0) or UDim2.new(0, 0, 1, 0)
                    local cj = dT and Vector2.new(.5, .5) or Vector2.new(0, 1)
                    game.TweenService:Create(
                        bs,
                        TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]),
                        {Size = ci, Position = cc, AnchorPoint = cj}
                    ):Play()
                    cN(dT)
                end
                if cN then
                    dS(aZ)
                end
                dQ.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                dQ.MouseButton1Down:Connect(
                    function()
                        aZ = not aZ
                        dS(aZ)
                    end
                )
                local dU = {}
                function dU.SetStage(d1)
                    dS(d1)
                end
                return dU
            end
            function dJ.CreateButton(H, cN)
                local aY = H.Title
                local cN = cN or function()
                    end
                local dV = Instance.new("Frame")
                local dW = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local dX = Instance.new("TextLabel")
                local dY = Instance.new("TextButton")
                dV.Name = aY .. "dot"
                dV.Parent = aM
                dV.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dV.BackgroundTransparency = 1.000
                dV.Position = UDim2.new(0, 0, 0.300000012, 0)
                dV.Size = UDim2.new(1, 0, 0, 25)
                dW.Name = "ButtonBG"
                dW.Parent = dV
                dW.AnchorPoint = Vector2.new(0.5, 0.5)
                dW.Position = UDim2.new(0.5, 0, 0.5, 0)
                dW.Size = UDim2.new(1, -10, 1, 0)
                dW.BackgroundColor3 = getgenv().UIColor["Button Color"]
                table.insert(
                    c["Button Color"],
                    function()
                        dW.BackgroundColor3 = getgenv().UIColor["Button Color"]
                    end
                )
                dW.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        dW.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = dW
                dX.Name = "TextColor"
                dX.Parent = dW
                dX.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dX.BackgroundTransparency = 1.000
                dX.Position = UDim2.new(0, 10, 0, 0)
                dX.Size = UDim2.new(1, -10, 1, 0)
                dX.Font = Enum.Font.GothamBlack
                dX.Text = aY
                dX.TextSize = 14.000
                dX.TextXAlignment = Enum.TextXAlignment.Left
                dX.TextColor3 = getgenv().UIColor["Button Text Color"]
                table.insert(
                    c["Button Text Color"],
                    function()
                        dX.TextColor3 = getgenv().UIColor["Button Text Color"]
                    end
                )
                dY.Name = "Button"
                dY.Parent = dW
                dY.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dY.BackgroundTransparency = 1.000
                dY.Size = UDim2.new(1, 0, 1, 0)
                dY.Font = Enum.Font.SourceSans
                dY.Text = ""
                dY.TextColor3 = Color3.fromRGB(0, 0, 0)
                dY.TextSize = 14.000
                dY.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                dY.MouseButton1Down:Connect(
                    function()
                        cN()
                    end
                )
            end
            function dJ.CreateLabel(H)
                local aY = tostring(H.Title)
                local dZ = Instance.new("Frame")
                local d_ = Instance.new("Frame")
                local e0 = Instance.new("UICorner")
                local e1 = Instance.new("TextLabel")
                dZ.Name = "LabelFrame"
                dZ.Parent = aM
                dZ.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                dZ.BackgroundTransparency = 1.000
                dZ.Position = UDim2.new(0, 0, 0, 0)
                dZ.Size = UDim2.new(1, 0, 0, 0)
                dZ.AutomaticSize = Enum.AutomaticSize.Y
                d_.Name = "LabelBG"
                d_.Parent = dZ
                d_.AnchorPoint = Vector2.new(0.5, 0)
                d_.Position = UDim2.new(0.5, 0, 0, 0)
                d_.Size = UDim2.new(1, -10, 0, -10)
                d_.BackgroundColor3 = getgenv().UIColor["Label Color"]
                d_.AutomaticSize = Enum.AutomaticSize.Y
                table.insert(
                    c["Label Color"],
                    function()
                        d_.BackgroundColor3 = getgenv().UIColor["Label Color"]
                    end
                )
                d_.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        d_.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                e0.CornerRadius = UDim.new(0, 4)
                e0.Name = "LabelCorner"
                e0.Parent = d_
                e1.Name = "TextColor"
                e1.Parent = d_
                e1.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                e1.BackgroundTransparency = 1.000
                e1.Position = UDim2.new(0, 10, 0, 3)
                e1.Size = UDim2.new(1, -20, 1, 0)
                e1.Font = Enum.Font.GothamBlack
                e1.Text = aY
                e1.TextSize = 14.000
                e1.TextXAlignment = Enum.TextXAlignment.Left
                e1.AutomaticSize = Enum.AutomaticSize.Y
                e1.TextWrapped = true
                e1.TextColor3 = getgenv().UIColor["Label Text Color"]
                table.insert(
                    c["Label Text Color"],
                    function()
                        e1.TextColor3 = getgenv().UIColor["Label Text Color"]
                    end
                )
                local e2 = {}
                function e2.SetText(duma)
                    e1.Text = duma
                end
                function e2.SetColor(g)
                    e1.TextColor3 = g
                end
                return e2
            end
            function dJ.CreateDropdown(H, cN)
                local aY = tostring(H.Title)
                local e4 = H.List
                local e5 = H.Search or false
                local e6 = H.Selected or false
                local aZ = H.Default
                local cN = cN or function()
                    end
                local e7 = Instance.new("Frame")
                local e8 = Instance.new("Frame")
                local e9 = Instance.new("UICorner")
                local ea = Instance.new("Frame")
                local M = Instance.new("UICorner")
                local eb = Instance.new("ImageLabel")
                local ec = Instance.new("TextButton")
                local ed = Instance.new("Frame")
                local ee = Instance.new("ScrollingFrame")
                local ef = Instance.new("Frame")
                local eg = Instance.new("UIListLayout")
                local eh
                if e5 then
                    eh = Instance.new("TextBox")
                    ec.Visible = false
                else
                    eh = Instance.new("TextLabel")
                end
                e7.Name = aY .. "DropdownFrame"
                e7.Parent = aM
                e7.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                e7.BackgroundTransparency = 1.000
                e7.Position = UDim2.new(0, 0, 0.473684222, 0)
                e7.Size = UDim2.new(1, 0, 0, 25)
                e8.Name = "Background1"
                e8.Parent = e7
                e8.AnchorPoint = Vector2.new(0.5, 0.5)
                e8.Position = UDim2.new(0.5, 0, 0.5, 0)
                e8.Size = UDim2.new(1, -10, 1, 0)
                e8.ClipsDescendants = true
                e8.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        e8.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                e8.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        e8.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                e9.CornerRadius = UDim.new(0, 4)
                e9.Name = "Dropdowncorner"
                e9.Parent = e8
                ea.Name = "Background2"
                ea.Parent = e8
                ea.Size = UDim2.new(1, 0, 0, 25)
                ea.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        ea.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                ea.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        ea.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                M.CornerRadius = UDim.new(0, 4)
                M.Parent = ea
                eh.Name = "TextColorPlaceholder"
                eh.Parent = ea
                eh.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eh.BackgroundTransparency = 1.000
                eh.Position = UDim2.new(0, 10, 0, 0)
                eh.Size = UDim2.new(1, -40, 1, 0)
                eh.Font = Enum.Font.GothamBlack
                eh.Text = ""
                eh.TextSize = 14.000
                eh.TextXAlignment = Enum.TextXAlignment.Left
                eh.ClipsDescendants = true
                local ei = Instance.new("IntValue", eh)
                ei.Value = -1
                if aZ and table.find(e4, aZ) then
                    ei.Value = table.find(e4, aZ)
                end
                if not e6 then
                    if e5 then
                        eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                        eh.PlaceholderText = aY .. ": " .. tostring(aZ)
                        table.insert(
                            c["Placeholder Text Color"],
                            function()
                                eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                            end
                        )
                    else
                        eh.Text = aY .. ": " .. tostring(aZ)
                    end
                else
                    if e5 then
                        eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                        eh.PlaceholderText = aY .. ": " .. tostring(aZ)
                        table.insert(
                            c["Placeholder Text Color"],
                            function()
                                eh.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                            end
                        )
                    else
                        eh.Text = aY .. ": " .. tostring(aZ)
                    end
                end
                eh.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        eh.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                eb.Name = "ImgDrop"
                eb.Parent = ea
                eb.AnchorPoint = Vector2.new(1, 0.5)
                eb.BackgroundTransparency = 1.000
                eb.BorderColor3 = Color3.fromRGB(27, 42, 53)
                eb.Position = UDim2.new(1, -6, 0.5, 0)
                eb.Size = UDim2.new(0, 15, 0, 15)
                eb.Image = "rbxassetid://6954383209"
                eb.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"]
                table.insert(
                    c["Dropdown Icon Color"],
                    function()
                        eb.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"]
                    end
                )
                ec.Name = "DropdownButton"
                ec.Parent = ea
                ec.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ec.BackgroundTransparency = 1.000
                ec.Size = UDim2.new(1, 0, 1, 0)
                ec.Font = Enum.Font.GothamBold
                ec.Text = ""
                ec.TextColor3 = Color3.fromRGB(230, 230, 230)
                ec.TextSize = 14.000
                ed.Name = "Dropdownlisttt"
                ed.Parent = e8
                ed.BackgroundTransparency = 1.000
                ed.BorderSizePixel = 0
                ed.Position = UDim2.new(0, 0, 0, 25)
                ed.Size = UDim2.new(1, 0, 0, 25)
                ed.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ee.Name = "DropdownScroll"
                ee.Parent = ed
                ee.Active = true
                ee.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ee.BackgroundTransparency = 1.000
                ee.BorderSizePixel = 0
                ee.Size = UDim2.new(1, 0, 1, 0)
                ee.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                ee.CanvasSize = UDim2.new(0, 0, 0, 0)
                ee.ScrollBarThickness = 5
                ee.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                ef.Name = "ScrollContainer"
                ef.Parent = ee
                ef.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                ef.BackgroundTransparency = 1.000
                ef.Position = UDim2.new(0, 5, 0, 5)
                ef.Size = UDim2.new(1, -15, 1, -5)
                eg.Name = "ScrollContainerList"
                eg.Parent = ef
                eg.SortOrder = Enum.SortOrder.LayoutOrder
                eg:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                    function()
                        ee.CanvasSize = UDim2.new(0, 0, 0, 10 + eg.AbsoluteContentSize.Y + 5)
                    end
                )
                local ej = false
                local ek = {}
                local el = {}
                local function em()
                    for a in pairs(ek) do
                        ek[a] = nil
                    end
                    for en, eo in pairs(ef:GetChildren()) do
                        if not eo:IsA("UIListLayout") and not eo:IsA("UIPadding") and not eo:IsA("UIGridLayout") then
                            eo.Visible = false
                        end
                    end
                    eh.Text = string.lower(eh.Text)
                end
                local function ep()
                    local eq = {}
                    for a, v in pairs(el) do
                        if string.find(v, eh.Text) then
                            table.insert(ek, v)
                        end
                    end
                    for n, B in pairs(ef:GetChildren()) do
                        for er, es in pairs(ek) do
                            if es == B.Name then
                                B.Visible = true
                            end
                        end
                    end
                end
                local function et()
                    for a, v in next, ef:GetChildren() do
                        if v:IsA("Frame") then
                            v:Destroy()
                        end
                    end
                end
                local eu = e4
                local function ev()
                    et()
                    el = {}
                    for a, v in pairs(eu) do
                        if not e6 then
                            table.insert(el, string.lower(v))
                        else
                            table.insert(el, string.lower(a))
                        end
                    end
                    if not e6 then
                        for a, v in pairs(eu) do
                            local ew = Instance.new("Frame")
                            local ex = Instance.new("UICorner")
                            local ds = Instance.new("Frame")
                            local dt = Instance.new("Frame")
                            local du = Instance.new("UICorner")
                            local ey = Instance.new("Frame")
                            local ez = Instance.new("TextButton")
                            ew.Name = string.lower(v)
                            ew.Parent = ef
                            ew.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ew.BackgroundTransparency = 1.000
                            ew.Size = UDim2.new(1, 0, 0, 25)
                            ex.CornerRadius = UDim.new(0, 4)
                            ex.Name = "DropvalCorner"
                            ex.Parent = ew
                            ds.Name = "Line"
                            ds.Parent = ew
                            ds.AnchorPoint = Vector2.new(0, 0.5)
                            ds.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ds.BackgroundTransparency = 1.000
                            ds.Position = UDim2.new(0, 0, 0.5, 0)
                            ds.Size = UDim2.new(0, 14, 1, 0)
                            dt.Name = "InLine"
                            dt.Parent = ds
                            dt.AnchorPoint = Vector2.new(0.5, 0.5)
                            dt.BorderSizePixel = 0
                            dt.Position = UDim2.new(0.5, 0, 0.5, 0)
                            dt.Size = UDim2.new(1, -10, 1, -10)
                            dt.BackgroundTransparency = 1
                            dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                            table.insert(
                                c["Dropdown Selected Color"],
                                function()
                                    dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                                end
                            )
                            du.Name = "LineCorner"
                            du.Parent = dt
                            ey.Name = "Dropvalcontainer"
                            ey.Parent = ew
                            ey.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ey.BackgroundTransparency = 1.000
                            ey.Position = UDim2.new(0, 15, 0, 0)
                            ey.Size = UDim2.new(1, -15, 1, 0)
                            ez.Name = "TextColor"
                            ez.Parent = ey
                            ez.Active = false
                            ez.BackgroundTransparency = 1.000
                            ez.Selectable = false
                            ez.Size = UDim2.new(1, 0, 1, 0)
                            ez.Font = Enum.Font.GothamBold
                            ez.Text = v
                            ez.TextSize = 14.000
                            ez.TextWrapped = true
                            ez.TextXAlignment = Enum.TextXAlignment.Left
                            ez.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ez.TextColor3 = getgenv().UIColor["Text Color"]
                            table.insert(
                                c["Text Color"],
                                function()
                                    ez.TextColor3 = getgenv().UIColor["Text Color"]
                                end
                            )
                            if e5 then
                                if ei.Value == a then
                                    dt.BackgroundTransparency = 0
                                end
                            else
                                if ei.Value == a then
                                    dt.BackgroundTransparency = 0
                                end
                            end
                            ez.MouseButton1Click:Connect(
                                function()
                                    if e5 then
                                        eh.PlaceholderText = aY .. ": " .. v
                                        ei.Value = a
                                    else
                                        eh.Text = aY .. ": " .. v
                                        ei.Value = a
                                    end
                                    ev()
                                    if cN then
                                        cN(v, a)
                                    end
                                end
                            )
                            ez.MouseButton1Click:Connect(
                                function()
                                    u.ButtonEffect()
                                end
                            )
                        end
                    else
                        for a, v in pairs(eu) do
                            local eA = v and 0 or 1
                            local ew = Instance.new("Frame")
                            local ex = Instance.new("UICorner")
                            local ds = Instance.new("Frame")
                            local dt = Instance.new("Frame")
                            local du = Instance.new("UICorner")
                            local ey = Instance.new("Frame")
                            local ez = Instance.new("TextButton")
                            ew.Name = string.lower(a)
                            ew.Parent = ef
                            ew.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ew.BackgroundTransparency = 1.000
                            ew.Size = UDim2.new(1, 0, 0, 25)
                            ex.CornerRadius = UDim.new(0, 4)
                            ex.Name = "DropvalCorner"
                            ex.Parent = ew
                            ds.Name = "Line"
                            ds.Parent = ew
                            ds.AnchorPoint = Vector2.new(0, 0.5)
                            ds.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ds.BackgroundTransparency = 1
                            ds.Position = UDim2.new(0, 0, 0.5, 0)
                            ds.Size = UDim2.new(0, 14, 1, 0)
                            dt.Name = "InLine"
                            dt.Parent = ds
                            dt.AnchorPoint = Vector2.new(0.5, 0.5)
                            dt.BorderSizePixel = 0
                            dt.Position = UDim2.new(0.5, 0, 0.5, 0)
                            dt.Size = UDim2.new(1, -10, 1, -10)
                            dt.BackgroundTransparency = eA
                            dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                            table.insert(
                                c["Dropdown Selected Color"],
                                function()
                                    dt.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Color"]
                                end
                            )
                            du.Name = "LineCorner"
                            du.Parent = dt
                            ey.Name = "Dropvalcontainer"
                            ey.Parent = ew
                            ey.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ey.BackgroundTransparency = 1.000
                            ey.Position = UDim2.new(0, 15, 0, 0)
                            ey.Size = UDim2.new(1, -15, 1, 0)
                            ez.Name = "TextColor"
                            ez.Parent = ey
                            ez.Active = false
                            ez.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            ez.BackgroundTransparency = 1.000
                            ez.Selectable = false
                            ez.Size = UDim2.new(1, 0, 1, 0)
                            ez.Font = Enum.Font.GothamBold
                            ez.Text = a
                            ez.TextSize = 14.000
                            ez.TextWrapped = true
                            ez.TextXAlignment = Enum.TextXAlignment.Left
                            ez.TextColor3 = getgenv().UIColor["Text Color"]
                            table.insert(
                                c["Text Color"],
                                function()
                                    ez.TextColor3 = getgenv().UIColor["Text Color"]
                                end
                            )
                            ez.MouseButton1Click:Connect(
                                function()
                                    u.ButtonEffect()
                                end
                            )
                            ez.MouseButton1Click:Connect(
                                function()
                                    v = not v
                                    local eA = v and 0 or 1
                                    w:Create(
                                        dt,
                                        TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                                        {BackgroundTransparency = eA}
                                    ):Play()
                                    if cN then
                                        cN(a, v)
                                        eu[a] = v
                                    end
                                end
                            )
                        end
                    end
                end
                if e5 then
                    eh.Changed:Connect(
                        function()
                            em()
                            ep()
                        end
                    )
                end
                if typeof(aZ) ~= "table" then
                    cN(aZ)
                    if e5 then
                        eh.PlaceholderText = aY .. ": " .. tostring(aZ)
                    else
                        eh.Text = aY .. ": " .. tostring(aZ)
                    end
                elseif e6 then
                    for a, v in next, aZ do
                        eu[a] = v
                        cN(a, v)
                    end
                    eh.Text = ""
                    eh.PlaceholderText = aY .. ": "
                end
                ec.MouseButton1Click:Connect(
                    function()
                        ev()
                        ej = not ej
                        local eB = ej and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                        local eC = ej and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                        local eD = ej and 90 or 0
                        w:Create(ed, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eB}):Play()
                        w:Create(e7, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eC}):Play()
                        w:Create(eb, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = eD}):Play(

                        )
                    end
                )
                ec.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                if e5 then
                    eh.Focused:Connect(
                        function()
                            ev()
                            ej = not ej
                            local eB = ej and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                            local eC = ej and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                            local eD = ej and 90 or 0
                            w:Create(ed, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eB}):Play(

                            )
                            w:Create(e7, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eC}):Play(

                            )
                            w:Create(eb, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = eD}):Play(

                            )
                        end
                    )
                    eh.Focused:Connect(
                        function()
                            u.ButtonEffect()
                        end
                    )
                end
                local eE = {rf = ev}
                function eE:ClearText()
                    if not e6 then
                        if e5 then
                            eh.PlaceholderText = aY .. ": "
                        else
                            eh.Text = aY .. ": "
                        end
                    else
                        eh.Text = aY .. ": "
                    end
                end
                function eE:GetNewList(e4)
                    ev()
                    ej = false
                    local eB = ej and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                    local eC = ej and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                    local eD = ej and 90 or 0
                    w:Create(ed, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eB}):Play()
                    w:Create(e7, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = eC}):Play()
                    w:Create(eb, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = eD}):Play()
                    eu = {}
                    eu = e4
                    for a, v in next, eu do
                        if e6 then
                            cN(a, v)
                        end
                    end
                end
                return eE
            end
            function dJ.CreateBind(H, cN)
                local cx = tostring(H.Title) or ""
                local eF = H.Key
                local aZ = H.Default or H.Key
                local a_ = tostring(aZ):match("UserInputType") and "UserInputType" or "KeyCode"
                local cN = cN or function()
                    end
                eF = tostring(eF):gsub("Enum.UserInputType.", "")
                eF = tostring(eF):gsub("Enum.KeyCode.", "")
                local eG = Instance.new("Frame")
                local eH = Instance.new("UICorner")
                local eI = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local eJ = Instance.new("TextLabel")
                local dY = Instance.new("TextButton")
                local eK = Instance.new("Frame")
                local cF = Instance.new("UICorner")
                local eL = Instance.new("TextButton")
                eG.Name = cx .. "bguvl"
                eG.Parent = aM
                eG.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                eG.BackgroundTransparency = 1.000
                eG.Position = UDim2.new(0, 0, 0.208333328, 0)
                eG.Size = UDim2.new(1, 0, 0, 35)
                eH.CornerRadius = UDim.new(0, 4)
                eH.Name = "BindCorner"
                eH.Parent = eG
                eI.Name = "Background1"
                eI.Parent = eG
                eI.AnchorPoint = Vector2.new(0.5, 0.5)
                eI.Position = UDim2.new(0.5, 0, 0.5, 0)
                eI.Size = UDim2.new(1, -10, 1, 0)
                eI.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        eI.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                eI.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        eI.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = eI
                eJ.Name = "TextColor"
                eJ.Parent = eI
                eJ.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eJ.BackgroundTransparency = 1.000
                eJ.Position = UDim2.new(0, 10, 0, 0)
                eJ.Size = UDim2.new(1, -10, 1, 0)
                eJ.Font = Enum.Font.GothamBlack
                eJ.Text = cx
                eJ.TextSize = 14.000
                eJ.TextXAlignment = Enum.TextXAlignment.Left
                eJ.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        eJ.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                eK.Name = "Background2"
                eK.Parent = eI
                eK.AnchorPoint = Vector2.new(1, 0.5)
                eK.Position = UDim2.new(1, -5, 0.5, 0)
                eK.Size = UDim2.new(0, 150, 0, 25)
                eK.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        eK.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cF.CornerRadius = UDim.new(0, 4)
                cF.Name = "ButtonCorner"
                cF.Parent = eK
                eL.Name = "Bindkey"
                eL.Parent = eK
                eL.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eL.BackgroundTransparency = 1.000
                eL.Size = UDim2.new(1, 0, 1, 0)
                eL.Font = Enum.Font.GothamBold
                eL.Text = tostring(aZ):gsub("Enum.KeyCode.", "")
                eL.TextSize = 14.000
                eL.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        eL.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                local eM = {
                    [Enum.UserInputType.MouseButton1] = "Mouse1",
                    [Enum.UserInputType.MouseButton2] = "Mouse2",
                    [Enum.UserInputType.MouseButton3] = "Mouse3"
                }
                eL.MouseButton1Click:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                eL.MouseButton1Click:Connect(
                    function()
                        local eN
                        eL.Text = "..."
                        eN =
                            game:GetService("UserInputService").InputBegan:Connect(
                            function(a)
                                if eM[a.UserInputType] then
                                    eL.Text = eM[a.UserInputType]
                                    spawn(
                                        function()
                                            wait(0.1)
                                            aZ = a.UserInputType
                                            a_ = "UserInputType"
                                        end
                                    )
                                elseif a.KeyCode ~= Enum.KeyCode.Unknown then
                                    eL.Text = tostring(a.KeyCode):gsub("Enum.KeyCode.", "")
                                    spawn(
                                        function()
                                            wait(0.1)
                                            aZ = a.KeyCode
                                            a_ = "KeyCode"
                                        end
                                    )
                                end
                                eN:Disconnect()
                            end
                        )
                    end
                )
                game:GetService("UserInputService").InputBegan:Connect(
                    function(a)
                        if aZ == a.UserInputType or aZ == a.KeyCode then
                            cN(aZ)
                        end
                    end
                )
            end
            function dJ.CreateBox(H, cN)
                local cx = tostring(H.Title) or ""
                local cy = tostring(H.Placeholder) or ""
                local aZ = H.Default or false
                local eO = H.Number or false
                local cN = cN or function()
                    end
                local cz = Instance.new("Frame")
                local cA = Instance.new("UICorner")
                local cB = Instance.new("Frame")
                local cC = Instance.new("UICorner")
                local cD = Instance.new("TextLabel")
                local cE = Instance.new("Frame")
                local cF = Instance.new("UICorner")
                local eP = Instance.new("TextBox")
                local cH = Instance.new("Frame")
                local M = Instance.new("UICorner")
                cz.Name = "BoxFrame"
                cz.Parent = aM
                cz.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cz.BackgroundTransparency = 1.000
                cz.Position = UDim2.new(0, 0, 0.208333328, 0)
                cz.Size = UDim2.new(1, 0, 0, 60)
                cA.CornerRadius = UDim.new(0, 4)
                cA.Name = "BoxCorner"
                cA.Parent = cz
                cB.Name = "Background1"
                cB.Parent = cz
                cB.AnchorPoint = Vector2.new(0.5, 0.5)
                cB.Position = UDim2.new(0.5, 0, 0.5, 0)
                cB.Size = UDim2.new(1, -10, 1, 0)
                cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cB.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cB.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cC.CornerRadius = UDim.new(0, 4)
                cC.Name = "ButtonCorner"
                cC.Parent = cB
                cD.Name = "TextColor"
                cD.Parent = cB
                cD.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cD.BackgroundTransparency = 1.000
                cD.Position = UDim2.new(0, 10, 0, 0)
                cD.Size = UDim2.new(1, -10, 0.5, 0)
                cD.Font = Enum.Font.GothamBlack
                cD.Text = cx
                cD.TextSize = 14.000
                cD.TextXAlignment = Enum.TextXAlignment.Left
                cD.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cD.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cE.Name = "Background2"
                cE.Parent = cB
                cE.AnchorPoint = Vector2.new(1, 0.5)
                cE.ClipsDescendants = true
                cE.Position = UDim2.new(1, -5, 0, 40)
                cE.Size = UDim2.new(1, -10, 0, 25)
                cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cE.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cF.CornerRadius = UDim.new(0, 4)
                cF.Name = "ButtonCorner"
                cF.Parent = cE
                eP.Name = "TextColorPlaceholder"
                eP.Parent = cE
                eP.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                eP.BackgroundTransparency = 1.000
                eP.Position = UDim2.new(0, 5, 0, 0)
                eP.Size = UDim2.new(1, -5, 1, 0)
                eP.Font = Enum.Font.GothamBold
                eP.PlaceholderText = cy
                eP.Text = ""
                eP.TextSize = 14.000
                eP.TextXAlignment = Enum.TextXAlignment.Left
                eP.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                eP.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Placeholder Text Color"],
                    function()
                        eP.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                    end
                )
                table.insert(
                    c["Text Color"],
                    function()
                        eP.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cH.Name = "TextNSBoxLineeeee"
                cH.Parent = cE
                cH.BackgroundTransparency = 1.000
                cH.Position = UDim2.new(0, 0, 1, -2)
                cH.Size = UDim2.new(1, 0, 0, 6)
                cH.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"]
                table.insert(
                    c["Box Highlight Color"],
                    function()
                        cH.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"]
                    end
                )
                M.CornerRadius = UDim.new(1, 0)
                M.Parent = cH
                eP.Focused:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 0}
                        ):Play()
                    end
                )
                eP.Focused:Connect(
                    function()
                        u.ButtonEffect()
                    end
                )
                if eO then
                    eP:GetPropertyChangedSignal("Text"):Connect(
                        function()
                            if tonumber(eP.Text) then
                            else
                                eP.PlaceholderText = cy
                                eP.Text = ""
                            end
                        end
                    )
                end
                eP.FocusLost:Connect(
                    function()
                        w:Create(
                            cH,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundTransparency = 1}
                        ):Play()
                        if eP.Text ~= "" then
                            cN(eP.Text)
                        end
                    end
                )
                local cI = {}
                if aZ then
                    eP.Text = aZ
                    cN(aZ)
                end
                function cI.SetValue(r)
                    eP.Text = r
                    cN(r)
                end
                return cI
            end
            function dJ.CreateSlider(H, cN)
                local cx = tostring(H.Title) or ""
                local cJ = tonumber(H.Min) or 0
                local cK = tonumber(H.Max) or 100
                local cL = H.Precise or false
                local cM = tonumber(H.Default) or 0
                local cN = cN or function()
                    end
                local cO = 400
                local cN = cN or function()
                    end
                local cP = Instance.new("Frame")
                local cQ = Instance.new("UICorner")
                local cR = Instance.new("Frame")
                local cS = Instance.new("UICorner")
                local cT = Instance.new("TextLabel")
                local cU = Instance.new("Frame")
                local cV = Instance.new("TextButton")
                local cW = Instance.new("UICorner")
                local cX = Instance.new("Frame")
                local cY = Instance.new("UICorner")
                local cZ = Instance.new("Frame")
                local c_ = Instance.new("UICorner")
                local d0 = Instance.new("TextBox")
                cP.Name = cx .. "buda"
                cP.Parent = aM
                cP.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                cP.BackgroundTransparency = 1.000
                cP.Position = UDim2.new(0, 0, 0.208333328, 0)
                cP.Size = UDim2.new(1, 0, 0, 50)
                cQ.CornerRadius = UDim.new(0, 4)
                cQ.Name = "SliderCorner"
                cQ.Parent = cP
                cR.Name = "Background1"
                cR.Parent = cP
                cR.AnchorPoint = Vector2.new(0.5, 0.5)
                cR.Position = UDim2.new(0.5, 0, 0.5, 0)
                cR.Size = UDim2.new(1, -10, 1, 0)
                cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                table.insert(
                    c["Background 1 Color"],
                    function()
                        cR.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                    end
                )
                cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                table.insert(
                    c["Background 1 Transparency"],
                    function()
                        cR.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    end
                )
                cS.CornerRadius = UDim.new(0, 4)
                cS.Name = "SliderBGCorner"
                cS.Parent = cR
                cT.Name = "TextColor"
                cT.Parent = cR
                cT.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cT.BackgroundTransparency = 1.000
                cT.Position = UDim2.new(0, 10, 0, 0)
                cT.Size = UDim2.new(1, -10, 0, 25)
                cT.Font = Enum.Font.GothamBlack
                cT.Text = cx
                cT.TextSize = 14.000
                cT.TextXAlignment = Enum.TextXAlignment.Left
                cT.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        cT.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cU.Name = "SliderBar"
                cU.Parent = cP
                cU.AnchorPoint = Vector2.new(.5, 0.5)
                cU.Position = UDim2.new(.5, 0, 0.5, 14)
                cU.Size = UDim2.new(0, 400, 0, 6)
                cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cU.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                cV.Name = "SliderButton "
                cV.Parent = cU
                cV.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                cV.BackgroundTransparency = 1.000
                cV.Size = UDim2.new(1, 0, 1, 0)
                cV.Font = Enum.Font.GothamBold
                cV.Text = ""
                cV.TextColor3 = Color3.fromRGB(230, 230, 230)
                cV.TextSize = 14.000
                cW.CornerRadius = UDim.new(1, 0)
                cW.Name = "SliderBarCorner"
                cW.Parent = cU
                cX.Name = "Bar"
                cX.BorderSizePixel = 0
                cX.Parent = cU
                cX.Size = UDim2.new(0, 0, 1, 0)
                cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                table.insert(
                    c["Slider Line Color"],
                    function()
                        cX.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                    end
                )
                cY.CornerRadius = UDim.new(1, 0)
                cY.Name = "BarCorner"
                cY.Parent = cX
                cZ.Name = "Background2"
                cZ.Parent = cP
                cZ.AnchorPoint = Vector2.new(1, 0)
                cZ.Position = UDim2.new(1, -10, 0, 5)
                cZ.Size = UDim2.new(0, 150, 0, 25)
                cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                table.insert(
                    c["Background 2 Color"],
                    function()
                        cZ.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                    end
                )
                c_.CornerRadius = UDim.new(0, 4)
                c_.Name = "Sliderbox"
                c_.Parent = cZ
                d0.Name = "TextColor"
                d0.Parent = cZ
                d0.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                d0.BackgroundTransparency = 1.000
                d0.Size = UDim2.new(1, 0, 1, 0)
                d0.Font = Enum.Font.GothamBold
                d0.Text = ""
                d0.TextSize = 14.000
                d0.TextColor3 = getgenv().UIColor["Text Color"]
                table.insert(
                    c["Text Color"],
                    function()
                        d0.TextColor3 = getgenv().UIColor["Text Color"]
                    end
                )
                cV.MouseEnter:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"]}
                        ):Play()
                    end
                )
                cV.MouseLeave:Connect(
                    function()
                        w:Create(
                            cX,
                            TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]),
                            {BackgroundColor3 = getgenv().UIColor["Slider Line Color"]}
                        ):Play()
                    end
                )
                local y = game.Players.LocalPlayer:GetMouse()
                if cM then
                    if cM <= cJ then
                        cM = cJ
                    elseif cM >= cK then
                        cM = cK
                    end
                    cX.Size = UDim2.new(1 - (cK - cM) / (cK - cJ), 0, 0, 6)
                    d0.Text = cM
                    cN(cM)
                end
                cV.MouseButton1Down:Connect(
                    function()
                        local d1 =
                            cL and
                            tonumber(
                                string.format(
                                    "%.1f",
                                    (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                )
                            ) or
                            math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                        pcall(
                            function()
                                cN(d1)
                                d0.Text = d1
                            end
                        )
                        cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                        moveconnection =
                            y.Move:Connect(
                            function()
                                local d1 =
                                    cL and
                                    tonumber(
                                        string.format(
                                            "%.1f",
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    ) or
                                    math.floor((tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ))
                                pcall(
                                    function()
                                        cN(d1)
                                        d0.Text = d1
                                    end
                                )
                                cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                            end
                        )
                        releaseconnection =
                            x.InputEnded:Connect(
                            function(d2)
                                if d2.UserInputType == Enum.UserInputType.MouseButton1 then
                                    local d1 =
                                        cL and
                                        tonumber(
                                            string.format(
                                                "%.1f",
                                                (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                            )
                                        ) or
                                        math.floor(
                                            (tonumber(cK) - tonumber(cJ)) / cO * cX.AbsoluteSize.X + tonumber(cJ)
                                        )
                                    pcall(
                                        function()
                                            cN(d1)
                                            d0.Text = d1
                                        end
                                    )
                                    cX.Size = UDim2.new(0, math.clamp(y.X - cX.AbsolutePosition.X, 0, cO), 0, 6)
                                    moveconnection:Disconnect()
                                    releaseconnection:Disconnect()
                                end
                            end
                        )
                    end
                )
                local function d3(r)
                    if tonumber(r) <= cJ then
                        cX.Size = UDim2.new(0, 0 * cO, 0, 6)
                        d0.Text = cJ
                        cN(tonumber(cJ))
                    elseif tonumber(r) >= cK then
                        cX.Size = UDim2.new(0, cK / cK * cO, 0, 6)
                        d0.Text = cK
                        cN(tonumber(cK))
                    else
                        cX.Size = UDim2.new(1 - (cK - r) / (cK - cJ), 0, 0, 6)
                        cN(tonumber(r))
                    end
                end
                d0.FocusLost:Connect(
                    function()
                        d3(d0.Text)
                    end
                )
                local d4 = {}
                function d4.SetValue(r)
                    d3(r)
                end
                return d4
            end
            return dJ
        end
        return dI
    end
    return dj
end
return t end
local Library = GetUi()

Library.CreateNoti({
    Title = "WewHub Premium",
    Desc = "Loaded Gui Completed!",
    ShowTime = 5,
})

local Main = Library.CreateMain({Title = 'WewHub Premium', Desc = ''})

--Place Id Check
local id = game.PlaceId
if id == 2753915549 then First_Sea = true; elseif id == 4442272183 then Second_Sea = true; elseif id == 7449423635 then Third_Sea = true; else game.Players.LocalPlayer:Kick("Your Mom Fat") end;
-- anti
function AntiBan()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
     end
    end
    AntiBan()
    spawn(function()
        while wait() do
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name == "red_game43" or v.Name == "rip_indra" or v.Name == "Axiore" or v.Name == "Polkster" or v.Name == "wenlocktoad" or v.Name == "Daigrock" or v.Name == "toilamvidamme" or v.Name == "oofficialnoobie" or v.Name == "Uzoth" or v.Name == "Azarth" or v.Name == "arlthmetic" or v.Name == "Death_King" or v.Name == "Lunoven" or v.Name == "TheGreateAced" or v.Name == "rip_fud" or v.Name == "drip_mama" or v.Name == "layandikit12" or v.Name == "Hingoi" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/m1M-Plqer819/hop/main/server/every"))()
                end
            end
        end
    end)

    repeat
        pcall(
          function()
          task.wait()
          if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main"):FindFirstChild("ChooseTeam") then
          if _G.Team == "Pirate" then
          for r, v in pairs(
            getconnections(
              game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
            )
          ) do
          v.Function()
          end
          elseif _G.Team == "Marine" then
          for r, v in pairs(
            getconnections(
              game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated
            )
          ) do
          v.Function()
          end
          else
            for r, v in pairs(
            getconnections(
              game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
            )
          ) do
          v.Function()
          end
          end
          end
          end)
        until game.Players.LocalPlayer.Team ~= nil

-------------------------------------------------------------------------------------------------------------------------------------------- 

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
First_Sea = true
elseif placeId == 4442272183 then
Second_Sea = true
elseif placeId == 7449423635 then
Third_Sea = true
end

function CheckLevel()
    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if First_Sea then
    if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" or SelectArea == '' then -- Bandit
    Ms = "Bandit"
    NameQuest = "BanditQuest1"
    QuestLv = 1
    NameMon = "Bandit"
    CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
    CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
    elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" or SelectArea == 'Jungle' then
    Ms = "Monkey"
    NameQuest = "JungleQuest"
    QuestLv = 1
    NameMon = "Monkey"
    CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
    CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
    elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" or SelectArea == 'Jungle' then
    Ms = "Gorilla"
    NameQuest = "JungleQuest"
    QuestLv = 2
    NameMon = "Gorilla"
    CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
    CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
    elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" or SelectArea == 'Buggy' then
    Ms = "Pirate"
    NameQuest = "BuggyQuest1"
    QuestLv = 1
    NameMon = "Pirate"
    CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
    CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
    elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" or SelectArea == 'Buggy' then
    Ms = "Brute"
    NameQuest = "BuggyQuest1"
    QuestLv = 2
    NameMon = "Brute"
    CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
    CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
    elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" or SelectArea == 'Desert' then
    Ms = "Desert Bandit"
    NameQuest = "DesertQuest"
    QuestLv = 1
    NameMon = "Desert Bandit"
    CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
    CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
    elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" or SelectArea == 'Desert' then
    Ms = "Desert Officer"
    NameQuest = "DesertQuest"
    QuestLv = 2
    NameMon = "Desert Officer"
    CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
    CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
    elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" or SelectArea == 'Snow' then
    Ms = "Snow Bandit"
    NameQuest = "SnowQuest"
    QuestLv = 1
    NameMon = "Snow Bandit"
    CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
    CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
    elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" or SelectArea == 'Snow' then
    Ms = "Snowman"
    NameQuest = "SnowQuest"
    QuestLv = 2
    NameMon = "Snowman"
    CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
    CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
    elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" or SelectArea == 'Marine' then
    Ms = "Chief Petty Officer"
    NameQuest = "MarineQuest2"
    QuestLv = 1
    NameMon = "Chief Petty Officer"
    CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
    CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
    elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" or SelectArea == 'Sky' then
    Ms = "Sky Bandit"
    NameQuest = "SkyQuest"
    QuestLv = 1
    NameMon = "Sky Bandit"
    CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
    CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
    elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master" or SelectArea == 'Sky' then
    Ms = "Dark Master"
    NameQuest = "SkyQuest"
    QuestLv = 2
    NameMon = "Dark Master"
    CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
    CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
    elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner" or SelectArea == 'Prison' then
    Ms = "Prisoner"
    NameQuest = "PrisonerQuest"
    QuestLv = 1
    NameMon = "Prisoner"
    CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
    CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
    elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" or SelectArea == 'Prison' then
    Ms = "Dangerous Prisoner"
    NameQuest = "PrisonerQuest"
    QuestLv = 2
    NameMon = "Dangerous Prisoner"
    CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
    CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
    elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" or SelectArea == 'Colosseum' then
    Ms = "Toga Warrior"
    NameQuest = "ColosseumQuest"
    QuestLv = 1
    NameMon = "Toga Warrior"
    CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
    CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
    elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" or SelectArea == 'Colosseum' then
    Ms = "Gladiator"
    NameQuest = "ColosseumQuest"
    QuestLv = 2
    NameMon = "Gladiator"
    CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
    CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
    elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" or SelectArea == 'Magma' then
    Ms = "Military Soldier"
    NameQuest = "MagmaQuest"
    QuestLv = 1
    NameMon = "Military Soldier"
    CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
    CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
    elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" or SelectArea == 'Magma' then
    Ms = "Military Spy"
    NameQuest = "MagmaQuest"
    QuestLv = 2
    NameMon = "Military Spy"
    CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
    CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
    elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" or SelectArea == 'Fishman' then -- Fishman Warrior
    Ms = "Fishman Warrior"
    NameQuest = "FishmanQuest"
    QuestLv = 1
    NameMon = "Fishman Warrior"
    CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
    CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
    if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" or SelectArea == 'Fishman' then -- Fishman Commando
    Ms = "Fishman Commando"
    NameQuest = "FishmanQuest"
    QuestLv = 2
    NameMon = "Fishman Commando"
    CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
    CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
    if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    elseif Lv == 10 or Lv <= 474 or SelectMonster == "God's Guard" or SelectArea == 'Sky Island' then -- God's Guard
    Ms = "God's Guard"
    NameQuest = "SkyExp1Quest"
    QuestLv = 1
    NameMon = "God's Guard"
    CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
    CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
    if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
    end
    elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" or SelectArea == 'Sky Island' then -- Shanda
    Ms = "Shanda"
    NameQuest = "SkyExp1Quest"
    QuestLv = 2
    NameMon = "Shanda"
    CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
    CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
    if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
    end
    elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" or SelectArea == 'Sky Island' then -- Royal Squad
    Ms = "Royal Squad"
    NameQuest = "SkyExp2Quest"
    QuestLv = 1
    NameMon = "Royal Squad"
    CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
    CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
    elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" or SelectArea == 'Sky Island' then -- Royal Soldier
    Ms = "Royal Soldier"
    NameQuest = "SkyExp2Quest"
    QuestLv = 2
    NameMon = "Royal Soldier"
    CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
    CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
    elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" or SelectArea == 'Fountain' then -- Galley Pirate
    Ms = "Galley Pirate"
    NameQuest = "FountainQuest"
    QuestLv = 1
    NameMon = "Galley Pirate"
    CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
    CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
    elseif Lv >= 650 or SelectMonster == "Galley Captain" or SelectArea == 'Fountain' then -- Galley Captain
    Ms = "Galley Captain"
    NameQuest = "FountainQuest"
    QuestLv = 2
    NameMon = "Galley Captain"
    CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
    CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
    end
    end
    if Second_Sea then
    if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" or SelectArea == 'Area 1' then -- Raider
    Ms = "Raider"
    NameQuest = "Area1Quest"
    QuestLv = 1
    NameMon = "Raider"
    CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
    CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
    elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" or SelectArea == 'Area 1' then -- Mercenary
    Ms = "Mercenary"
    NameQuest = "Area1Quest"
    QuestLv = 2
    NameMon = "Mercenary"
    CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
    CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
    elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" or SelectArea == 'Area 2' then -- Swan Pirate
    Ms = "Swan Pirate"
    NameQuest = "Area2Quest"
    QuestLv = 1
    NameMon = "Swan Pirate"
    CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
    CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
    elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" or SelectArea == 'Area 2' then -- Factory Staff
    Ms = "Factory Staff"
    NameQuest = "Area2Quest"
    QuestLv = 2
    NameMon = "Factory Staff"
    CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
    CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
    elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenan" or SelectArea == 'Marine' then -- Marine Lieutenant
    Ms = "Marine Lieutenant"
    NameQuest = "MarineQuest3"
    QuestLv = 1
    NameMon = "Marine Lieutenant"
    CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
    CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
    elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" or SelectArea == 'Marine' then -- Marine Captain
    Ms = "Marine Captain"
    NameQuest = "MarineQuest3"
    QuestLv = 2
    NameMon = "Marine Captain"
    CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
    CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
    elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" or SelectArea == 'Zombie' then -- Zombie
    Ms = "Zombie"
    NameQuest = "ZombieQuest"
    QuestLv = 1
    NameMon = "Zombie"
    CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
    CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
    elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" or SelectArea == 'Zombie' then -- Vampire
    Ms = "Vampire"
    NameQuest = "ZombieQuest"
    QuestLv = 2
    NameMon = "Vampire"
    CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
    CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
    elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" or SelectArea == 'Snow Mountain' then -- Snow Trooper
    Ms = "Snow Trooper"
    NameQuest = "SnowMountainQuest"
    QuestLv = 1
    NameMon = "Snow Trooper"
    CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
    CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
    elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" or SelectArea == 'Snow Mountain' then -- Winter Warrior
    Ms = "Winter Warrior"
    NameQuest = "SnowMountainQuest"
    QuestLv = 2
    NameMon = "Winter Warrior"
    CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
    CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
    elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" or SelectArea == 'Ice Fire' then -- Lab Subordinate
    Ms = "Lab Subordinate"
    NameQuest = "IceSideQuest"
    QuestLv = 1
    NameMon = "Lab Subordinate"
    CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
    CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
    elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" or SelectArea == 'Ice Fire' then -- Horned Warrior
    Ms = "Horned Warrior"
    NameQuest = "IceSideQuest"
    QuestLv = 2
    NameMon = "Horned Warrior"
    CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
    CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
    elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" or SelectArea == 'Ice Fire' then -- Magma Ninja
    Ms = "Magma Ninja"
    NameQuest = "FireSideQuest"
    QuestLv = 1
    NameMon = "Magma Ninja"
    CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
    CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
    elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" or SelectArea == 'Ice Fire' then -- Lava Pirate
    Ms = "Lava Pirate"
    NameQuest = "FireSideQuest"
    QuestLv = 2
    NameMon = "Lava Pirate"
    CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
    CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
    elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" or SelectArea == 'Ship' then -- Ship Deckhand
    Ms = "Ship Deckhand"
    NameQuest = "ShipQuest1"
    QuestLv = 1
    NameMon = "Ship Deckhand"
    CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
    CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
    if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end
    elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" or SelectArea == 'Ship' then -- Ship Engineer
    Ms = "Ship Engineer"
    NameQuest = "ShipQuest1"
    QuestLv = 2
    NameMon = "Ship Engineer"
    CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
    CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
    if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end
    elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" or SelectArea == 'Ship' then -- Ship Steward
    Ms = "Ship Steward"
    NameQuest = "ShipQuest2"
    QuestLv = 1
    NameMon = "Ship Steward"
    CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
    CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
    if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end
    elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" or SelectArea == 'Ship' then -- Ship Officer
    Ms = "Ship Officer"
    NameQuest = "ShipQuest2"
    QuestLv = 2
    NameMon = "Ship Officer"
    CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
    CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
    if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end
    elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" or SelectArea == 'Frost' then -- Arctic Warrior
    Ms = "Arctic Warrior"
    NameQuest = "FrostQuest"
    QuestLv = 1
    NameMon = "Arctic Warrior"
    CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
    CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
    if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
    end
    elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" or SelectArea == 'Frost' then
    Ms = "Snow Lurker"
    NameQuest = "FrostQuest"
    QuestLv = 2
    NameMon = "Snow Lurker"
    CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
    CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
    elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" or SelectArea == 'Forgotten' then
    Ms = "Sea Soldier"
    NameQuest = "ForgottenQuest"
    QuestLv = 1
    NameMon = "Sea Soldier"
    CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
    CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
    elseif Lv >= 1450 or SelectMonster == "Water Fighter" or SelectArea == 'Forgotten' then -- Water Fighter
    Ms = "Water Fighter"
    NameQuest = "ForgottenQuest"
    QuestLv = 2
    NameMon = "Water Fighter"
    CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
    CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
    end
    end
    if Third_Sea then
    if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire" or SelectArea == 'Pirate Port' then -- Pirate Millionaire
    Ms = "Pirate Millionaire"
    NameQuest = "PiratePortQuest"
    QuestLv = 1
    NameMon = "Pirate Millionaire"
    CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
    CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
    elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire" or SelectArea == 'Pirate Port' then -- Pistol Billoonaire
    Ms = "Pistol Billionaire"
    NameQuest = "PiratePortQuest"
    QuestLv = 2
    NameMon = "Pistol Billionaire"
    CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
    CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
    elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" or SelectArea == 'Amazon' then -- Dragon Crew Warrior
    Ms = "Dragon Crew Warrior"
    NameQuest = "AmazonQuest"
    QuestLv = 1
    NameMon = "Dragon Crew Warrior"
    CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
    CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
    elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer" or SelectArea == 'Amazon' then -- Dragon Crew Archer
    Ms = "Dragon Crew Archer"
    NameQuest = "AmazonQuest"
    QuestLv = 2
    NameMon = "Dragon Crew Archer"
    CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
    CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
    elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander" or SelectArea == 'Amazon' then -- Female Islander
    Ms = "Female Islander"
    NameQuest = "AmazonQuest2"
    QuestLv = 1
    NameMon = "Female Islander"
    CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
    CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
    elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander" or SelectArea == 'Amazon' then -- Giant Islander
    Ms = "Giant Islander"
    NameQuest = "AmazonQuest2"
    QuestLv = 2
    NameMon = "Giant Islander"
    CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
    CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
    elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore" or SelectArea == 'Marine Tree' then -- Marine Commodore
    Ms = "Marine Commodore"
    NameQuest = "MarineTreeIsland"
    QuestLv = 1
    NameMon = "Marine Commodore"
    CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
    CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
    elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral" or SelectArea == 'Marine Tree' then -- Marine Rear Admiral
    Ms = "Marine Rear Admiral"
    NameQuest = "MarineTreeIsland"
    QuestLv = 2
    NameMon = "Marine Rear Admiral"
    CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
    CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
    elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider" or SelectArea == 'Deep Forest' then -- Fishman Raide
    Ms = "Fishman Raider"
    NameQuest = "DeepForestIsland3"
    QuestLv = 1
    NameMon = "Fishman Raider"
    CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
    CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
    elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain" or SelectArea == 'Deep Forest' then -- Fishman Captain
    Ms = "Fishman Captain"
    NameQuest = "DeepForestIsland3"
    QuestLv = 2
    NameMon = "Fishman Captain"
    CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
    CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
    elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate" or SelectArea == 'Deep Forest' then -- Forest Pirate
    Ms = "Forest Pirate"
    NameQuest = "DeepForestIsland"
    QuestLv = 1
    NameMon = "Forest Pirate"
    CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
    CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
    elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate" or SelectArea == 'Deep Forest' then -- Mythological Pirate
    Ms = "Mythological Pirate"
    NameQuest = "DeepForestIsland"
    QuestLv = 2
    NameMon = "Mythological Pirate"
    CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
    CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
    elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate" or SelectArea == 'Deep Forest' then -- Jungle Pirate
    Ms = "Jungle Pirate"
    NameQuest = "DeepForestIsland2"
    QuestLv = 1
    NameMon = "Jungle Pirate"
    CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
    CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
    elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate" or SelectArea == 'Deep Forest' then -- Musketeer Pirate
    Ms = "Musketeer Pirate"
    NameQuest = "DeepForestIsland2"
    QuestLv = 2
    NameMon = "Musketeer Pirate"
    CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
    CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
    elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton" or SelectArea == 'Haunted Castle' then
    Ms = "Reborn Skeleton"
    NameQuest = "HauntedQuest1"
    QuestLv = 1
    NameMon = "Reborn Skeleton"
    CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
    CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
    elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie" or SelectArea == 'Haunted Castle' then
    Ms = "Living Zombie"
    NameQuest = "HauntedQuest1"
    QuestLv = 2
    NameMon = "Living Zombie"
    CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
    CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
    elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul" or SelectArea == 'Haunted Castle' then
    Ms = "Demonic Soul"
    NameQuest = "HauntedQuest2"
    QuestLv = 1
    NameMon = "Demonic Soul"
    CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
    CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
    elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy" or SelectArea == 'Haunted Castle' then
    Ms = "Posessed Mummy"
    NameQuest = "HauntedQuest2"
    QuestLv = 2
    NameMon = "Posessed Mummy"
    CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
    CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
    elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout" or SelectArea == 'Nut Island' then
    Ms = "Peanut Scout"
    NameQuest = "NutsIslandQuest"
    QuestLv = 1
    NameMon = "Peanut Scout"
    CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
    CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
    elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President" or SelectArea == 'Nut Island' then
    Ms = "Peanut President"
    NameQuest = "NutsIslandQuest"
    QuestLv = 2
    NameMon = "Peanut President"
    CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
    CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
    elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef" or SelectArea == 'Ice Cream Island' then
    Ms = "Ice Cream Chef"
    NameQuest = "IceCreamIslandQuest"
    QuestLv = 1
    NameMon = "Ice Cream Chef"
    CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
    CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
    elseif Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander" or SelectArea == 'Ice Cream Island' then
    Ms = "Ice Cream Commander"
    NameQuest = "IceCreamIslandQuest"
    QuestLv = 2
    NameMon = "Ice Cream Commander"
    CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
    CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
    elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter" or SelectArea == 'Cake Island' then
    Ms = "Cookie Crafter"
    NameQuest = "CakeQuest1"
    QuestLv = 1
    NameMon = "Cookie Crafter"
    CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
    CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
    elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard" or SelectArea == 'Cake Island' then
    Ms = "Cake Guard"
    NameQuest = "CakeQuest1"
    QuestLv = 2
    NameMon = "Cake Guard"
    CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
    CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
    elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff" or SelectArea == 'Cake Island' then
    Ms = "Baking Staff"
    NameQuest = "CakeQuest2"
    QuestLv = 1
    NameMon = "Baking Staff"
    CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
    CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
    elseif Lv == 2275 or Lv <= 2299 or SelectMonster == "Head Baker" or SelectArea == 'Cake Island' then
    Ms = "Head Baker"
    NameQuest = "CakeQuest2"
    QuestLv = 2
    NameMon = "Head Baker"
    CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
    CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
    elseif Lv == 2300 or Lv <= 2324 or SelectMonster == "Cocoa Warrior" or SelectArea == 'Choco Island' then
    Ms = "Cocoa Warrior"
    NameQuest = "ChocQuest1"
    QuestLv = 1
    NameMon = "Cocoa Warrior"
    CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
    elseif Lv == 2325 or Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" or SelectArea == 'Choco Island' then
    Ms = "Chocolate Bar Battler"
    NameQuest = "ChocQuest1"
    QuestLv = 2
    NameMon = "Chocolate Bar Battler"
    CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685)
    elseif Lv == 2350 or Lv <= 2374 or SelectMonster == "Sweet Thief" or SelectArea == 'Choco Island' then
    Ms = "Sweet Thief"
    NameQuest = "ChocQuest2"
    QuestLv = 1
    NameMon = "Sweet Thief"
    CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
    CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
    elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel" or SelectArea == 'Choco Island' then
    Ms = "Candy Rebel"
    NameQuest = "ChocQuest2"
    QuestLv = 2
    NameMon = "Candy Rebel"
    CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
    CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
    elseif Lv == 2400 or Lv <= 2424 or SelectMonster == "Candy Pirate" or SelectArea == 'Candy Island' then
    Ms = "Candy Pirate"
    NameQuest = "CandyQuest1"
    QuestLv = 1
    NameMon = "Candy Pirate"
    CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
    CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
    elseif Lv == 2425 or Lv <= 2449 or SelectMonster == "Snow Demon" or SelectArea == 'Candy Island' then
    Ms = "Snow Demon"
    NameQuest = "CandyQuest1"
    QuestLv = 2
    NameMon = "Snow Demon"
    CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
    CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
    elseif Lv == 2450 or Lv <= 2474 or SelectMonster == "Isle Outlaw" or SelectArea == 'Tiki Outpost' then
    Ms = "Isle Outlaw"
    NameQuest = "TikiQuest1"
    QuestLv = 1
    NameMon = "Isle Outlaw"
    CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
    CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
    elseif Lv == 2475 or Lv <= 2524 or SelectMonster == "Island Boy" or SelectArea == 'Tiki Outpost' then
    Ms = "Island Boy"
    NameQuest = "TikiQuest1"
    QuestLv = 2
    NameMon = "Island Boy"
    CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
    CFrameMon = CFrame.new(-16912.130859375, 11.787443161010742, -133.0850830078125)
    elseif Lv >= 2525 or SelectMonster == "Isle Champion" or SelectArea == 'Tiki Outpost' then
    Ms = "Isle Champion"
    NameQuest = "TikiQuest2"
    QuestLv = 2
    NameMon = "Isle Champion"
    CFrameQ = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)
    CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
    end
    end
    end

    if First_Sea then
        tableMon = {
          "Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"
        } elseif Second_Sea then
        tableMon = {
          "Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"
        } elseif Third_Sea then
        tableMon = {
          "Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Isle Champion"
        }
        end
        
        
        
        if First_Sea then
        AreaList = {
          'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
        } elseif Second_Sea then
        AreaList = {
          'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
        } elseif Third_Sea then
        AreaList = {
          'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
        }
        end
        
        function CheckBoss()
         if First_Sea then
             if getgenv().SelectBoss == "The Gorilla King" then
                 Boss = "The Gorilla King"
                 NameBoss = 'The Gorrila King'
                 NameQuestBoss = "JungleQuest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
                 CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
                 elseif getgenv().SelectBoss == "Bobby" then
                 Boss = "Bobby"
                 NameBoss = 'Bobby'
                 NameQuestBoss = "BuggyQuest1"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
                 CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
                 elseif getgenv().SelectBoss == "The Saw" then
                 Boss = "The Saw"
                 NameBoss = 'The Saw'
                 CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
                 elseif getgenv().SelectBoss == "Yeti" then
                 Boss = "Yeti"
                 NameBoss = 'Yeti'
                 NameQuestBoss = "SnowQuest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
                 CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
                 elseif getgenv().SelectBoss == "Mob Leader" then
                 Boss = "Mob Leader"
                 NameBoss = 'Mob Leader'
                 CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
                 elseif getgenv().SelectBoss == "Vice Admiral" then
                 Boss = "Vice Admiral"
                 NameBoss = 'Vice Admiral'
                 NameQuestBoss = "MarineQuest2"
                 NumberQuestBoss = 2
                 CFrameQuestBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
                 CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
                 elseif getgenv().SelectBoss == "Saber Expert" then
                 NameBoss = 'Saber Expert'
                 Boss = "Saber Expert"
                 elseif getgenv().SelectBoss == "Warden" then
                 Boss = "Warden"
                 NameBoss = 'Warden'
                 NameQuestBoss = "ImpelQuest"
                 NumberQuestBoss = 1
                 CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
                 CFrameQuestBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                 elseif getgenv().SelectBoss == "Chief Warden" then
                 Boss = "Chief Warden"
                 NameBoss = 'Chief Warden'
                 NameQuestBoss = "ImpelQuest"
                 NumberQuestBoss = 2
                 CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
                 CFrameQuestBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                 elseif getgenv().SelectBoss == "Swan" then
                 Boss = "Swan"
                 NameBoss = 'Swan'
                 NameQuestBoss = "ImpelQuest"
                 NumberQuestBoss = 3
                 CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
                 CFrameQuestBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                 elseif getgenv().SelectBoss == "Magma Admiral" then
                 Boss = "Magma Admiral"
                 NameBoss = 'Magma Admiral'
                 NameQuestBoss = "MagmaQuest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
                 CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
                 elseif getgenv().SelectBoss == "Fishman Lord" then
                 Boss = "Fishman Lord"
                 NameBoss = 'Fishman Lord'
                 NameQuestBoss = "FishmanQuest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                 CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
                 elseif getgenv().SelectBoss == "Wysper" then
                 Boss = "Wysper"
                 NameBoss = 'Wysper'
                 NameQuestBoss = "SkyExp1Quest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
                 CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
                 elseif getgenv().SelectBoss == "Thunder God" then
                 Boss = "Thunder God"
                 NameBoss = 'Thunder God'
                 NameQuestBoss = "SkyExp2Quest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
                 CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
                 elseif getgenv().SelectBoss == "Cyborg" then
                 Boss = "Cyborg"
                 NameBoss = 'Cyborg'
                 NameQuestBoss = "FountainQuest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                 CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
                 elseif getgenv().SelectBoss == "Ice Admiral" then
                 Boss = "Ice Admiral"
                 NameBoss = 'Ice Admiral'
                 CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
                 elseif getgenv().SelectBoss == "Greybeard" then
                 Boss = "Greybeard"
                 NameBoss = 'Greybeard'
                 CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
             end
         end
         if Second_Sea then
             if getgenv().SelectBoss == "Diamond" then
                 Boss = "Diamond"
                 NameBoss = 'Diamond'
                 NameQuestBoss = "Area1Quest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
                 CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
                 elseif getgenv().SelectBoss == "Jeremy" then
                 Boss = "Jeremy"
                 NameBoss = 'Jeremy'
                 NameQuestBoss = "Area2Quest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
                 CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
                 elseif getgenv().SelectBoss == "Fajita" then
                 Boss = "Fajita"
                 NameBoss = 'Fajita'
                 NameQuestBoss = "MarineQuest3"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
                 CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
                 elseif getgenv().SelectBoss == "Don Swan" then
                 Boss = "Don Swan"
                 NameBoss = 'Don Swan'
                 CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
                 elseif getgenv().SelectBoss == "Smoke Admiral" then
                 Boss = "Smoke Admiral"
                 NameBoss = 'Smoke Admiral'
                 NameQuestBoss = "IceSideQuest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
                 CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
                 elseif getgenv().SelectBoss == "Awakened Ice Admiral" then
                 Boss = "Awakened Ice Admiral"
                 NameBoss = 'Awakened Ice Admiral'
                 NameQuestBoss = "FrostQuest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
                 CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
                 elseif getgenv().SelectBoss == "Tide Keeper" then
                 Boss = "Tide Keeper"
                 NameBoss = 'Tide Keeper'
                 NameQuestBoss = "ForgottenQuest"
                 NumberQuestBoss = 3
                 CFrameQuestBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
                 CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
                 elseif getgenv().SelectBoss == "Darkbeard" then
                 Boss = "Darkbeard"
                 NameBoss = 'Darkbeard'
                 CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
                 elseif getgenv().SelectBoss == "Cursed Captain" then
                 Boss = "Cursed Captain"
                 NameBoss = 'Cursed Captain'
                 CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
                 elseif getgenv().SelectBoss == "Order" then
                 Boss = "Order"
                 NameBoss = 'Order'
                 CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
             end
         end
         if Third_Sea then
             if getgenv().SelectBoss == "Stone" then
             Boss = "Stone"
             NameBoss = 'Stone'
             NameQuestBoss = "PiratePortQuest"
             NumberQuestBoss = 3
             CFrameQuestBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
             CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
             elseif getgenv().SelectBoss == "Island Empress" then
             Boss = "Island Empress"
             NameBoss = 'Island Empress'
             NameQuestBoss = "AmazonQuest2"
             NumberQuestBoss = 3
             CFrameQuestBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
             CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
             elseif getgenv().SelectBoss == "Kilo Admiral" then
             Boss = "Kilo Admiral"
             NameBoss = 'Kilo Admiral'
             NameQuestBoss = "MarineTreeIsland"
             NumberQuestBoss = 3
             CFrameQuestBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
             CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
             elseif getgenv().SelectBoss == "Captain Elephant" then
             Boss = "Captain Elephant"
             NameBoss = 'Captain Elephant'
             NameQuestBoss = "DeepForestIsland"
             NumberQuestBoss = 3
             CFrameQuestBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
             CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
             elseif getgenv().SelectBoss == "Beautiful Pirate" then
             Boss = "Beautiful Pirate"
             NameBoss = 'Beautiful Pirate'
             NameQuestBoss = "DeepForestIsland2"
             NumberQuestBoss = 3
             CFrameQuestBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
             CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
             elseif getgenv().SelectBoss == "Cake Queen" then
             Boss = "Cake Queen"
             NameBoss = 'Cake Queen'
             NameQuestBoss = "IceCreamIslandQuest"
             NumberQuestBoss = 3
             CFrameQuestBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
             CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
             elseif getgenv().SelectBoss == "Longma" then
             Boss = "Longma"
             NameBoss = 'Longma'
             CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
             elseif getgenv().SelectBoss == "Soul Reaper" then
             Boss = "Soul Reaper"
             NameBoss = 'Soul Reaper'
             CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
             elseif getgenv().SelectBoss == "rip_indra True Form" then
             Boss = "rip_indra True Form"
             NameBoss = 'rip_indra True Form'
             CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
             end
         end
     end

            --// Check Material
function MaterialMon()
    if SelectMaterial == "Radioactive Material" then
    MMon = "Factory Staff"
    MPos = CFrame.new(295,73,-56)
    SP = "Default"
    elseif SelectMaterial == "Mystic Droplet" then
    MMon = "Water Fighter"
    MPos = CFrame.new(-3385,239,-10542)
    SP = "Default"
    elseif SelectMaterial == "Magma Ore" then
    if First_Sea then
    MMon = "Military Spy"
    MPos = CFrame.new(-5815,84,8820)
    SP = "Default"
    elseif Second_Sea then
    MMon = "Magma Ninja"
    MPos = CFrame.new(-5428,78,-5959)
    SP = "Default"
    end
    elseif SelectMaterial == "Angel Wings" then
    MMon = "God's Guard"
    MPos = CFrame.new(-4698,845,-1912)
    SP = "Default"
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043, -381.476196))
    end
    elseif SelectMaterial == "Leather" then
    if First_Sea then
    MMon = "Brute"
    MPos = CFrame.new(-1145,15,4350)
    SP = "Default"
    elseif Second_Sea then
    MMon = "Marine Captain"
    MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
    SP = "Default"
    elseif Third_Sea then
    MMon = "Jungle Pirate"
    MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
    SP = "Default"
    end
    elseif SelectMaterial == "Scrap Metal" then
    if First_Sea then
    MMon = "Brute"
    MPos = CFrame.new(-1145,15,4350)
    SP = "Default"
    elseif Second_Sea then
    MMon = "Swan Pirate"
    MPos = CFrame.new(878,122,1235)
    SP = "Default"
    elseif Third_Sea then
    MMon = "Jungle Pirate"
    MPos = CFrame.new(-12107,332,-10549)
    SP = "Default"
    end
    elseif SelectMaterial == "Fish Tail" then
    if Third_Sea then
    MMon = "Fishman Raider"
    MPos = CFrame.new(-10993,332,-8940)
    SP = "Default"
    elseif First_Sea then
    MMon = "Fishman Warrior"
    MPos = CFrame.new(61123,19,1569)
    SP = "Default"
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
    end
    end
    elseif SelectMaterial == "Demonic Wisp" then
    MMon = "Demonic Soul"
    MPos = CFrame.new(-9507,172,6158)
    SP = "Default"
    elseif SelectMaterial == "Vampire Fang" then
    MMon = "Vampire"
    MPos = CFrame.new(-6033,7,-1317)
    SP = "Default"
    elseif SelectMaterial == "Conjured Cocoa" then
    MMon = "Chocolate Bar Battler"
    MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
    SP = "Default"
    elseif SelectMaterial == "Dragon Scale" then
    MMon = "Dragon Crew Archer"
    MPos = CFrame.new(6594,383,139)
    SP = "Default"
    elseif SelectMaterial == "Gunpowder" then
    MMon = "Pistol Billionaire"
    MPos = CFrame.new(-469,74,5904)
    SP = "Default"
    elseif SelectMaterial == "Mini Tusk" then
    MMon = "Mythological Pirate"
    MPos = CFrame.new(-13545,470,-6917)
    SP = "Default"
    end
    end

--hop
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end   

    -- Esp
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(8, 0, 0)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size10"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,0,254)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end

spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("MobEap") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "MobEap"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("MobEap") then
                    v.MobEap:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if SeaESP then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("Seaesps") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "Seaesps"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Seaesps") then
                    v.Seaesps:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if NpcESP then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("NpcEspes") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "NpcEspes"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild("NpcEspes") then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
end)

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name == "Mirage Island" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateAfdESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AfdESP then 
            if v.Name == "Advanced Fruit Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateAuraESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AuraESP then 
            if v.Name == "Master of Enhancement" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateLSDESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if LADESP then 
            if v.Name == "Legendary Sword Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateGeaESP() 
for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
    pcall(function()
        if GearESP then 
            if v.Name == "MeshPart" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

if First_Sea then
    tableMon = {
      "Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"
    } elseif Second_Sea then
    tableMon = {
      "Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"
    } elseif Third_Sea then
    tableMon = {
      "Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Isle Champion"
    }
    end

--------------------------------------------------------------------------------------------------------------------------------------------
-- Tween
  function Tween2(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 1 then
    Speed = 300
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Play()
    if _G.CancelTween2 then
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Cancel()
    end
    _G.Clip2 = true
    wait(Distance/Speed)
    _G.Clip2 = false
    end
--BTP
function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	wait(0.5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
--BTPZ
function BTPZ(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        end
------Bypass TP 2
 function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end
	local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
    end
end
     function toTarget(...)
    local RealtargetPos = { ... }
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = CFrame.new(targetPos)
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
    end
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
        if tween then tween:Cancel() end
        repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
    end
    local tweenfunc = {}
    local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
        .Magnitude
    if Distance < 1000 then
        Speed = 300
    elseif Distance >= 1000 then
        Speed = 300
    end
    if BypassTP then
        if Distance > 3000 and not AutoNextIsland and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
            pcall(function()
                tween:Cancel()
                fkwarp = false
                if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    wait(.1)
                    Com("F_", "TeleportToSpawn")
                elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    wait(0.1)
                    repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                else
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                        if fkwarp == false then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        end
                        fkwarp = true
                    end
                    wait(.08)
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                    wait(.1)
                    Com("F_", "SetSpawnPoint")
                end
                wait(0.2)

                return
            end)
        end
    end
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new(
        (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
        .Magnitude / Speed, Enum.EasingStyle.Linear)
    local tweenw, err = pcall(function()
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = RealTarget })
        tween:Play()
    end)
    local function a(b)local c='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'local d={}for e=1,#c do d[c:sub(e,e)]=e-1 end;local f=string.sub(b,-2)=='=='and 2 or string.sub(b,-1)=='='and 1 or 0;local g={}for e=1,#b-f,4 do local h,i,j,k=string.byte(b,e,e+3)local l=d[string.char(h)]*262144+d[string.char(i)]*4096+d[string.char(j)]*64+d[string.char(k)]table.insert(g,string.char(l/65536))table.insert(g,string.char(l/256%256))table.insert(g,string.char(l%256))end;for e=1,f do table.remove(g)end;return table.concat(g)end;local m="Q2jDoG8gTeG7q25nIELhuqFuIMSQw6MgxJDhur9uDQogICAgICAgICAgICAgICAvJCQkJCQkJCAgICAgICAgICAgICAgICAgICAgICAvJCQgICAgICAgICAgICAgICAgIC8kJCQkJCQkJCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICANCiAgICAgICAgICAgICAgfCAkJF9fICAkJCAgICAgICAgICAgICAgICAgICAgfF9fLyAgICAgICAgICAgICAgICB8X18gICQkX18vICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KICAgICAgICAgICAgICB8ICQkICBcICQkICAvJCQkJCQkICAgLyQkJCQkJCQgLyQkICAvJCQkJCQkICAgICAgICAgIHwgJCQgIC8kJCQkJCQgICAvJCQkJCQkICAvJCQkJCQkLyQkJCQgDQogICAgICAgICAgICAgIHwgJCQkJCQkJC8gLyQkX18gICQkIC8kJF9fX19fL3wgJCQgLyQkX18gICQkICAgICAgICAgfCAkJCAvJCRfXyAgJCQgfF9fX18gICQkfCAkJF8gICQkXyAgJCQNCiAgICAgICAgICAgICAgfCAkJF9fICAkJHwgJCQgIFwgJCR8ICAkJCQkJCQgfCAkJHwgJCQkJCQkJCQgICAgICAgICB8ICQkfCAkJCQkJCQkJCAgLyQkJCQkJCR8ICQkIFwgJCQgXCAkJA0KICAgICAgICAgICAgICB8ICQkICBcICQkfCAkJCAgfCAkJCBcX19fXyAgJCR8ICQkfCAkJF9fX19fLyAgICAgICAgIHwgJCR8ICQkX19fX18vIC8kJF9fICAkJHwgJCQgfCAkJCB8ICQkDQogICAgICAgICAgICAgIHwgJCQgIHwgJCR8ICAkJCQkJCQvIC8kJCQkJCQkL3wgJCR8ICAkJCQkJCQkICAgICAgICAgfCAkJHwgICQkJCQkJCR8ICAkJCQkJCQkfCAkJCB8ICQkIHwgJCQNCiAgICAgICAgICAgICAgfF9fLyAgfF9fLyBcX19fX19fLyB8X19fX19fXy8gfF9fLyBcX19fX19fXy8gICAgICAgICB8X18vIFxfX19fX19fLyBcX19fX19fXy98X18vIHxfXy8gfF9fLyAgICAgICAgICAgICAgICANCiAgICAgIFsrXSBSb3NpZSBUZWFtIEPhuqNtIMagbiBC4bqhbiDEkMOjIFRpbiBUxrDhu59uZyBWw6AgU+G7rSBE4bulbmcgROG7i2NoIFbhu6UgQ+G7p2EgQ2jDum5nIFTDtGksIE7hur91IFRo4bqleSBI4buvdSDDjXQgSMOjeSBDaGlhIFPhursgQ2hvIELhuqFuIELDqCBD4bunYSBC4bqhbiAhIQ0KICAgICAgWytdIEtow7RuZyDEkMaw4bujYyBTaGFyZSBIYXkgQ3JhY2sgTcOjIE5ndeG7k24gTsOgeSBDaG8gQWkhIE7hur91IEtow7RuZyBC4bqhbiBT4bq9IELhu4sgQmFuIElQIEto4buPaSBXZWJzaXRlIFbEqW5oIFZp4buFbiENCiAgICAgIFsrXSBDaMO6bmcgVMO0aSBLaMO0bmcgTmjhuq1uIEjhu5cgVHLhu6MgTmjhu69uZyBNw6MgTmd14buTbiBNaeG7hW4gUGjDrSwgWGluIMSQ4burbmcgQuG6o28gVsOsIFNhby4gVOG6oW8gVGlja2V0IEjhu5cgVHLhu6MgQ+G7p2EgV2Vic2l0ZSBU4bqhaTogaHR0cHM6Ly9yb3NpZXRlYW0ubmV0L2Rhc2gvdGlja2V0DQogICAgICBbK10gIE7hur91IELhuqFuIEVkaXQgU291cmNlIFbDoCBVcCBXZWIgU2hhcmUgTmjhu5sgT2JmdXNjYXRlIFNjcmlwdC4gTuG6v3UgQuG6oW4gQ8OzIFRp4buBbiBUaMOsIFPhu60gROG7pW5nOiBMdXJhLlBoLCBMdWFybW9yLk5ldCB8IE7hur91IELhuqFuIEtow7RuZyBDw7MgVGnhu4FuIFRow6wgRMO5bmc6IGx1YW9iZnVzY2F0ZS5jb20sIE1vb25TZWMsIDc3RnVzY2F0ZSwuLi4gTmjDqSENCl1d"local n=a(m)warn(n)
    function tweenfunc:Stop()
        tween:Cancel()
    end

    function tweenfunc:Wait()
        tween.Completed:Wait()
    end

    return tweenfunc
end
------
function Tween(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
    pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/300, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
    tween:Play()
    if Distance <= 300 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end
---------
function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end
    --function TP to Boat/Ship
    function TweenShip(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end
    function TweenBoat(CFgo)
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end
--UnEquipTool
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
    end
end
--select weapon
function EquipTool(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(0.5)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end
    --aimbot mastery
	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
		  local method = getnamecallmethod()
		  local args = {
			...
		  }
		  if tostring(method) == "FireServer" then
		  if tostring(args[1]) == "RemoteEvent" then
		  if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
		  if _G.UseSkill then
		  if type(args[2]) == "vector" then
		  args[2] = PositionSkillMasteryDevilFruit
		  else
			args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
		  end
		  return old(unpack(args))
		  end
		  end
		  end
		  end
		  return old(...)
		  end)
        end)
--Equip Gun
spawn(function()
  pcall(function()
    while task.wait() do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    if v:FindFirstChild("RemoteFunctionShoot") then
    CurrentEquipGun = v.Name
    end
    end
    end
    end
    end)
  end)
-- [Body Gyro]
   spawn(function()
			while task.wait() do
				pcall(function()
					if _G.TeleportIsland or AutoFarmChest or _G.chestsea2 or _G.chestsea3 or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.SailBoat or _G.Auto_Holy_Torch or _G.FindMirageIsland or _G.TeleportPly or _G.Tweenfruit or _G.AutoFishCrew or _G.AutoShark or _G.AutoCakeV2 or _G.AutoMysticIsland or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or _G.AutoMirage or AutoFarmAcient or _G.AutoQuestRace or Auto_Law or _G.AutoAllBoss or AutoTushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.DriveMytic or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.AutoNear or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
		end)
--No CLip Auto Farm
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.TeleportIsland or _G.CastleRaid or AutoFarmChest or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.SailBoat or _G.Auto_Holy_Torch or _G.Tweenfruit or _G.FindMirageIsland or _G.TeleportPly or _G.AutoFishCrew or _G.AutoShark or _G.AutoMysticIsland or _G.AutoCakeV2 or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or AutoFarmAcient or _G.AutoMirage or Auto_Law or _G.AutoQuestRace or _G.AutoAllBoss or _G.AutoHolyTorch or AutoTushita or _G.farmpiranya or _G.AutoTerrorshark or _G.AutoNear or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.DriveMytic or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)
--Check Material
function CheckMaterial(matname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Material" then
if v.Name == matname then
return v.Count
end
end
end
end
return 0
end
-----------------------------------------------------------------------------------------------------------------------------------------------

------AttackNoCD
    local plr = game.Players.LocalPlayer
	local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
	local CbFw2 = CbFw[2]

    function GetCurrentBlade() 
        local p13 = CbFw2.activeController
        local ret = p13.blades[1]
        if not ret then return end
        while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
        return ret
    end
    
    function AttackNoCD()
        if not AutoFarmMasDevilFruit or AutoFarmMasGun then
            if not Auto_Raid then
                local AC = CbFw2.activeController
                for i = 1, 1 do 
                    local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                        plr.Character,
                        {plr.Character.HumanoidRootPart},
                        60
                    )
                    local cac = {}
                    local hash = {}
                    for k, v in pairs(bladehit) do
                        if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                            table.insert(cac, v.Parent.HumanoidRootPart)
                            hash[v.Parent] = true
                        end
                    end
                    bladehit = cac
                    if #bladehit > 0 then
                        local u8 = debug.getupvalue(AC.attack, 5)
                        local u9 = debug.getupvalue(AC.attack, 6)
                        local u7 = debug.getupvalue(AC.attack, 4)
                        local u10 = debug.getupvalue(AC.attack, 7)
                        local u12 = (u8 * 798405 + u7 * 727595) % u9
                        local u13 = u7 * 798405
                        (function()
                            u12 = (u12 * u9 + u13) % 1099511627776
                            u8 = math.floor(u12 / u9)
                            u7 = u12 - u8 * u9
                        end)()
                        u10 = u10 + 1
                        debug.setupvalue(AC.attack, 5, u8)
                        debug.setupvalue(AC.attack, 6, u9)
                        debug.setupvalue(AC.attack, 4, u7)
                        debug.setupvalue(AC.attack, 7, u10)
                        pcall(function()
                            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                                AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                            end
                        end)
                    end
                end
            end
        end
    end
--Attack Mastery
function NormalAttack()
    if not _G.NormalAttack then
        local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
        local CombatFramework = debug.getupvalues(Module)[2]
        local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
        CamShake:Stop()
        CombatFramework.activeController.attacking = false
        CombatFramework.activeController.timeToNextAttack = 0
        CombatFramework.activeController.hitboxMagnitude = 180
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------

--Sword Weapon
function GetWeaponInventory(Weaponname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Sword" then
if v.Name == Weaponname then
return true
end
end
end
end
return false
end

--auto turn haki
  function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
---Bypass Teleport
function BTP(P)
	repeat wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		task.wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
	until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end

function BTP(p)
		pcall(function()
			if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				if NameMon == "FishmanQuest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif Mon == "God's Guard"  then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				elseif NameMon == "SkyExp1Quest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				elseif NameMon == "ShipQuest1" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "ShipQuest2" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "FrostQuest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				else
						repeat wait(0.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
						wait(.05)
						game.Players.LocalPlayer.Character.Head:Destroy()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
					wait()
				end
			end
		end)
	end

    --Remove Effect
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

local Page1 = Main.CreatePage({Page_Name = 'Main', Page_Title = 'Gerenal Tab'})
local Page2 = Main.CreatePage({Page_Name = 'Get Quest And Item', Page_Title = 'Item & Quest Tab'})
local Page3 = Main.CreatePage({Page_Name = 'Status Severs', Page_Title = 'Status/Server Tab'})
local Page4 = Main.CreatePage({Page_Name = 'Local PVP', Page_Title = 'Pvp-Visual Tab'})
local Page5 = Main.CreatePage({Page_Name = 'Devil Fruits ', Page_Title = 'Devil Fruit Tab'})
local Page6 = Main.CreatePage({Page_Name = 'Raid + Material', Page_Title = 'Raid-Material Tab'})
local Page7 = Main.CreatePage({Page_Name = 'Player ', Page_Title = 'Local Player Tab'})
local Page8 = Main.CreatePage({Page_Name = 'Tween Island ', Page_Title = 'Travel Tab'})
local Page9 = Main.CreatePage({Page_Name = 'shop', Page_Title = 'Shop Tab'})
local Page10 = Main.CreatePage({Page_Name = 'RaceV4 và đảo kì bí', Page_Title = 'RaceV4-Mirage Tab'})
local Page11 = Main.CreatePage({Page_Name = 'Sea Evnet', Page_Title = 'Sea Event Tab'})
local Page12 = Main.CreatePage({Page_Name = 'Config + Misc', Page_Title = 'Misc-Setting Tab'})

local Section1 = Page1.CreateSection('Config Farming')

local listfastattack = {"0.25", "0.2", "0.15", "0.1", "0.05", "0.02", "0.015", "0.01", "0"}
Section1.CreateDropdown({Title = 'Slect Fast Attack', List = listfastattack, Search = false, Selected = false}, function(value)
    _G.Min_Moi1w = (Value)
end)
if _G.Min_Moi1w == "0.1" then
    _G.Fast_Delay = 0.1
elseif _G.Min_Moi1w == "0.05" then
    _G.Fast_Delay = 0.05
elseif _G.Min_Moi1w == "0" then
    _G.Fast_Delay = 0
elseif _G.Min_Moi1w == "0.01" then
    _G.Fast_Delay = 0.01
elseif _G.Min_Moi1w == "0.015" then
    _G.Fast_Delay = 0.015
elseif _G.Min_Moi1w == "0.02" then
    _G.Fast_Delay = 0.02
elseif _G.Min_Moi1w == "0.15" then
    _G.Fast_Delay = 0.15
elseif _G.Min_Moi1w == "0.2" then
    _G.Fast_Delay = 0.2
elseif _G.Min_Moi1w == "0.25" then
    _G.Fast_Delay = 0.25
end

local listm1click = {"Melee", "Sword", "Blox Fruit"}
Section1.CreateDropdown({Title = 'Slect Weapon ', List = listm1click, Search = false, Selected = false}, function(value)
    ChooseWeapon = (Value)
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon == "Melee" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Sword" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Blox Fruit" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            else
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

local tatcacode = {
    "Sub2UncleKizaru",
    "NEWTROLL",
    "SUB2NOOBMASTER123",
    "StrawHatMaine",
    "Sub2OfficialNoobie",
    "Sub2NoobMaster123",
    "SUB2GAMERROBOT_EXP1",
    "SUB2GAMERROBOT_RESET1",
    "THEGREATACE",
    "BIGNEWS",
    "FUDD10",
    "fudd10_v2",
    "Bluxxy",
    "Starcodeheo",
    "JCWK",
    "SUB2CAPTAINMAUI",
    "Magicbus",
    "Sub2Fer999",
    "kittgaming",
    "GAMERROBOT",
    "SUBGAMERROBOT",
    "ADMINGIVEAWAY",
    "KITT_RESET",
    "SECRET_ADMIN",
    "Sub2Daigrock",
    "Axiore",
    "TantaiGaming"
}

Section1.CreateButton({Title = 'Reddeem All Code '}, function()
    function Redeemcode(buoi)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(buoi)
    end
    for i, v in pairs(tatcacode) do
        Redeemcode(value)
    end
    Notify("Redeem All Codes Complete")
end)

local Section2 = Page1.CreateSection('Main ')

Section2.CreateToggle({Title = "Auto Farm Level", Default = _G.AutoLevel}, function(value)
    _G.AutoLevel = (value)
end)

spawn(function()
    while task.wait() do
    if _G.AutoLevel then
    pcall(function()
      CheckLevel()
      if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
      if BypassTP then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2500 then
        BTP(CFrameQ)
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
        Tween(CFrameQ)
        end
            else
          Tween(CFrameQ)
          end
      if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
      end
      elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
      if v.Name == Ms then
      repeat wait(_G.Fast_Delay)
      AttackNoCD()
      bringmob = true
      AutoHaki()
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      --Click
      until not _G.AutoLevel or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
      bringmob = false
    end   
      end
      end
      for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
      if string.find(v.Name,NameMon) then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
        Tween(v.CFrame * CFrame.new(posX,posY,posZ))
      end
      end
      end
      end
      end)
    end
    end
    end)

    Section2.CreateToggle({Title = "Auto Farm Near Mob", Default = _G.AutoNear}, function(value)
        _G.AutoNear = (value)
    end)

    spawn(function()
        while wait(.1) do
        if _G.AutoNear then
        pcall(function()
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
          if v.Name then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
            repeat wait(_G.Fast_Delay)
                AttackNoCD()
                bringmob = true
          AutoHaki()
          EquipTool(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
          v.HumanoidRootPart.Transparency = 1
          v.Humanoid.JumpPower = 0
          v.Humanoid.WalkSpeed = 0
          v.HumanoidRootPart.CanCollide = false
          FarmPos = v.HumanoidRootPart.CFrame
          MonFarm = v.Name
          until not _G.AutoNear or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
          bringmob = false
        end
          end
          end
          end
          end)
        end
        end
      end)

      local Section3 = Page1.CreateSection("Quest Farm")

      local StatusBone = Section3.CreateLabel({Title = "You Have : ", Content = ""})
      spawn(function()
        pcall(function()
            while wait() do
                StatusBone.SetText("You Have : "..tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check").." Bones"))
            end
        end)
    end)

    if Third_Sea then
        Section3.CreateToggle({Title = 'Auto Farm Bone', Default = _G.AutoBone}, function(value)
            _G.AutoBone = (value)
        end)
        local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
    local BoneCFrame2 = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)
    spawn(
        function()
            while wait() do
                if _G.AutoBone then
                    pcall(
                        function()
                            local QuestTitle =
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                            if not string.find(QuestTitle, "Demonic Soul") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                if BypassTP then
                                    if
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                            BoneCFrame2.Position).Magnitude > 2500
                                     then
                                        BTP(BoneCFrame2)
                                    elseif
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                            BoneCFrame.Position).Magnitude < 2500
                                     then
                                        Tween(BoneCFrame)
                                    end
                                else
                                    Tween(BoneCFrame)
                                end
                                if
                                    (BoneCFrame.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        3
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "StartQuest",
                                        "HauntedQuest2",
                                        1
                                    )
                                end
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if
                                    game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or
                                        game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")
                                 then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if
                                            v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                v.Humanoid.Health > 0
                                         then
                                            if
                                                v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or
                                                    v.Name == "Demonic Soul" or
                                                    v.Name == "Posessed Mummy"
                                             then
                                                if
                                                    string.find(
                                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                        "Demonic Soul"
                                                    )
                                                 then
                                                    repeat
                                                        wait(_G.Fast_Delay)
                                                        AttackNoCD()
                                                        AutoHaki()
                                                        bringmob = true
                                                        EquipTool(SelectWeapon)
                                                        Tween(
                                                            v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ)
                                                        )
                                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        FarmPos = v.HumanoidRootPart.CFrame
                                                        MonFarm = v.Name
                                                    until not _G.AutoBone or v.Humanoid.Health <= 0 or not v.Parent or
                                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                            false
                                                else
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "AbandonQuest"
                                                    )
                                                    bringmob = false
                                                end
                                            end
                                        end
                                    end
                                else
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end

    Section3.CreateToggle({Title = "Random Bone", Default = _G.AutoRandomBone}, function(value)
        _G.AutoRandomBone = (value)
    end)
    spawn(function()
        while wait(0.001) do
        if _G.AutoRandomBone then
        local args = {
         [1] = "Bones",
         [2] = "Buy",
         [3] = 1,
         [4] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
        end
        end)

        local StatusCakess = Section3.CreateLabel({Title = "Need Kill : "})
        spawn(function()
            while wait() do
                pcall(function()
                    if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                        StatusCakess.SetText("Need Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
                    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                        StatusCakess.SetText("Need Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
                    elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                        StatusCakess.SetText("Need Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
                    else
                        StatusCakess.SetText("Boss Is Found")
                    end
                end)
            end
        end)

        Section3.CreateToggle({Title = "Auto Kill Dough V1 And Dough King", Default = _G.CakePrince}, function(value)
            _G.CakePrince = (value)
        end)
        spawn(function()
            while wait() do
                if _G.CakePrince then
                    pcall(function()
                        local CakeCFrame = CFrame.new(-2142.66821,71.2588654,-12327.4619,0.996939838,-4.33107843e-08,0.078172572,4.20252917e-08,1,1.80894251e-08,-0.078172572,-1.47488439e-08, 0.996939838)
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude > 2000 then
                            BTP(CakeCFrame)
                            wait(3)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude < 2000 then
                            Tween(CakeCFrame)
                            end
                        end
                        if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then   
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                                    if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                        for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            if v.Name then
                                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                                              repeat wait(_G.Fast_Delay)
                                                  AttackNoCD()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            --Click
                                            until not _G.CakePrince or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                                          end
                                            end
                                            end
                                            end
                                        end
                                    end
                            else -- -2009.2802734375, 4532.97216796875, -14937.3076171875
                                Tween(CFrame.new(-2151.049072265625, 158.0960235595703, -12404.349609375)) 
                            end
                        else
                            if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                    if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                        repeat wait(_G.Fast_Delay)
                                            AttackNoCD()
                                            AutoHaki()
                                            bringmob = true
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)  
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", Value)
                                        until _G.CakePrince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                                        bringmob = false
                                    end
                                end
                            else
                                Tween(CakeCFrame)
                            end
                        end
                    end)
                end
            end
        end)

        Section3.CreateToggle({Title = "Spawn Dough Boss", Default = false}, function(value)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
        end)

        local Section4 = Page1.CreateSection("Mastery")

        Section4.CreateToggle({Title = "Auto Farm Fruit Mastery", Default = false }, function(value)
            _G.AutoFarmFruitMastery = (value)
        end)

        Section4.CreateSlider({Title = "Kill At %", Min = 0, Max = 100, Default = 25 }, function(value)
            _G.Kill_At = (value)
        end)

        Section4.CreateToggle({Title = "Skill Z", Default = false }, function(value)
            _G.SkillZ = (value)
        end)

		Section4.CreateToggle({Title = "Skill X", Default = false }, function(value)
            _G.SkillX = (value)
        end)

		Section4.CreateToggle({Title = "Skill C", Default = false }, function(value)
            _G.SkillC = (value)
        end)

		Section4.CreateToggle({Title = "Skill V", Default = false }, function(value)
            _G.SkillV = (value)
        end)

		Section4.CreateToggle({Title = "Skill F", Default = false }, function(value)
            _G.SkillF = (value)
        end)

		spawn(function()
			while wait() do
				if _G.AutoFarmFruitMastery then
					pcall(function()
						local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
						if not string.find(QuestTitle, NameMon) then
							Magnet = false
							_G.UseSkill = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							StartMasteryFruitMagnet = false
							_G.UseSkill = false
							CheckLevel()
							repeat wait()
								TP1(CFrameQuest)
							until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
							if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
								wait(0.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
								wait(0.1)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							CheckLevel()
							if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										if v.Name == Mon then
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
												HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
												repeat task.wait()
													if v.Humanoid.Health <= HealthMs then
														AutoHaki()
														EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
														TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
														v.HumanoidRootPart.CanCollide = false
														PosMonMasteryFruit = v.HumanoidRootPart.CFrame
														v.Humanoid.WalkSpeed = 0
														v.Head.CanCollide = false
														_G.UseSkill = true
													else           
														_G.UseSkill = false 
														AutoHaki()
														EquipTool(SelectWeapon)
														TP1(v.HumanoidRootPart.CFrame * Pos)
														v.HumanoidRootPart.CanCollide = false
														v.HumanoidRootPart.Size = Vector3.new(100,100,100)
														PosMonMasteryFruit = v.HumanoidRootPart.CFrame
														v.Humanoid.WalkSpeed = 0
														v.Head.CanCollide = false
													end
													StartMasteryFruitMagnet = true
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											else
												_G.UseSkill = false
												StartMasteryFruitMagnet = false
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										end
									end
								end
							else
								TP1(CFrameMon)
								StartMasteryFruitMagnet = false   
								_G.UseSkill = false 
								local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
								if Mob then
									TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
								else
									if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
										game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
										task.wait()
										game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
									end
								end
							end
						end
					end)
				end
			end
		end)
		
		spawn(function()
			while wait() do
				if _G.UseSkill then
					pcall(function()
						CheckLevel()
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
								MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
							elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
								MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
							end
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then                      
								if _G.SkillZ then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
								end
								if _G.SkillX then          
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
								end
								if _G.SkillC then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
									wait(2)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
								end
							elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then   
								if _G.SkillZ then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
								end
								if _G.SkillX then        
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
								end
								if _G.SkillC then 
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
									wait(2)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
								end
							elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
								if _G.SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
								end
								if _G.SkillX then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
								end
								if _G.SkillC then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
								end
								if _G.SkillV then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
								end
								if _G.SkillF then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
								end
							elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
								if _G.SkillZ then 
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
								end
								if _G.SkillX then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
								end
								if _G.SkillC then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
								end
								if _G.SkillV then
									local args = {
										[1] = PosMonMasteryFruit.Position
									}
									game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
									game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
									game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
								if _G.SkillF then
										local args = {
											[1] = PosMonMasteryFruit.Position
										}
										game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
										game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
										game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
									end
								end
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			game:GetService("RunService").RenderStepped:Connect(function()
				pcall(function()
					if _G.UseSkill then
						for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
							if v.Name == "NotificationTemplate" then
								if string.find(v.Text,"Skill locked!") then
									v:Destroy()
								end
							end
						end
					end
				end)
			end)
		end)
		
		spawn(function()
			pcall(function()
				game:GetService("RunService").RenderStepped:Connect(function()
					if _G.UseSkill then
						local args = {
							[1] = PosMonMasteryFruit.Position
						}
						game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
					end
				end)
			end)
		end)
    
            local Section5 = Page1.CreateSection(" boss")

            if First_Sea then
               BossList = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
           elseif Second_Sea then
               BossList = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
           elseif Third_Sea then
               BossList = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
           end

            Section5.CreateDropdown({Title = "Boss List", List = BossList, Search = false, Selected = false}, function(value)
               getgenv().SelectBoss = (Value)
            end)

            Section5.CreateToggle({Title = 'Get Quest Boss', Desc = '', Default = false}, function(Value)
               _G.GetQuestBoss = Value
           end)
           
           Section5.CreateToggle({Title = 'Auto Fam Boss Select', Desc = 'auto farm boss when selected ', Default = false}, function(Value)
               _G.AutoBoss = Value
           end)

           spawn(function()
            while task.wait() do
                if _G.AutoBoss and not _G.GetQuestBoss then
                    pcall(function()
                        CheckBoss()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Boss) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Boss then
                                    if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and _G.AutoBoss then
                                        repeat wait()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                        until v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not _G.AutoBoss
                                    end
                                end
                            end
                        else
                            if BypassTP then
                                if (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    Taixiu(CFrameBoss)
                                elseif (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    Tween(CFrameBoss)
                                else
                                    Tween(CFrameBoss)
                                end
                            end
                        end
                    end)
                end
            end
        end)
        
        spawn(function()
            while wait() do
                if _G.AutoBoss and _G.GetQuestBoss then
                    pcall(function()
                        CheckBoss()
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude > 2000 then
                                    Taixiu(CFrameQuestBoss)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude < 2000 then
                                    Tween(CFrameQuestBoss)
                                end
                            else
                                Tween(CFrameQuestBoss)
                            end
                            if (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, NumberQuestBoss)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            CheckBoss()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Boss) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Boss then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                                                repeat wait()
                                                    EquipTool(SelectWeapon)
                                                    AutoHaki()                                           
                                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                until not _G.AutoBoss or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    if (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                        Taixiu(CFrameBoss)
                                    elseif (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                        Tween(CFrameBoss)
                                    else
                                        Tween(CFrameBoss)
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)

            
            local Section6 = Page2.CreateSection("Quest Sea")

if First_Sea then
            Section6.CreateToggle({Title = "Auto  Quest sea 2", Default = false }, function(value)
                _G.AutoSecondSea = (value)
            end)
  
            spawn(function()
                while wait() do 
                    if _G.AutoSecondSea then
                        spawn(function()
                            local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
                            if MyLevel >= 700 and World1 then
                                if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                    local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                                    repeat Tween(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                    wait(1.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                    wait(0.5)
                                    EquipTool("Key")
                                    repeat Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488)) wait() until (Vector3.new(1347.7124, 37.3751602, -1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                    wait(0.5)
                                else
                                    if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Ice Admiral" then
                                                    if not v.Humanoid.Health <= 0 then
                                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                            repeat wait(_G.Fast_Delay)
                                                                AttackNoCD()
                                                                AutoHaki()
                                                                EquipTool(SelectWeapon)
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.Humanoid.WalkSpeed = 0
                                                                v.Head.CanCollide = false
                                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                            until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                                        end
                                                    else 
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                                    end
                                                end
                                            end
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                            end
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
        end
    
if Second_Sea then
        Section6.CreateToggle({Title = "Auto Quest Sea 3", Default = false }, function(value)
            _G.AutoThirdSea = (value)
        end)
        
        spawn(function()
            while wait() do
                if _G.AutoThirdSea then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and Second_Sea then
                            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                                Tween(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                                wait(1.8)
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra" then
                                            repeat wait(_G.Fast_Delay)
                                                AttackNoCD()
                                                AutoHaki()
                                                EquipTool(SelectWeapon)
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    Tween(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end

    local Section7 = Page2.CreateSection("Quest Swords ")

    Section7.CreateToggle({Title = "Auto Hallow Sycthe", Default = false }, function(value)
        AutoHallowSycthe = (value)
    end)

    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat wait(_G.Fast_Delay)
                                    AttackNoCD()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    --Click
                                until v.Humanoid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                        EquipTool("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
    
            end
        end
    end)

    Section7.CreateToggle({Title = "Auto Get yama", Default = false }, function(value)
        _G.AutoYama = (value)
    end)

    spawn(function()
        while wait() do
            if _G.AutoYama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                end
            end
        end
    end)

    Section7.CreateToggle({Title = "Auto Get tushita", Default = false }, function(value)
        AutoTushita = (value)
    end)

    spawn(function()
        while wait() do
                    if AutoTushita then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == ("Longma" or v.Name == "Longma") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                 repeat wait(_G.Fast_Delay)
                                     AttackNoCD()
                                        AutoHaki()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
                                            wait()
                                            EquipTool(SelectWeapon)
                                        end
                                        FarmPos = v.HumanoidRootPart.CFrame
                                          --Click
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        Tween(v.HumanoidRootPart.CFrame * Pos)
                                    until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                        end
                    end
                end
        end)

        Section7.CreateToggle({Title = "Auto Holy Torch tushita", Default = false }, function(value)
            _G.Auto_Holy_Torch = (value)
        end)

        spawn(function()
            while wait() do
                if _G.Auto_Holy_Torch then
                    pcall(function()
                        wait(1)
                        repeat Tween(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                        wait(1)
                        repeat Tween(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                        wait(1)
                        repeat Tween(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                        wait(1)
                        repeat Tween(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                        wait(1)
                        repeat Tween(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                    end)
                end
            end
        end)
    
        Section7.CreateToggle({Title = "Auto budy sword", Default = false }, function(value)
            _G.AutoBudySword = (value)
        end)

        Section7.CreateToggle({Title = "Auto Cavander", Default = false }, function(value)
            _G.AutoCarvender = (value)
        end)

        Section7.CreateToggle({Title = "Auto Twin Hook", Default = false }, function(value)
            _G.AutoTwinHook = (value)
        end)

        Section7.CreateToggle({Title = "Auto Cursed Dual Katana", Default = false }, function(value)
            Auto_Cursed_Dual_Katana = (value)
        end)

        spawn(function()
            while wait() do
                pcall(function()
                    if Auto_Cursed_Dual_Katana then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                    EquipWeapon("Tushita")
                                end
                            elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                    EquipWeapon("Yama")
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                        end
                    end
                end)
            end
        end)
        spawn(function()
            while wait() do
                pcall(function()
                    if Auto_Cursed_Dual_Katana then
                        if GetMaterial("Alucard Fragment") == 0 then
                            Auto_Quest_Yama_1 = true
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        elseif GetMaterial("Alucard Fragment") == 1 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = true
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        elseif GetMaterial("Alucard Fragment") == 2 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = true
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        elseif GetMaterial("Alucard Fragment") == 3 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = true
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                        elseif GetMaterial("Alucard Fragment") == 4 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = true
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                        elseif GetMaterial("Alucard Fragment") == 5 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = true
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                        elseif GetMaterial("Alucard Fragment") == 6 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss") then
                                Auto_Quest_Yama_1 = false
                                Auto_Quest_Yama_2 = false
                                Auto_Quest_Yama_3 = false
                                Auto_Quest_Tushita_1 = false
                                Auto_Quest_Tushita_2 = false
                                Auto_Quest_Tushita_3 = false
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
                                            if v.Humanoid.Health > 0 then
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                            end
                                        end
                                    end
                                end
                            else
                                if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                                    wait(1)
                                    topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)
                                    topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                                else
                                    topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                end   
                            end
                        end
                    end
                end)
            end
        end)
        
        spawn(function()
            while wait() do
                if Auto_Quest_Yama_1 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Mythological Pirate" then
                                    repeat wait()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                                end
                            end
                        else
                            topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                        end
                    end)
                end
            end
        end)
        
        spawn(function()
            while wait() do
                pcall(function()
                    if Auto_Quest_Yama_2 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HazeESP") then
                                v.HazeESP.Size = UDim2.new(50,50,50,50)
                                v.HazeESP.MaxDistance = "inf"
                            end
                        end
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if v:FindFirstChild("HazeESP") then
                                v.HazeESP.Size = UDim2.new(50,50,50,50)
                                v.HazeESP.MaxDistance = "inf"
                            end
                        end
                    end
                end)
            end
        end)
        
        spawn(function()
            while wait() do
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                            v.HumanoidRootPart.CFrame = PosMonsEsp
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                vc.Velocity = Vector3.new(0, 0, 0)
                            end
                        end
                    end
                end)
            end
        end)
        
        spawn(function()
            while wait() do
                if Auto_Quest_Yama_2 then 
                    pcall(function() 
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HazeESP") then
                                repeat wait()
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    else
                                        ChooseWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end							
                                    end      
                                until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                            else
                                for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                    if y:FindFirstChild("HazeESP") then
                                        if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                            topos(y.HumanoidRootPart.CFrameMon* Farm_Mode)
                                        else
                                            topos(y.HumanoidRootPart.CFrame * Farm_Mode)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
        
        spawn(function()
            while wait() do
                if Auto_Quest_Yama_3 then
                    pcall(function()
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                            topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                        elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                            repeat wait()
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger]" then
                                            if v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    ChooseWeapon(Sword)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    --v.Humanoid:ChangeState(11)
                                                    --v.Humanoid:ChangeState(14)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    Click()
                                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                        v.Humanoid.Animator:Destroy()
                                                    end
                                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                            end
                                        end
                                    end
                                else
                                    wait(5)
                                    topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)        
                                    topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)     
                                    topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)     
                                    topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                                end
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Soul Reaper" then
                                            if v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                            end
                                        end
                                    end
                                else
                                    topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                            end
                        end
                    end)
                end
            end
        end)
        spawn(function()
            while wait() do
                if Auto_Quest_Tushita_1 then
                    topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                    wait(5)
                    topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
                    wait(5)
                    topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
                end
            end
        end)
        spawn(function()
            while wait() do
                if Auto_Quest_Tushita_2 then
                    pcall(function()
                        if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                        repeat wait()
                                            ChooseWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                        end
                    end)
                end
            end
        end)
        spawn(function()
            while wait() do
                if Auto_Quest_Tushita_3 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Queen" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                ChooseWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                            end
                        elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                            repeat wait()
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                            if v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    ChooseWeapon(Sword)
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    --v.Humanoid:ChangeState(11)
                                                    --v.Humanoid:ChangeState(14)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    Click()
                                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                        v.Humanoid.Animator:Destroy()
                                                    end
                                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                            end
                                        end
                                    end
                                else
                                    wait(5)
                                    topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)        
                                    topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)     
                                    topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)     
                                    topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                                end
                            until not Auto_Cursed_Dual_Katana or not Auto_Quest_Tushita_3 or GetMaterial("Alucard Fragment") == 6
                        end
                    end)
                end
            end
        end)

        local Section8 = Page2.CreateSection("Quest Sword + Hop")

        Section8.CreateToggle({Title = "Auto Get Hallow Sycher Hop", Default = false }, function(value)
            _G.Hop = (value)
        end)

        Section8.CreateToggle({Title = "Auto Get Yama Hop ", Default = false }, function(value)
            _G.Hop = (value)
        end)

        Section8.CreateToggle({Title = "Find Boss Logma Hop", Default = false }, function(value)
            _G.Hop = (value)
        end)

        Section8.CreateToggle({Title = "Auto buddy sword + Hop", Default = false }, function(value)
            _G.Hop = (value)
        end)

        Section8.CreateToggle({Title = "Auto Get canvender + Hop", Default = false }, function(value)
            _G.Hop = (value)
        end)

        Section8.CreateToggle({Title = "Auto Get double hook + Hop", Default = false }, function(value)
            _G.Hop = (value)
        end)

        spawn(function()
            pcall(function()
                while wait() do
                    if _G.Hop == true then
                        Hop()
                    elseif _G.Hop == false then
                    end
                end
            end)
        end)

        local BigMomPos = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875)
        spawn(function()
            while wait() do
                if _G.AutoBudySword and Third_Sea then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Queen" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude > 1500 then
                        BTP(BigMomPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude < 1500 then
                        topos(BigMomPos)
                        end
                    else
                        topos(BigMomPos)
                    end
                        topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if _G.AutoBudySwordHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)

        local CavandisPos = CFrame.new(5314.58203, 22.8796749, -125.942276, 1, 1.69639192e-10, 1.5617945e-15, -1.69639192e-10, 1, 5.38001999e-08, -1.55266783e-15, -5.38001999e-08, 1)
        spawn(function()
            while wait() do
                if  _G.AutoCarvender and Third_Sea then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not  _G.AutoCarvender or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude > 1500 then
                        BTP(CavandisPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude < 1500 then
                        topos(CavandisPos)
                        end
                    else
                        topos(CavandisPos)
                    end
                        topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if  _G.AutoCavanderhop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
    
        local ElephantPos = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)
        spawn(function()
            while wait() do
                if  _G.AutoTwinHook and Third_Sea then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not  _G.AutoTwinHook or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude > 1500 then
                        BTP(ElephantPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude < 1500 then
                        topos(ElephantPos)
                        end
                    else
                        topos(ElephantPos)
                    end
                        topos(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if  _G.AutoTwinHook_Hop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)

        local Section9 = Page2.CreateSection("Nhiệm vụ Mob")

            Section9.CreateToggle({Title = "tự động đánh nhà máy", Default = false }, function(value)
                _G.Factory = (value)
            end)

            spawn(function()
                while wait() do
                    if _G.Factory then
                        if game.Workspace.Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCD()
                                        repeat Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                                            wait()
                                        until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                                        EquipTool(SelectWeapon)
                                        AutoHaki()
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        --Click
                                    until not v.Parent or v.Humanoid.Health <= 0  or _G.Factory == false
                                end
                            end
                        elseif game.ReplicatedStorage:FindFirstChild("Core") then
                            repeat Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                                wait()
                            until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                        end
            
                    end
                end
            end)
        
            Section9.CreateToggle({Title = "Auto Kill Castle Raid + Rip_Indra ", Default = false }, function(value)
                _G.CastleRaid = (value)
            end)

            spawn(function()
                while wait() do
                    if _G.CastleRaid then
                        pcall(function()
                            local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                            if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                                for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                                      repeat wait(_G.Fast_Delay)
                                          AttackNoCD()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    --Click
                                    until not _G.CastleRaid or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                                  end
                                end
                            end
                        end
                            else
                                BTPZ(CFrame.new(-5084.353515625, 314.550537109375, -3133.190673828125))
                                -- wait(3)
                                -- toTarget(CFrame.new(-5024.0048828125, 314.550537109375, -3001.951904296875))
                            end
                        end)
                    end
                end
                end)

                local EliteProgress = Section9.CreateLabel({Title = "Elite Progress: "})
                spawn(function()
                    pcall(function()
                        while wait() do
                            EliteProgress.SetText("Elite Progress: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
                        end
                    end)
                end)

                local Elite_Hunter_Status = Section9.CreateLabel({Title = "Elite Hunter: ❌"})
                spawn(function()
                    while wait() do
                        pcall(function()
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                Elite_Hunter_Status.SetText("Status: ✅")	
                            else
                                Elite_Hunter_Status.SetText("Status: ❌")	
                            end
                        end)
                    end
                end)

        
                Section9.CreateToggle({Title = "Kill Elite Hunter", Default = false }, function(value)
                    _G.AutoElite = (value)
                end)

                spawn(function()
                    while task.wait() do
                        if _G.AutoElite then
                            pcall(function()
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                                     repeat wait(_G.Fast_Delay)
                                                         AttackNoCD()
                                                            EquipTool(SelectWeapon)
                                                            AutoHaki()
                                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                                            MonsterPosition = v.HumanoidRootPart.CFrame
                                                            v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                            v.Humanoid.JumpPower = 0
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                        until _G.AutoElite == false or v.Humanoid.Health <= 0 or not v.Parent
                                                    end
                                                end
                                            end
                                        else
                                          
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                             toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                             toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                             toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                            end
            
                                        end
                                  
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                end
                            end)
                        end
                    end
                end)

  local Section10 = Page3.CreateSection("Status Player ")

  local locallv = Section10.CreateLabel({Title = "Level :"})
  spawn(function()
    while wait() do
        pcall(function()
            locallv.SetText("Level :".." "..game:GetService("Players").LocalPlayer.Data.Level.Value)
        end)
    end
end)

local localrace = Section10.CreateLabel({Title = "Race :"})
spawn(function()
    while wait() do
        pcall(function()
            localrace.SetText("Race :".." "..game:GetService("Players").LocalPlayer.Data.Race.Value)
        end)
    end
end)

local localbeli = Section10.CreateLabel({Title = "Beli :"})
spawn(function()
    while wait() do
        pcall(function()
            localbeli.SetText("Beli :".." "..game:GetService("Players").LocalPlayer.Data.Beli.Value)
        end)
    end
end)

local localfrag = Section10.CreateLabel({Title = "Fragments :"})
spawn(function()
    while wait() do
        pcall(function()
            localfrag.SetText("Fragments :".." "..game:GetService("Players").LocalPlayer.Data.Fragments.Value)
        end)
    end
end)

local Section11 = Page3.CreateSection("Status sever")

local MirageStatus = Section11.CreateLabel({Title = "Đảo kì bí: "})
task.spawn(function()
    while task.wait() do
        pcall(function()
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('MysticIsland') then
            StatusMirage.SetText(" ✅ ")
        else
            StatusMirage.SetText(" ❌ ")
         end
    end)
 end
end)
spawn(function()
pcall(function()
    while wait() do
        MirageStatus.SetText("Mirage Island: "..StatusMirage)
    end
end)
end)

local StatusMoon = Section11.CreateLabel({Title = "Moon Checking: "})
spawn(function()
    pcall(function()
        while wait() do
            StatusMoon.SetText("Moon Checking: "..FullMoonStatus)
        end
    end)
end)
task.spawn(function()
    while task.wait() do
    pcall(function()
        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
           FullMoonStatus = "4/4 🌕"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            FullMoonStatus = "3/4 🌖"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            FullMoonStatus = "2/4 🌗"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
            FullMoonStatus = "1/4 🌘"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            FullMoonStatus = "4/3 🌔"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150086" then
            FullMoonStatus = "4/2 🌓"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709139597" then
            FullMoonStatus = "4/1 🌒"
        else
            FullMoonStatus = "0/4 🌑"
        end
    end)
    end
    end)

    local KitStatus = Section11.CreateLabel({Title = "Kitsune Island: "})
    spawn(function()
        pcall(function()
            while wait() do
                KitStatus.SetText("Kitsune Island: "..StatusKitsune)
            end
        end)
    end)
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') or game:GetService("Workspace").Map:FindFirstChild('KitsuneIsland') then
                    StatusKitsune.SetText(" ✅ ")
                else
                    StatusKitsune.SetText(" ❌ ")
                 end
        end)
     end
    end)

    local LeviStatus = Section11.CreateLabel({Title = "Frozen Islands: "})
    spawn(function()
        pcall(function()
            while wait() do
                LeviStatus.SetText("Frozen Dimension: "..FrozenIsland)
            end
        end)
    end)
    spawn(function()
        while wait() do
            pcall(function()
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') or game:GetService("Workspace").Map:FindFirstChild('FrozenDimension') then
                FrozenIsland.SetText(" ✅ ")
            else
                FrozenIsland.SetText(" ❌ ")
            end
    end)
end
end)

local Section12 = Page2.CreateSection("Get Gun.")

Section12.CreateToggle({Title = "Auto Get Soul guitar", Default = false }, function(value)
    _G.AutoNevaSoulGuitar = (value)
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoNevaSoulGuitar then
                if GetWeaponInventory("Soul Guitar") == false then
                    if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
                        if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                        else
                            if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                    Quest2 = true
                                    repeat wait() topos(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNevaSoulGuitar
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                    wait(1)
                                elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                    if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                        Quest4 = true
                                        repeat wait() topos(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNevaSoulGuitar
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                        wait(1)
                                        topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                    else
                                        Quest3 = true
                                        --Not Work Yet
                                    end
                                else
                                    if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                        local args = {
                                            [1] = "GuitarPuzzleProgress",
                                            [2] = "Ghost"
                                        }

                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                if v.Name == "Living Zombie" then
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
                                                    topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                    end
                                end
                            else    
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                    print("Go to Grave")
                                    topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                    print("Wait Next Night")
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
end
else
if _G.soulGuitarhop then
hop()
end
                    end
                end
        end)
    end
end)

local Section13 = Page3.CreateSection("Sever")

Section13.CreateButton({Title = "Hop Severs Low Players"}, function()
    _G.AutoRejoin = false
                getgenv().AutoTeleport = true
                getgenv().DontTeleportTheSameNumber = true 
                getgenv().CopytoClipboard = false
                if not game:IsLoaded() then
                    print("Game is loading waiting...")
                end
                local maxplayers = math.huge
                local serversmaxplayer;
                local goodserver;
                local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
                function serversearch()
                    for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                        if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                            serversmaxplayer = v.maxPlayers
                            maxplayers = v.playing
                            goodserver = v.id
                        end
                    end       
                end
                function getservers()
                    serversearch()
                    for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                        if i == "nextPageCursor" then
                            if gamelink:find("&cursor=") then
                                local a = gamelink:find("&cursor=")
                                local b = gamelink:sub(a)
                                gamelink = gamelink:gsub(b, "")
                            end
                            gamelink = gamelink .. "&cursor=" ..v
                            getservers()
                        end
                    end
                end 
                getservers()
                if AutoTeleport then
                    if DontTeleportTheSameNumber then 
                        if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                            return warn("It has same number of players (except you)")
                        elseif goodserver == game.JobId then
                            return warn("Your current server is the most empty server atm") 
                        end
                    end
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
                end
end)

Section13.CreateToggle({Title = "Auto Rejoin if you get kicked"}, function(value)
    _G.AutoRejoin = (value)
end)

spawn(function()
	while wait() do
		if _G.AutoRejoin then
				getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
						game:GetService("TeleportService"):Teleport(game.PlaceId)
					end
				 end)
			end
		end
	end)
  
Section13.CreateBox({Title = 'Job Id Placed', Placeholder = "Input iob id notify in server script ", Number_Only = false }, function(value)
    _G.Job = (value)
end)

Section13.CreateButton({Title = "join job id"}, function()
    _G.AutoRejoin = false
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
end)

Section13.CreateButton({Title = "Copy job id"}, function()
    setclipboard(tostring(game.JobId))
end)


local Section14 = Page12.CreateSection("Config")

Section14.CreateToggle({Title = "Fast Attack ", Default = true }, function(value)
    _G.VaiCaPia = (value)
end)
spawn(function()
	while wait(0.4) do
		pcall(function()
			if _G.VaiCaPia then
				repeat wait(_G.Fast_Delay)
					AttackNoCD()
				until not _G.VaiCaPia
			end
		end)
	end
end)

Section14.CreateToggle({Title = "Bring Mob", Default = true }, function(value)
    _G.BringMob = (value)
end)
spawn(function()
    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.BringMob and bringmob then
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        if v.Name == "Factory Staff" then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 500 then
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.CFrame = FarmPos
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == MonFarm then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 337.5 then
                                v.HumanoidRootPart.CFrame = FarmPos
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                            end
                        end
                    end)
            end
        end)

        Section14.CreateToggle({Title = "Bypass Tp", Default = false }, function(value)
            BypassTP = (value)
        end)

        Section14.CreateToggle({Title = "Remove Notify", Default = false }, function(value)
            RemoveNotify = (value)
        end)
        spawn(function()
            while wait() do
                if RemoveNotify then
                    game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
                else
                    game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
                end
            end
        end)

        Section14.CreateToggle({Title = "White Screen (Reduce Lag)", Default = false }, function(value)
            _G.WhiteScreen = (value)
            if _G.WhiteScreen == true then
                game:GetService("RunService"):Set3dRenderingEnabled(false)
            elseif _G.WhiteScreen == false then
                game:GetService("RunService"):Set3dRenderingEnabled(true)
                    end
        end)

        local Section15 = Page12.CreateSection("cài đặt farming thông thạo")
      
        Section15.CreateSlider({Title = "Pos X", Min = -60, Max = 60, Default = 15 }, function(value)
            posX = (value)
        end)

        Section15.CreateSlider({Title = "Pos Y", Min = -60, Max = 60, Default = 15 }, function(value)
            posY = (value)
        end)

        Section15.CreateSlider({Title = "Pos Z", Min = -60, Max = 60, Default = 25 }, function(value)
            posZ = (value)
        end)

        local Section16 = Page4.CreateSection("Players")

        spawn(function()
            while wait() do
                pcall(function()
                    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                        if i == 12 then
                            plyserv.SetText("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
                        elseif i == 1 then
                            plyserv.SetText("Player :".." "..i.." ".."/".." ".."12")
                        else
                            plyserv.SetText("Players :".." "..i.." ".."/".." ".."12")
                        end
                    end
                end)
            end
        end)
        
        Playerslist = {}
            
            for i,v in pairs(game:GetService("Players"):GetChildren()) do
                table.insert(Playerslist,v.Name)
            end

            Section16.CreateDropdown({Title = "Select Ply", List = Playerslist, Search = false, Selected = false}, function(value)
                _G.SelectPly = (Value)
            end)

            Section16.CreateButton({Title = "Làm mới danh sách người chơi"}, function()
                NewPlayerList = {}
    for i,v in pairs(game.Players:GetChildren()) do  
        table.insert(Playerslist ,v.Name)
    end
    SelectedPly:Refresh(NewPlayerList)
            end)

            Section16.CreateToggle({Title = "Teleporter To Players", Default = false }, function(value)
                _G.TeleportPly = (value)
                pcall(function()
                    if _G.TeleportPly then
                        repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
                    end
                    StopTween(_G.TeleportPly)
                end)
            end)

        local Section17 = Page4.CreateSection("Auto Aim")

        Section17.CreateToggle({Title = "Tự động ngắm(sử dụng với người chơi đã chọn)", Default = false }, function(value)
            _G.Aimbot_Gun = (Value)
        _G.Aimbot_Skill = (Value)
        end)

        Section17.CreateToggle({Title = "tự động ngắm skill ở gần", Default = false }, function(value)
            AimSkillNearest = (value)
        end)

        spawn(function()
            while task.wait() do
                if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
                    pcall(function()
                        game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                        local args = {
                            [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                            [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                        }
                        game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                        game:GetService'VirtualUser':CaptureController()
                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    end)
                end
            end
        end)
        spawn(function()
            pcall(function()
                while task.wait() do
                    if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                        local args = {
                            [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
                        }
                        
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
                    end
                end
            end)
        end)
        
        spawn(function()
            while wait(.1) do
                pcall(function()
                    local MaxDistance = math.huge
                    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            local Distance = v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                            if Distance < MaxDistance then
                                MaxDistance = Distance
                                TargetPlayerAim = v.Name
                            end
                        end
                    end
                end)
            end
        end)
        
        spawn(function()
            pcall(function()
                game:GetService("RunService").RenderStepped:connect(function()
                    if AimSkillNearest and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                        local args = {
                            [1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
                        }
                        game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                    end
                end)
            end)
        end)
        
        local Section18 = Page5.CreateSection(" Devils Fruits")

        Section18.CreateToggle({Title = "Auto random Fruit ", Default = false }, function(value)
            _G.AutoRandom = (value)
        end)

        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoRandom then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy") 
                    end
                end)
            end
        end)

        Section18.CreateToggle({Title = "Auto Store Fruits", Default = false }, function(value)
            _G.AutoStore = (value)
        end)
        
        spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.AutoStore then
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Bomb-Bomb",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spike-Spike",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Chop-Chop",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spring-Spring",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Rocket-Rocket",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Smoke-Smoke",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spin-Spin",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Flame-Flame",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Bird-Bird: Falcon",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Ice-Ice",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Sand-Sand",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Dark-Dark",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Ghost-Ghost",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Diamond-Diamond",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Light-Light",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Love-Love",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Rubber-Rubber",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Barrier-Barrier",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Magma-Magma",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Door-Door",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Quake-Quake",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Human-Human: Buddha Fruit"
                                )
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Human-Human: Buddha",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Human-Human: Buddha Fruit"
                                )
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spider-Spider",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Bird-Bird: Phoenix",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Rumble-Rumble",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Pain-Pain",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Gravity-Gravity",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Dough-Dough",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Shadow-Shadow",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Venom-Venom",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Control-Control",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Spirit-Spirit",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Dragon-Dragon",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Leopard-Leopard",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")
                            )
                        end
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit")
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "StoreFruit",
                                "Kitsune-Kitsune",
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit")
                            )
                        end
                    end
                end
            )
        end
    end
)

Section18.CreateToggle({Title = "Teleporter To Fruits ", Default = false }, function(value)
    _G.TeleportFruit = (value)
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.TeleportFruit then
                for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name:find("Fruit") then
                        Tween(v.Handle.CFrame)
                    end
                end
            end
        end)
    end
end)

FruitList = {
    "Rocket-Rocket",
    "Spin-Spin",
    "Spike-Spike",
    "Chop-Chop",
    "Spring-Spring",
    "Bird: Falcon",
    "Smoke-Smoke",
    "Flame-Flame",
    "Ice-Ice",
    "Sand-Sand",
    "Dark-Dark",
    "Revive-Revive",
    "Diamond-Diamond",
    "Light-Light",
    "Love-Love",
    "Rubber-Rubber",
    "Barrier-Barrier",
    "Magma-Magma",
    "Portal-Portal",
    "Quake-Quake",
    "Human-Human: Buddha",
    "Spider-Spider",
    "Bird-Bird: Phoenix",
    "Rumble-Rumble",
    "Pain-Pain",
    "Gravity-Gravity",
    "Dough-Dough",
    "Venom-Venom",
    "Shadow-Shadow",
    "Control-Control",
    "Spirit-Spirit",
    "Dragon-Dragon",
    "Leopard-Leopard",
    "Kitsune-Kitsune"
}

local Laytraiacquydithangngu = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
FruitSnipeList = {}
SellSellConcac = {}
for i,v in next,Laytraiacquydithangngu do
	table.insert(FruitSnipeList,v.Name)
	if v.OnSale then 
		table.insert(SellSellConcac,v.Name)
	end
end
	
Section18.CreateDropdown({Title = "Select Fruits", List = FruitList, Search = false, Selected = false}, function(Value)
    _G.SelectSnipe = Value
end)

Section18.CreateToggle({Title = "Auto Snipe Fruits", Default = false}, function(Value)
    _G.AutoSnipeFruit = Value
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoSnipeFruit then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectSnipe)
            end 
        end
    end)
end)

local Section19 = Page5.CreateSection("ESP")

Section19.CreateToggle({Title = "ESP Players", Default = false}, function(Value)
    ESPPlayer = (value)
	UpdatePlayerChams()
end)

Section19.CreateToggle({Title = "ESP Fruits", Default = false}, function(Value)
    DevilFruitESP = (Value)
    while DevilFruitESP do wait()
        UpdateDevilChams() 
    end
end)

Section19.CreateToggle({Title = "ESP Islands", Default = false}, function(Value)
    IslandESP = (Value)
    while IslandESP do wait()
        UpdateIslandESP() 
    end
end)

Section19.CreateToggle({Title = "ESP Flower", Default = false}, function(Value)
    FlowerESP = (Value)
	UpdateFlowerChams() 
end)

local Section20 = Page6.CreateSection("Raid ")

Section20.CreateButton({Title = 'Auto Teleporter To Raid'}, function()
    Raidroom()
end)
function Raidroom()
    if taodangosea2 then
        Tween(CFrame.new(-6437.87793, 250.645355, -4498.92773, 0.502376854, -1.01223634e-08, -0.864648759, 2.34106086e-08, 1, 1.89508653e-09, 0.864648759, -2.11940012e-08, 0.502376854))
    elseif taodangosea3 then
        Tween(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
    end
end

local listchip = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}

Section20.CreateDropdown({Title = "Select Chip To Buy", List = listchip, Search = false, Selected = false}, function(Value)
    SelectChip = (Value)
end)

Section20.CreateToggle({Title = "Auto Buy Chip selected", Default = false}, function(Value)
    _G.Auto_Buy_Chips_Dungeon = (Value)
end)
spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = SelectChip
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
        end
    end
end)

Section20.CreateToggle({Title = "Auto Start Raid", Default = false}, function(Value)
    _G.Auto_StartRaid = (Value)
end)
spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if Second_Sea then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif Third_Sea then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

Section20.CreateToggle({Title = "Kill Aura", Default = false}, function(Value)
    KillAura = (Value)
end)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)

Section20.CreateToggle({Title = "Auto Next Islands", Default = false}, function(Value)
    _G.NextIsland = (Value)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.NextIsland then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(2, 20 ,2))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame *CFrame.new(2, 60 ,2))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame *CFrame.new(2, 20 ,2))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame *CFrame.new(2, 20 ,2))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame *CFrame.new(2, 20 ,2))
                    end
                end
            end
        end
    end)
end)

spawn(function()    
    while wait() do
        if _G.NextIsland then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                if v.Name == "NotificationTemplate" then
                    if string.find(v.Text,"#1") then
                        Notify("Ez Island 1", 5)
                        wait(5)
                    elseif string.find(v.Text,"#2") then
                        Notify("Ez Island 2", 5)
                        wait(5)
                    elseif string.find(v.Text,"#3") then
                        Notify("Ez Island 3", 5)
                        wait(5)
                    elseif string.find(v.Text,"#4") then
                        Notify("Ez Island 4", 5)
                        wait(5)
                    elseif string.find(v.Text,"#5") then
                        Notify("Ez Island 5", 5)
                        wait(5)
                    end
                end
            end
        end
    end
end)

Section20.CreateToggle({Title = 'Auto Awakening', Default = false}, function(Value)
    _G.Wakening = (Value)
end)

local PosWakeningRoomsea2 = CFrame.new(243.465836, 1.36005056, 1810.29993)
local PosWakeningRoomsea3 = CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062)
spawn(function()
    while wait() do
        if _G.Wakening then
            if taodangosea2 then
                if (PosWakeningRoomsea2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    wait(0.95)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            elseif taodangosea3 then
                if (PosWakeningRoomsea3.Position - Mainchinh.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    wait(0.95)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end
    end
end)

local Section21 = Page6.CreateSection("Raid Misc")

Section21.CreateToggle({Title = 'Auto Buy Chip Law', Default = false}, function(Value)
    _G.Auto_Buy_Law_Chip = (Value)
end)

Section21.CreateToggle({Title = 'Auto Buy Chip Law + Kill', Default = false}, function(Value)
    _G.Auto_Start_Law_Dungeon = (Value)
    _G.Auto_Kill_Law = (Value)
end)

spawn(function()
    while wait() do
        if _G.Auto_Buy_Law_Chip then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order") or game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                else
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "Microchip",
                        [3] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Start_Law_Dungeon then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Kill_Law then
            pcall(function()
                if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if _G.Auto_Kill_Law and v.Name == "Order" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
                        end
                    end
                end 
            end)
        end
    end
end)

local Section22 = Page7.CreateSection(" Stats ")

Section22.CreateDropdown({Title = "Select Points ", List = {"Melee", "Defense", "Sword", "Gun", "Devil Fruit"}, Search = false, Selected = false}, function(Value)
    _G.Stats = (Value)
end)
spawn(function()
    while wait() do
        if game.Players.localPlayer.Data.Points.Value >= 1 then
            if _G.Stats == "Melee" then
                local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        elseif _G.Stats == "Defense" then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif _G.Stats == "Sword" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif _G.Stats == "Gun" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif _G.Stats == "Devil Fruit" then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Blox Fruit",
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

Section22.CreateToggle({Title = "Auto Stats Kaitan", Default = false}, function(Value)
    _G.Auto_Stats_Kai = (Value)
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Kai then
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 2550
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Kai then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 2550
            }       
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

local Section23 = Page7.CreateSection("Players")

Section23.CreateToggle({Title = "Dash No CD", Default = false}, function(Value)
    _G.DashNoCd = (Value)
end)
function DodgeNoCoolDown()
    if DodgeNoCoolDown then
        for i,v in next, getgc() do
            if game.Players.LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not DodgeNoCoolDown
                        end
                    end
                end
            end
        end
    end
end

Section23.CreateToggle({Title = "Walk Water", Default = true}, function(Value)
    _G.WalkWater = (Value)
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
            end
        end)
    end
end)

Section23.CreateSlider({Title = "Player Speed", Min = 1, Max = 100, Default = 25 }, function(value)
    game.Players.LocalPlayer.Character:SetAttribute("SpeedMultiplier",Value)
end)

Section23.CreateSlider({Title = "Jump Power", Min = 40, Max = 100, Default = 50 }, function(value)
    game.Players.LocalPlayer.Character:SetAttribute("JumpPower",Value)
end)

local Section24 = Page6.CreateSection("Material")

if First_Sea then
    MaterialList = {
      "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"
    } elseif Second_Sea then
    MaterialList = {
      "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"
    } elseif Third_Sea then
    MaterialList = {
      "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"
    }
    end
    Section24.CreateDropdown({Title = "Select Material TO Farm", List = MaterialList, Search = false, Selected = false}, function(Value)
        SelectMaterial = (Value)
    end)
    
    Section24.CreateToggle({Title = "Auto Farm Material selected", Default = false}, function(Value)
        _G.AutoMaterial = (Value)
    end)

    spawn(function()
        while task.wait() do
        if _G.AutoMaterial then
        pcall(function()
          MaterialMon(SelectMaterial)
       
          if BypassTP then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude > 3500 then
            BTP(MPos)
            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude < 3500 then
            Tween(MPos)
            end
            else
              Tween(MPos)
            end
          if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
          if v.Name == MMon then
            repeat wait(_G.Fast_Delay)
            AttackNoCD()
          AutoHaki()
          bringmob = true
          EquipTool(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency = 1
          v.Humanoid.JumpPower = 0
          v.Humanoid.WalkSpeed = 0
          v.HumanoidRootPart.CanCollide = false
          FarmPos = v.HumanoidRootPart.CFrame
          MonFarm = v.Name
          --Click
          until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
          bringmob = false
        end
          end
          end
          else
            for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name, Mon) then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
          Tween(v.CFrame * CFrame.new(posX,posY,posZ))
  
          end
          end
          end
          end
          end)
        end
        end
      end)

      local Section25 = Page8.CreateSection("Teleporter Sea")

      Section25.CreateButton({Title = " Sea 1"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end)

    Section25.CreateButton({Title = " Sea 2"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)

    Section25.CreateButton({Title = " Sea 3"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)

    local Section26 = Page8.CreateSection("Tween")



    if First_Sea then
        IslandList = {
                       "WindMill",
                       "Marine",
                       "Middle Town",
                       "Jungle",
                       "Pirate Village",
                       "Desert",
                       "Snow Island",
                       "MarineFord",
                       "Colosseum",
                       "Sky Island 1",
                       "Sky Island 2",
                       "Sky Island 3",
                       "Prison",
                       "Magma Village",
                       "Under Water Island",
                       "Fountain City",
                       "Shank Room",
                       "Mob Island",
       }
       
       elseif Second_Sea then
              IslandList = {
               "The Cafe",
               "Frist Spot",
               "Dark Area",
               "Flamingo Mansion",
               "Flamingo Room",
               "Green Zone",
               "Factory",
               "Colossuim",
               "Zombie Island",
               "Two Snow Mountain",
               "Punk Hazard",
               "Cursed Ship",
               "Ice Castle",
               "Forgotten Island",
               "Ussop Island",
               "Mini Sky Island",
              }
       
       elseif Third_Sea then
           IslandList = {
               "Mansion",
               "Port Town",
               "Great Tree",
               "Castle On The Sea",
               "MiniSky", 
               "Hydra Island",
               "Floating Turtle",
               "Haunted Castle",
               "Ice Cream Island",
               "Peanut Island",
               "Cake Island",
               "Cocoa Island",
               "Candy Island",
               "Tiki Outpost",
              }
           end

           Section26.CreateDropdown({Title = "Select Islands", List = IslandList, Search = false, Selected = false}, function(Value)
            _G.SelectIsland = Value
        end)

Section26.CreateToggle({Title = "Đảo", Default = false}, function(Value)
        _G.TeleportIsland = (Value)
        if _G.TeleportIsland == true then
            repeat wait()
                if _G.SelectIsland == "WindMill" then
                    toTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    toTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    toTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    toTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    toTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    toTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    toTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    toTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    toTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    toTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    toTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    toTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    toTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    toTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    toTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    toTarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    toTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    toTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    BTPZ(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    toTarget(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    toTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    toTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    toTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    toTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    toTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    toTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    toTarget(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    toTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    toTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    toTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    toTarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    toTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    BTPZ(CFrame.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                elseif _G.SelectIsland == "MiniSky" then
                    toTarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    toTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    BTPZ(CFrame.new(5753.5478515625, 610.7880859375, -282.33172607421875))
                elseif _G.SelectIsland == "Floating Turtle" then
                    toTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    BTPZ(CFrame.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
                elseif _G.SelectIsland == "Haunted Castle" then
                    toTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    toTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    toTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    toTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Cocoa Island" then
                    toTarget(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif _G.SelectIsland == "Candy Island" then
                    toTarget(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    toTarget(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
                end
            until not _G.TeleportIsland
        end
    end)


    local Section27 = Page9.CreateSection("Sw")

    Section27.CreateToggle({Title = "Buy All Sword ", Default = false}, function(Value)
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end)

    spawn(function()
        while wait() do
            if _G.BuyAllSword then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
                end)
            end 
        end
    end)

    local Section28 = Page9.CreateSection("Abilities")

    Section28.CreateToggle({Title = "Auto Buy All Abilities", Default = false}, function(Value)
        _G.BuyAllAib = (Value)
    end)
    spawn(function()
        while wait() do
            if _G.BuyAllAib then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
                end)
            end 
        end
    end)

    local Section29 = Page9.CreateSection("Gun")

    Section29.CreateToggle({Title = "Buy All Gun", Default = false}, function(Value)
        _G.BuyAllGun = (Value)
    end)

    spawn(function()
        while wait() do
            if _G.BuyAllGun then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Refined Flintlock"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
                    local A_1 = "Ectoplasm"
                                    local A_2 = "Buy"
                                    local A_3 = 1
                                    local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                    Event:InvokeServer(A_1, A_2, A_3) 
                                end)
                            end 
                        end
                    end)

                    local Section30 = Page9.CreateSection("martial arts")

                    Section30.CreateButton({Title = "Buy Black Leg [ $150,000 ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end)

                    Section30.CreateButton({Title = "Buy Electro [ $500,000 ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end)

                    Section30.CreateButton({Title = "Buy Fishman Karate [ $750,000 ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end)

                    Section30.CreateButton({Title = "Buy Dragon Claw [ 1,500F ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                    end)

                    Section30.CreateButton({Title = "Buy Superhuman [ $3,000,000 ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end)

                    Section30.CreateButton({Title = "Buy Death Step [ $2,500,000 5,000F ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    end)

                    Section30.CreateButton({Title = "Buy Sharkman Karate [ $2,500,000 5,000F ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    end)

                    Section30.CreateButton({Title = "Buy Electric Claw [ $3,000,000 5,000F ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                    end)

                    Section30.CreateButton({Title = "Buy Dragon Talon [ $3,000,000 5,000F ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    end)

                    Section30.CreateButton({Title = "Buy God Human [ $5,000,000 5,000F ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                    end)

                    Section30.CreateButton({Title = "Buy Sanguine Art [ $5,000,000 5,000F ]"}, function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
                    end)

                    local Section31 = Page9.CreateSection("Acc")

                    Section31.CreateToggle({Title = "Auto Buy All", Default = false}, function(Value)
                        _G.BuyAllAcc = (Value)
                    end)
                    spawn(function()
                        while wait() do
                            if _G.BuyAllAcc then
                                pcall(function()
                                    local args = {
                                        [1] = "BuyItem",
                                        [2] = "Black Cape"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    local args = {
                                        [1] = "BuyItem",
                                        [2] = "Swordsman Hat"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    local args = {
                                        [1] = "BuyItem",
                                        [2] = "Tomoe Ring"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    local args = {
                                        [1] = "BuyItem",
                                        [2] = "Tomoe Ring"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end)
                            end 
                        end
                    end)

                    local Section32 = Page10.CreateSection("Tween")

                    Section32.CreateButton({Title = "Tween Top On Great Tree"}, function()
                        TweenTopOnGreatTree()
                    end)
                    
                    local ConNPCTemplete = CFrame.new(28612.7148, 14896.4893, 103.860237)
function TweenTopOnGreatTree()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586))
    Tween(ConNPCTemplete)
    wait(0.5)
    if (ConNPCTemplete.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "TeleportBack")
    end
end

Section32.CreateButton({Title = "Teleporter to the temple of time"}, function()
    Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
end)

Section32.CreateButton({Title = "Pull Level "}, function()
    Tween(CFrame.new(28576.4688,14939.2832,76.5164413))
end)

Section32.CreateButton({Title = "Acient One"}, function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
end)

Section32.CreateButton({Title = "Teleporter To Race You"}, function()
    Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
        wait(0.1)
           Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
           wait(0.1)
              Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
              wait(0.1)
                 Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
            wait(0.5)
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                    end
end)

Section32.CreateToggle({Title = "Auto Mysticl Islands", Default = false}, function(Value)
    _G.AutoMysticIsland = (Value)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoMysticIsland then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    ATween(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                end
            end
        end
    end)
end)

Section32.CreateToggle({Title = "Find Mystic Islands", Default = false}, function(Value)
    _G.dao = (Value)
end)
if state then
    _G.dao = true
else
    _G.dao = false
end
if _G.dao then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5411.22021, 778.609863, -2682.27759, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
    wait(0)
    local args = {
        [1] = "BuyBoat",
        [2] = "PirateBrigade"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    function two(gotoCFrame) --- Tween
          pcall(function()
              game.Players.LocalPlayer.Character.Humanoid.Sit = false
              game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
          end)
          if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
              pcall(function() 
                  tweenz:Cancel()
              end)
              game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
          else
              local tween_s = game:service"TweenService"
              local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/325, Enum.EasingStyle.Linear)
               tween, err = pcall(function()
                  tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
                  tweenz:Play()
              end)
              if not tween then return err end
          end
          function _TweenCanCle()
              tweenz:Cancel()
          end
      
    end
    two(CFrame.new(-5100.7085, 29.968586, -6792.45459, -0.33648631, -0.0396691673, 0.940852463, -6.40461678e-07, 0.999112308, 0.0421253517, -0.941688359, 0.0141740013, -0.336187631))
    wait(13)
    for _,v in next, workspace.Boats.PirateBrigade:GetDescendants() do
        if v.Name:find("VehicleSeat") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                ATween(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0,500,-100))
            end
        end
    end
end

Section32.CreateToggle({Title = "Teleporter Advanced Fruit Dealer ", Default = false}, function(Value)
    _G.Miragenpc = (Value)
end)
spawn(function()
    pcall(function()
    while wait() do
        if _G.Miragenpc then
            if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                ATween(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position))
                end
            end
        end
    end)
end)

Section32.CreateToggle({Title = "Lock Moon", Default = false}, function(Value)
    _G.AutoDooHee = (Value)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoDooHee then
                wait(0.5)
                local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
            end
        end)
    end
end)

Section32.CreateToggle({Title = "Tween To Gear", Default = false}, function(Value)
    _G.TweenMGear = (Value)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMGear then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
                        if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                ATween(v.CFrame)
                            end
                        end
                    end
                end
            end
        end
    end)
end)

Section32.CreateToggle({Title = "Turn On Race V3", Default = false}, function(Value)
    _G.AutoT = (Value)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoT then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end)
    end
    end)

    Section32.CreateToggle({Title = "Turn On V4", Default = false}, function(Value)
        _G.AutoY = (Value)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoY then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
                end
            end)
        end
        end)


local Section33 = Page10.CreateSection("Update Race")

Section33.CreateToggle({Title = "Auto Evo Raid V1 -> V2", Default = false}, function(Value)
    _G.AutoEvoRace = (Value)
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoEvoRace then
                local Back = game.Players.LocalPlayer.Backpack
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                if Back:FindFirstChild("Flower 2") then
                    if Back:FindFirstChild("Flower 1") then
                        Tween(CFrame.new(-5497.06152, 47.5923004, -795.237061))
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Zombie" then
                                repeat task.wait()
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))		
                                until Back:FindFirstChild("Flower 3")
                            end
                        end
                    else
                        Tween(game.Workspace["Flower1"].CFrame)
                    end
                else
                    Tween(game.Workspace["Flower2"].CFrame)
                end
                if Back:FindFirstChild("Flower 1") and Back:FindFirstChild("Flower 2") and Back:FindFirstChild("Flower 3") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                end
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Flower1" or v.Name == "Flower2" then
                        v.Size = Vector3.new(20,20,20)
                    end
                end
            end
        end)
    end
end)

Section33.CreateToggle({Title = "Auto Quest Race", Default = false}, function(Value)
    _G.AutoQuestRace = (Value)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
                if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat wait(.1)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                        if v.Name ==  "snowisland_Cylinder.081" then
                            Tween(v.CFrame* CFrame.new(0,0,0))
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                        if v.Name ==  "HumanoidRootPart" then
                            Tween(v.CFrame* CFrame.new(posX,posY,posZ))
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                    
                            wait(0.5)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(0.5)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat wait(.1)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.Name == "StartPoint" then
                            Tween(v.CFrame* CFrame.new(0,10,0))
                          end
                       end
                end
            end
        end
    end)
    end)
function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

Section33.CreateToggle({Title = "Kill Players In Trial", Default = false}, function(Value)
    _G.KillAfterTrials = (Value)
end)

spawn(function()
    while wait() do 
        pcall(function()
            if _G.KillAfterTrials then
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                        if v.Humanoid.Health > 0 then
                            repeat wait(_G.Fast_Delay)
                                AttackNoCD()
                                AutoHaki()
                                EquipTool(SelectWeapon)
                                NameTarget = v.Name
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                Click()
                            until not _G.KillAfterTrials or not v.Parent or v.Humanoid.Health <= 0 
                        end
                    end
                end
            end
        end)
    end
    end)

    Section33.CreateToggle({Title = "Update Gear ", Default = false}, function(Value)
        AutoFarmAcient = (Value)
    end)
    
    local AcientCframe = CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if AutoFarmAcient then
                        if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                            AutoFarmAcient = false
                            toTarget(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        while wait() do
            if AutoFarmAcient then
                pcall(
                    function()
                        if
                            game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel")
                         then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or
                                        v.Name == "Sweet Thief" or
                                        v.Name == "Candy Rebel"
                                 then
                                    if
                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        bringmob = true
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCD()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        until not AutoFarmAcient or not v.Parent or v.Humanoid.Health <= 0
                                        bringmob = false
                                    end
                                end
                            end
                        else
                            toTarget(AcientCframe)
                        end
                    end
                )
            end
        end
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if AutoFarmAcient then
                        if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                            AutoFarmAcient = true
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if AutoFarmAcient then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                    end
                end
            )
        end
    end
)

local Section34 = Page11.CreateSection("Sea Event")

Section34.CreateButton({Title = 'Telepoter Buy Boat (Tiki)'}, function()
    Tween(CFrame.new(-16921.853515625, 9.0863618850708, 433.9601135253906))
    wait(0.5)
    if (CFrame.new(-16921.853515625, 9.0863618850708, 433.9601135253906).Position - MainChinh.Character.HumanoidRootPart.Position).Magnitude <= 10 then   
        local args = {
            [1] = "BuyBoat",
            [2] = "PirateGrandBrigade"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end)

Section34.CreateSlider({Title = "Speed Boat", Min = 250, Max = 350, Default = 275, Precise = false}, function(Value)
    getgenv().SpeedBoats = Value
end)

Section34.CreateToggle({Title = 'Turn Speed Boat when on', Default = false}, function(Value)
    getgenv().DjtBoats = Value
end)

spawn(function()
    while wait() do
        if getgenv().DjtBoats then
            for i, v in pairs(workspace.Boats:GetChildren()) do
                if v:FindFirstChild("Owner") then
                    if v:FindFirstChild("Owner").Value == game.Players.LocalPlayer then
                        table.foreach(v:GetDescendants(), function(a, child)
                            if child:IsA("BasePart") or child:IsA("MeshPart") or child:IsA("Part") then
                            child.CanCollide = false
                            end
                        end)
                        v:FindFirstChild("Humanoid"):GetPropertyChangedSignal("Value"):Connect(function(g)
                            if g == 0 then
                            print("Vailon")
                        end
                    end)
                    repeat wait()
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v:FindFirstChild("VehicleSeat").CFrame * CFrame.new(0, 3, 0))
                        until game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit == true
                        v:FindFirstChild("VehicleSeat").MaxSpeed = getgenv().SpeedBoats
                    end
                end
            end
        end
    end
end)

Section34.CreateToggle({Title = 'Telepoter To You Boat', Default = false}, function(Value)
    _G.chanvaidai = Value
end)

spawn(function()
    while wait() do
        if MainChinh.Character.Humanoid.Sit == false then
            Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
        end
    end
end)

Section34.CreateDropdown({Title = 'Slect Zone ', List = {"Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6"}, Default = "0.15", Search = false, Selected = false}, function(Value)
    _G.SelectZone = Value
end)

Section34.CreateToggle({Title = 'auto buy boat and Tele Sea', Desc = 'Function sign event enabled (Sign 3 only)', Default = false}, function(Value)
    getgenv().StartSeaEvent = Value
end)

spawn(function()
    while wait() do
        if getgenv().StartSeaEvent then
            pcall(function()
                if not game:GetService("Workspace").Enemies:FindFirstChild("Shark") or not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    if not game:GetService("Workspace").Boat:FindFirstChild("PirateGrandBrigade") then
                        Tween(CFrame.new(-16921.853515625, 9.0863618850708, 433.9601135253906))
                        wait(0.5)
                        if (CFrame.new(-16921.853515625, 9.0863618850708, 433.9601135253906).Position - MainChinh.Character.HumanoidRootPart.Position).Magnitude <= 10 then   
                            local args = {
                                [1] = "BuyBoat",
                                [2] = "PirateGrandBrigade"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false then
                            Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 3, 0))
                        else
                            if game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                repeat wait()
                                    if (CFrame.new(-17013.80078125, 10.962434768676758, 438.0169982910156).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        TweenShip(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                    elseif (CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        TweenShip(CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375))
                                    elseif (CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        TweenShip(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                    end 
                                until game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or getgenv().StartSeaEvent == false
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if getgenv().StartSeaEvent then
                if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    MainChinh.Character.Humanoid.Sit = false
                end
            end
        end
    end)
end)

Section34.CreateToggle({Title = "Auto Kill Terror Shark", Default = false}, function(Value)
   _G.bjirTerrorshark = (Value)
end)
spawn(function()
   while wait() do
       if _G.bjirTerrorshark and Third_Sea then
           pcall(function()
               if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                       if v.Name == "Terrorshark" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                               repeat task.wait(_G.Fast_Delay)
                                   AutoHaki()
                                   EquipTool(SelectWeapon)
                                   v.HumanoidRootPart.CanCollide = false
                                   v.Humanoid.WalkSpeed = 0
                                   v.Head.CanCollide = false 
                                   MakoriGayMag = false
                                   PosGay = v.HumanoidRootPart.CFrame
                                   HyperCahaya(v.HumanoidRootPart.CFrame * CFrame.new(2,63,2))
                                   game:GetService("VirtualUser"):CaptureController()
                                   game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                               until not _G.bjirTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                               MakoriGayMag = false
                           end
                       end
                   end
               else
                   if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                       HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2,60,2))
                   else
                       if _G.StardHop then
                           Hop()
                       end
                   end
               end
           end)
       end
   end
end)

Section34.CreateToggle({Title = "Auto Kill Shark", Default = false}, function(Value)
   _G.bjirTerrorshark = (Value)
end)
spawn(function()
   while wait() do
       if _G.bjirShark and Third_Sea then
           pcall(function()
               if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                       if v.Name == "Shark" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                               repeat task.wait(_G.Fast_Delay)
                                   AutoHaki()
                                   EquipTool(SelectWeapon)
                                   v.HumanoidRootPart.CanCollide = false
                                   v.Humanoid.WalkSpeed = 0
                                   v.Head.CanCollide = false 
                                   MakoriGayMag = false
                                   PosGay = v.HumanoidRootPart.CFrame
                                   HyperCahaya(v.HumanoidRootPart.CFrame * CFrame.new(2,60,2))
                                   game:GetService("VirtualUser"):CaptureController()
                                   game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                               until not _G.bjirShark or not v.Parent or v.Humanoid.Health <= 0
                               MakoriGayMag = false
                           end
                       end
                   end
               else
                   if game:GetService("ReplicatedStorage"):FindFirstChild("Shark") then
                       HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Shark").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                   else
                       if _G.StardHop then
                           Hop()
                       end
                   end
               end
           end)
       end
   end
end)

Section34.CreateToggle({Title = "Auto Kill Piranha", Default = false}, function(Value)
   _G.bjirPiranha = (Value)
end)
spawn(function()
   while wait() do
       if _G.bjirPiranha and Third_Sea then
           pcall(function()
               if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                       if v.Name == "Piranha" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                               repeat task.wait(_G.Fast_Delay)
                                   AutoHaki()
                                   EquipTool(SelectWeapon)
                                   v.HumanoidRootPart.CanCollide = false
                                   v.Humanoid.WalkSpeed = 0
                                   v.Head.CanCollide = false 
                                   MakoriGayMag = false
                                   PosGay = v.HumanoidRootPart.CFrame
                                   HyperCahaya(v.HumanoidRootPart.CFrame * CFrame.new(2,60,2))
                                   game:GetService("VirtualUser"):CaptureController()
                                   game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                               until not _G.bjirPiranha or not v.Parent or v.Humanoid.Health <= 0
                               MakoriGayMag = false
                           end
                       end
                   end
               else
                   if game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
                       HyperCahaya(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                   else
                       if _G.StardHop then
                           Hop()
                       end
                   end
               end
           end)
       end
   end
end)

Section34.CreateToggle({Title = "Auto Kill Fish Ship", Default = false}, function(Value)
   _G.bjirFishBoat = (Value)
end)
function CheckPirateBoat()
   local checkmmpb = {"FishBoat"}
   for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
       if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
           return v
       end
   end
end
spawn(function()
while wait() do
pcall(function()
   if _G.bjirFishBoat then
       if CheckPirateBoat() then
           game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
           wait(0.5)
           game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
           local v = CheckPirateBoat()
           repeat
               wait()
               spawn(HyperCahaya(v.Engine.CFrame * CFrame.new(0, -20, 0), 1))
               matquyenkiemsoat = true
               getgenv().noclip = true
               bjirFullPower = true
               getgenv().psskill = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
           until v.Parent or v.Health.Value <= 0 or not CheckPirateBoat()
           getgenv().psskill = nil
           bjirFullPower = false
           matquyenkiemsoat = false
           getgenv().noclip = false
       end
   end
end)
end
end)

spawn(function()
while wait() do
   if _G.bjirFishBoat then
          pcall(function()
         if CheckPirateBoat() then
             AutoHaki()
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
               if v:IsA("Tool") then
                  if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                  end
               end
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
               if v:IsA("Tool") then
                  if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                  end
               end
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
              game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                   game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(0.6)
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
               if v:IsA("Tool") then
                  if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                  end
               end
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(0.5)
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
               if v:IsA("Tool") then
                  if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                  end
               end
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            wait(.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
         end
           end)
       end
end
 end)

 Section34.CreateToggle({Title = "Kill Ghost Ship", Default = false}, function(Value)
   _G.KillGhostShip = (Value)
end)
function CheckPirateBoat()
   local checkmmpb = {"PirateGrandBrigade", "PirateBrigade"}
   for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
       if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
           return v
       end
   end
end
spawn(function()
while wait() do
if _G.KillGhostShip then
   pcall(function()
       if CheckPirateBoat() then
           game:GetService("VirtualInputManager"):SendKeyEvent(true,32,false,game)
           wait(.5)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,32,false,game)
           local v = CheckPirateBoat()
           repeat
               wait()
               spawn(HyperCahaya(v.Engine.CFrame * CFrame.new(0, -20, 0)), 1)
               matquyenkiemsoat = true
               getgenv().noclip = true
               getgenv().psskill = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
           until not v or not v.Parent or v.Health.Value <= 0 or not CheckPirateBoat()
           getgenv().psskill = nil
           matquyenkiemsoat = false
           getgenv().noclip = false
       end
   end)
end
end
end)

Section34.CreateToggle({Title = "Kill Sea Beats", Default = false}, function(Value)
   _G.AutoSeaBest = (Value)
end)
spawn(function()
   while wait() do
       if _G.AutoSeaBest then
              pcall(function()                   
          for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
             if v:FindFirstChild("HumanoidRootPart") then
                 AutoHaki()
                HyperCahaya(v.HumanoidRootPart.CFrame * CFrame.new(1,450,45))
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                   if v:IsA("Tool") then
                      if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                         game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                      end
                   end
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                   if v:IsA("Tool") then
                      if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                         game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                      end
                   end
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                  game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                       game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(0.6)
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                   if v:IsA("Tool") then
                      if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                         game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                      end
                   end
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(0.5)
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                   if v:IsA("Tool") then
                      if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                         game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                      end
                   end
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.2)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
             end
          end
               end)
           end
   end
     end)

        local Section35 = Page11.CreateSection(" leviathan")

        Section35.CreateToggle({Title = "Auto Frozen Islands", Default = false}, function(Value)
            _G.AutoFrozenDimension = (Value)
        end)
        spawn(function()
            while wait() do
                if _G.AutoFrozenDimension then
                    pcall(function()
                        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                            topos(game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension').HumanoidRootPart.CFrame * CFrame.new(0,500,-100))
                        end
                    end)
                end
            end
        end)

        local Section36 = Page11.CreateSection("Kitsune")
        
        Section36.CreateToggle({Title = "Auto Teleporter to kitsune island", Default = false}, function(Value)
            _G.tpkit = (Value)
        end)
        
        spawn(function()
            local kitsuneIsland
            while not kitsuneIsland do
                kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
                wait(1)
            end
            while wait() do
                if _G.tpkit then
                    local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
        
                    if shrineActive then
                        for _, v in pairs(shrineActive:GetDescendants()) do
                            if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                                topos(v.CFrame)
                            end
                        end
                    end
                end
            end
        end)

        Section36.CreateToggle({Title = "Collect Azure", Default = false}, function(Value)
            _G.CollectAzure = (Value)
        end)
        spawn(function()
            while wait() do
                if _G.CollectAzure then
                    pcall(function()
                        if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                            fastpos(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                        end
                    end)
                end
            end
        end)

        Section36.CreateSlider({Title = "Set Value", Min = 10, Max = 25, Default = 15 }, function(value)
            _G.SetToTradeAureEmber = (value)
        end)

        Section36.CreateToggle({Title = "auto change selected soul [on if you choose the numbers above]", Default = false}, function(Value)
            _G.TradeAureEmber = (Value)
        end)
        function GetCountMaterials(MaterialName)
            local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
            for i, v in pairs(Inventory) do
                if v.Name == MaterialName then
                    return v["Count"]
                end
            end
        end

        spawn(function()
            while wait() do
                if _G.TradeAureEmber then
                    pcall(function()
                        local AzureAvilable = GetCountMaterials("Azure Ember")
                        if AzureAvilable >= _G.SetToTradeAureEmber then
                            game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KitsuneStatuePray")
                        end
                    end)
                end
            end
        end)

        local Section37 = Page12.CreateSection("Misc")

        Section37.CreateButton({Title = "Join Pirates Team"}, function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
        end)

        Section37.CreateButton({Title = "Join Mari Team"}, function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
        end)

        Section37.CreateButton({Title = "check Fruit Stock"}, function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
        end)

        Section37.CreateButton({Title = "Open All Skill When Awakeing"}, function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
        end)

        Section37.CreateButton({Title = "Open Have Haki"}, function()
            game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
        end)

        Section37.CreateButton({Title = "Open Titles "}, function()
            local args = {
                [1] = "getTitles"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
        end)

        Section37.CreateButton({Title = "Show item "}, function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/palacetamon098/fakelvl/main/showitems.lua"))()
        end)

        Section37.CreateButton({Title = "Remove "}, function()
            game:GetService("Lighting").LightingLayers:Destroy()
	    game:GetService("Lighting").Sky:Destroy()
        end)
