AddCSLuaFile()
TOOL.Category = "Construction"
TOOL.Name = "KB Permaprops"
TOOL.Author = "Kobralost"

KBPermaProps = KBPermaProps or {}

--[[ If you use mysql you have to enable this variable, configure mysql informations on the file lua/autorun/server/kb_permaprops_database.lua and restart your server ]]
KBPermaProps.Mysql = false

--[[ Ranks access to the tool ]]
KBPermaProps.RanksAccess = {
	["superadmin"] = true,
	["admin"] = true,
}

--[[ Language of the addon ]]
KBPermaProps.SelectedLanguage = "en"

--[[ All constants of the addon ]]
KBPermaProps.Constants = {
	["green"] = Color(46, 204, 113),
	["white"] = Color(240, 240, 240),
	["white5"] = Color(248, 247, 252, 5),
	["black"] = Color(0, 0, 0, 255),
	["grey"] = Color(150, 150, 150),
	["grey30"] = Color(150, 150, 150, 30),
	["red"] = Color(238, 82, 83),
	["toolgun"] = Material("kb_tools/permaprops_background.png", "$ignorez"),
	["background"] = Material("kb_tools/toolBackground.png", "smooth"),
}

-- [[ Language system ]] --
KBPermaProps.Language = {
	["en"] = {
		["toolName"] = "KB Permaprops",
		["toolDesc"] = "Save props permanently on your map",
		["singlePlayer"] = "You are on singleplayer KBPermaProps is disable and cannot work please lunch a peer to peer server",
		["toolLeft"] = "Left-click to save/update the entity that you are looking at",
		["toolRight"] = "Right-click to remove the permaprops that you are looking at",
		["toolReload"] = "Reload to reload all permament props",
		["succesfulyReload"] = "Successfully reloaded all saved entities",
		["succesfulyRemoved"] = "Successfully removed the entity with the id #%s",
		["succesfulyRemovedLog"] = "[KBPermaProps] Successfully removed the entity with the id #%s",
		["succesfulySaved"] = "Successfully saved the entity with the id #%s",
		["succesfulySavedLog"] = "[KBPermaProps] Successfully saved the entity with the id #%s",
		["succesfulyUpdated"] = "Successfully updated the entity with the id #%s",
		["succesfulyUpdatedLog"] = "[KBPermaProps] Successfully updated the entity with the id #%s",
		["permaPropsId"] = "KB PermaProps - ID #%s",
		["noEntitiesSaved"] = "No entities saved",
		["noEntitiesSavedDesc"] = "You don't have any entities saved on your map",
		["transferedPermaProps"] = "[KBPermaProps] Successfully transfered all permaprops to the KBPermaProps system",
		["peerToPeerNeededLog"] = "[KBPermaProps] - You are on singleplayer KBPermaProps is disable and cannot work please lunch a peer to peer server",
	},
	["tr"] = {
		["toolName"] = "KB Permaprops",
		["toolDesc"] = "Nesneleri haritanıza kalıcı olarak kaydedin",
		["singlePlayer"] = "Tek oyunculuda 'KBPermaProps' kullanıyorsunuz. Lütfen eklentinin çalışması için bir eşler arası sunucu başlatın",
		["toolLeft"] = "Baktığınız varlığı kaydetmek/güncellemek için sol tıklayın",
		["toolRight"] = "Baktığınız kalıcı nesneleri kaldırmak için sağ tıklayın",
		["toolReload"] = "Tüm kalıcı nesneleri yeniden yüklemek için yeniden yükleyin",
		["succesfulyReload"] = "Kaydedilen tüm varlıklar başarıyla yeniden yüklendi",
		["succesfulyRemoved"] = "Kimliği #%s olan varlık başarıyla kaldırıldı",
		["succesfulyRemovedLog"] = "[KBPermaProps] #%s kimlikli varlık başarıyla kaldırıldı",
		["succesfulySaved"] = "#%s kimlikli varlık başarıyla kaydedildi",
		["succesfulySavedLog"] = "[KBPermaProps] #%s kimlikli varlık başarıyla kaydedildi",
		["succesfulyUpdated"] = "#%s kimlikli varlık başarıyla güncellendi",
		["succesfulyUpdatedLog"] = "[KBPermaProps] #%s kimlikli varlık başarıyla güncellendi",
		["permaPropsId"] = "KB PermaProps - ID #%s",
		["noEntitiesSaved"] = "Hiçbir varlık kaydedilmedi",
		["noEntitiesSavedDesc"] = "Haritanızda kayıtlı herhangi bir varlığınız yok",
		["transferedPermaProps"] = "[KBPermaProps] Tüm kalıcı nesneler KBPermaProps sistemine başarıyla aktarıldı",
		["peerToPeerNeededLog"] = "[KBPermaProps] Tek oyunculuda 'KBPermaProps' kullanıyorsunuz. Lütfen eklentinin çalışması için bir eşler arası sunucu başlatın",
	},
	["fr"] = {
		["toolName"] = "KB Permaprops",
		["toolDesc"] = "Sauvegarder vos props de manière permanente sur votre map",
		["singlePlayer"] = "Vous êtes en solo KBPermaProps est désactivé et ne peut pas fonctionner veuillez lancer un serveur en peer to peer",
		["toolLeft"] = "Clique gauche pour sauvegarder/mettre à jour l'entité que vous regardez",
		["toolRight"] = "Clique droit pour supprimer le permaprops que vous regardez",
		["toolReload"] = "Recharger pour faire réaparaitre tous les permaprops",
		["succesfulyReload"] = "Rechargement de toutes les entités sauvegardées sur la map",
		["succesfulyRemoved"] = "Suppression de l'entité avec l'id #%s",
		["succesfulyRemovedLog"] = "[KBPermaProps] Suppression de l'entité avec l'id #%s",
		["succesfulySaved"] = "Sauvegarde de l'entité avec l'id #%s",
		["succesfulySavedLog"] = "[KBPermaProps] Sauvegarde de l'entité avec l'id #%s",
		["succesfulyUpdated"] = "Mise à jour de l'entité avec l'id #%s",
		["succesfulyUpdatedLog"] = "[KBPermaProps] Mise à jour de l'entité avec l'id #%s",
		["permaPropsId"] = "KB PermaProps - ID #%s",
		["transferedPermaProps"] = "[KBPermaProps] Transfert de toutes les entités sauvegardées vers le système KBPermaProps",
		["noEntitiesSaved"] = "Aucune entité sauvegardée",
		["noEntitiesSavedDesc"] = "Vous n'avez aucune entité sauvegardée sur votre map",
		["peerToPeerNeededLog"] = "[KBPermaProps] - Vous êtes en solo KBPermaProps est désactivé et ne peut pas fonctionner veuillez lancer un serveur en peer to peer",
	},
}

local function getSentence(key)
	local lang = KBPermaProps.SelectedLanguage

	KBPermaProps.Language = KBPermaProps.Language or {}
	KBPermaProps.Language[lang] = KBPermaProps.Language[lang] or {}

	local langToReturn = KBPermaProps.Language[lang][key] or (KBPermaProps.Language["en"][key] and KBPermaProps.Language["en"][key] or "Bad sentence")

	return langToReturn
end

if game.SinglePlayer() then
	for i=1, 5 do
		print(getSentence("peerToPeerNeededLog"))
	end
end

local function callbackAllPlayersWithToolGun(callback)
	for k, v in pairs(player.GetAll()) do
		if not IsValid(v) then continue end

		local wep = v:GetActiveWeapon()
		if not IsValid(wep) or wep:GetClass() != "gmod_tool" then continue end

		local toolName = v:GetInfo("gmod_toolmode")
		if toolName != "kb_permaprops" then continue end

		callback(v)
	end
end

if CLIENT then
	TOOL.Information = {
		{name = "left"},
		{name = "right"},
		{name = "reload"},
	}

	local function reloadToolInfo()
		local singlePlayer = game.SinglePlayer()
		local singlePlayerText = getSentence("singlePlayer")

		language.Add("tool.kb_permaprops.name", getSentence("toolName"))
		language.Add("tool.kb_permaprops.desc", (singlePlayer and singlePlayerText or getSentence("toolDesc")))
		
		language.Add("tool.kb_permaprops.left", (singlePlayer and singlePlayerText or getSentence("toolLeft")))
		language.Add("tool.kb_permaprops.right", (singlePlayer and singlePlayerText or getSentence("toolRight")))
		language.Add("tool.kb_permaprops.reload", (singlePlayer and singlePlayerText or getSentence("toolReload")))
	end
	reloadToolInfo()

	local function loadFonts()
		surface.CreateFont("KBPermaProps:Font:01", {
			font = "Georama",
			extended = false,
			size = KBPermaProps.ScrH*0.02,
			italic = false,
			weight = 0, 
			blursize = 0,
			scanlines = 0,
			antialias = true,
		})

		surface.CreateFont("KBPermaProps:Font:02", {
			font = "Georama",
			extended = false,
			size = KBPermaProps.ScrH*0.026,
			italic = false,
			weight = 0, 
			blursize = 0,
			scanlines = 0,
			antialias = true,
		})
	end

	local function reloadSavedEnt()
		if not istable(KBPermaProps.PropsToShow) then return end
		if not IsValid(kbPermaPropsScroll) then return end

		kbPermaPropsScroll:Clear()

		local getKeys = table.GetKeys(KBPermaProps.PropsToShow)

		table.sort(getKeys, function(a, b)
			return KBPermaProps.PropsToShow[a].permaPropsId > KBPermaProps.PropsToShow[b].permaPropsId
		end)

		for k, v in ipairs(getKeys) do
			local v = KBPermaProps.PropsToShow[v]
			if not istable(v) then continue end

			local savedEntity = vgui.Create("DPanel", kbPermaPropsScroll)
			savedEntity:Dock(TOP)
			savedEntity:SetSize(0, KBPermaProps.ScrH*0.05)
			savedEntity:DockMargin(KBPermaProps.ScrH*0.005, KBPermaProps.ScrH*0.005, KBPermaProps.ScrH*0.005, KBPermaProps.ScrH*0.005)
			savedEntity.deleteConfirmation = false
			savedEntity.Paint = function(self, w, h)
				draw.RoundedBox(0, 0, 0, w, h, KBPermaProps.Constants["white5"])
			end

			local modelEntity = vgui.Create("DLabel", savedEntity)
			modelEntity:SetPos(KBPermaProps.ScrW*0.005, KBPermaProps.ScrH*0.007)
			modelEntity:SetSize(KBPermaProps.ScrW*0.12, KBPermaProps.ScrH*0.02)
			modelEntity:SetText(v.model)
			modelEntity:SetFont("KBPermaProps:Font:01")
			modelEntity:SetTextColor(KBPermaProps.Constants["white"])

			local modelInfo = vgui.Create("DLabel", savedEntity)
			modelInfo:SetPos(KBPermaProps.ScrW*0.005, KBPermaProps.ScrH*0.025)
			modelInfo:SetSize(KBPermaProps.ScrW*0.15, KBPermaProps.ScrH*0.02)
			modelInfo:SetText(getSentence("permaPropsId"):format(v.permaPropsId))
			modelInfo:SetFont("KBPermaProps:Font:01")
			modelInfo:SetTextColor(KBPermaProps.Constants["white"])

			local lerpColorName = 0
			local posEntity = vgui.Create("DImageButton", savedEntity)
			posEntity:SetPos(KBPermaProps.ScrW*0.12, KBPermaProps.ScrH*0.01)
			posEntity:SetSize(KBPermaProps.ScrH*0.03, KBPermaProps.ScrH*0.03)
			posEntity:SetImage("kb_tools/placeCube.png")
			posEntity:SetColor(KBPermaProps.Constants["white"])
			posEntity.Paint = function(self, w, h)
				lerpColorName = Lerp(FrameTime()*5, lerpColorName, (self:IsHovered() and 255 or 100))
				self:SetColor(ColorAlpha(KBPermaProps.Constants["white"], lerpColorName))
			end
			posEntity.DoClick = function()
				net.Start("KBPermaProps:MainNet")
					net.WriteUInt(1, 4)
					net.WriteUInt(v.permaPropsId, 32)
				net.SendToServer()
			end

			local lerpColorTrash = 0
			local trashEntity = vgui.Create("DImageButton", savedEntity)
			trashEntity:SetPos(KBPermaProps.ScrW*0.14, KBPermaProps.ScrH*0.01)
			trashEntity:SetSize(KBPermaProps.ScrH*0.03, KBPermaProps.ScrH*0.03)
			trashEntity:SetImage("kb_tools/trash.png")
			trashEntity.buttonColor = KBPermaProps.Constants["white"]
			
			trashEntity:SetColor(trashEntity.buttonColor)
			trashEntity.Paint = function(self, w, h)
				lerpColorTrash = Lerp(FrameTime()*5, lerpColorTrash, (self:IsHovered() and 255 or 100))
				self:SetColor(ColorAlpha(trashEntity.buttonColor, lerpColorTrash))
			end
			trashEntity.DoClick = function()
				if not savedEntity.deleteConfirmation then
					trashEntity.buttonColor = KBPermaProps.Constants["red"]
					savedEntity.deleteConfirmation = true

					timer.Simple(1, function()
						if not IsValid(savedEntity) then return end

						if IsValid(trash) then
							trashEntity.buttonColor = KBPermaProps.Constants["white"]
						end

						savedEntity.deleteConfirmation = false
					end)

					return
				else
					net.Start("KBPermaProps:MainNet")
						net.WriteUInt(2, 4)
						net.WriteUInt(v.permaPropsId, 32)
					net.SendToServer()
				end
			end
		end
	end

	local function paintCPanel(CPanel)
		CPanel.Paint = function(self, w, h)
			draw.RoundedBox(4, 0, 0, w, h, KBPermaProps.Constants["black"])
			
			surface.SetDrawColor(KBPermaProps.Constants["white"])
			surface.SetMaterial(KBPermaProps.Constants["background"])
			surface.DrawTexturedRect(0, 0, w*2, h)

			local noEntitiesSaved = false
			if IsValid(kbPermaPropsScroll) then
				local getChildrenScroll = kbPermaPropsScroll:GetChildren()

				if istable(getChildrenScroll) then
					local getChildren = getChildrenScroll[1]:GetChildren()

					if istable(getChildren) then
						if table.Count(getChildren) <= 0 then
							noEntitiesSaved = true
						end
					end
				else
					noEntitiesSaved = true
				end
			end

			if noEntitiesSaved then
				draw.DrawText(getSentence("noEntitiesSaved"), "KBPermaProps:Font:02", w/2, h*0.45, KBPermaProps.Constants["white"], TEXT_ALIGN_CENTER)
				draw.DrawText(getSentence("noEntitiesSavedDesc"), "KBPermaProps:Font:01", w/2, h*0.5, KBPermaProps.Constants["white"], TEXT_ALIGN_CENTER)
			end
		end
		
		local mainPanel = vgui.Create("DPanel")
		mainPanel:SetSize(KBPermaProps.ScrW*0.3, KBPermaProps.ScrH*0.43)
		mainPanel:SetPos(0, 0)
		mainPanel.Paint = function(self, w, h) end

		kbPermaPropsScroll = vgui.Create("DScrollPanel", mainPanel)
		kbPermaPropsScroll:SetSize(mainPanel:GetWide(), KBPermaProps.ScrH*0.4)
		kbPermaPropsScroll:SetPos(0, 0)
		kbPermaPropsScroll.Paint = function(self, w, h) 
			self:SetSize(mainPanel:GetWide(), KBPermaProps.ScrH*0.4)

			draw.RoundedBox(0, 0, 0, w, h, KBPermaProps.Constants["white5"])
		end

		local scrollBar = kbPermaPropsScroll:GetVBar()
		scrollBar:SetWide(KBPermaProps.ScrW*0.003)
		scrollBar.Paint = function(self, w, h)
			draw.RoundedBox(0, 0, 0, w, h, KBPermaProps.Constants["grey30"])
		end
		scrollBar.btnUp.Paint = function(self, w, h)
			draw.RoundedBox(0, 0, 0, w, h, KBPermaProps.Constants["grey30"])
		end
		scrollBar.btnDown.Paint = function(self, w, h)
			draw.RoundedBox(0, 0, 0, w, h, KBPermaProps.Constants["grey30"])
		end
		scrollBar.btnGrip.Paint = function(self, w, h)
			draw.RoundedBox(0, 0, 0, w, h, KBPermaProps.Constants["grey30"])
		end

		reloadSavedEnt()

		CPanel:AddPanel(mainPanel)
	end

	function TOOL.BuildCPanel(CPanel)
		if CLIENT then
			CPanel:AddControl("Header", {
				Text = "#tool.kb_permaprops.name",
				Description = ""
			})

			paintCPanel(CPanel)
		end
	end
	
	function TOOL:DrawToolScreen(w, h)
		surface.SetDrawColor(KBPermaProps.Constants["white"])
		surface.SetMaterial(KBPermaProps.Constants["toolgun"])
		surface.DrawTexturedRect(0, 0, w, h)
	end

	function TOOL:Holster()
		KBPermaProps.PropsToShow = {}

		return true
	end

	cvars.AddChangeCallback("gmod_language", function(convar_name, value_old, value_new)
		reloadToolInfo()
	end)

	hook.Add("HUDPaint", "KBPermaProps:HUDPaint:Initialize", function()
		KBPermaProps.ScrW, KBPermaProps.ScrH = ScrW(), ScrH()
	
		loadFonts()
		hook.Remove("HUDPaint", "KBPermaProps:HUDPaint:Initialize")
	end)

	hook.Add("OnScreenSizeChanged", "KBPermaProps:OnScreenSizeChanged", function()
		KBPermaProps.ScrW, KBPermaProps.ScrH = ScrW(), ScrH()

		loadFonts()
	end)

	hook.Add("HUDPaint", "KBPermaProps:KBPermaProps:PosScreen", function()
		if not KBPermaProps.RanksAccess[LocalPlayer():GetUserGroup()] then return end

		KBPermaProps.PropsToShow = KBPermaProps.PropsToShow or {}

		for k, v in pairs(KBPermaProps.PropsToShow) do
			local ent = Entity(k)
			if not IsValid(ent) then continue end

			local pos = (ent:GetPos() + ent:OBBCenter()):ToScreen()

			draw.DrawText(getSentence("permaPropsId"):format(v.permaPropsId), "KBPermaProps:Font:02", pos.x, pos.y - 30, KBPermaProps.Constants["white"], TEXT_ALIGN_CENTER)
			draw.DrawText("⚫", "KBPermaProps:Font:02", pos.x, pos.y - 10, KBPermaProps.Constants["green"], TEXT_ALIGN_CENTER)
		end
	end)

	net.Receive("KBPermaProps:SendNotification", function()
		local text = net.ReadString()
		local notifyType = net.ReadUInt(4)
		local time = net.ReadUInt(10)

		notification.AddLegacy(text, notifyType, time)
	end)
	
	net.Receive("KBPermaProps:MainNet", function()
		local uInt = net.ReadUInt(4)

		if uInt == 1 then
			KBPermaProps.PropsToShow = {}

			local amount = net.ReadUInt(32)

			for i=1, amount do
				local entIndex = net.ReadUInt(15)
				local permaPropsId = net.ReadUInt(32)
				local model = net.ReadString()

				if entIndex == 0 or permaPropsId == 0 or model == "" then continue end
				
				KBPermaProps.PropsToShow[entIndex] = {
					["permaPropsId"] = permaPropsId,
					["model"] = model,
				}
			end

			reloadSavedEnt()
		elseif uInt == 2 then
			local entIndex = net.ReadUInt(15)
			local permaPropsId = net.ReadUInt(32)
			local model = net.ReadString()

			if entIndex == 0 or permaPropsId == 0 or model == "" then return end

			KBPermaProps.PropsToShow[entIndex] = {
				["permaPropsId"] = permaPropsId,
				["model"] = model,
			}

			reloadSavedEnt()
		elseif uInt == 3 then
			local entIndex = net.ReadUInt(15)

			KBPermaProps.PropsToShow[entIndex] = nil

			reloadSavedEnt()
		end
	end)
else
	util.AddNetworkString("KBPermaProps:SendNotification")
	util.AddNetworkString("KBPermaProps:MainNet")

	-- [[ Mysql database connection system ]] --
	local mysqlDB
	KBPermaProps.MysqlConnected = false

	if KBPermaProps.Mysql then
		local succ, err = pcall(function() require("mysqloo") end)
		if not succ then return print("[KBPermaProps] Error with MYSQLOO") end
		
		if not mysqloo then
			return print("[KBPermaProps] Cannot require mysqloo module :\n"..requireError)
		end

		mysqlDB = mysqloo.connect(KBPermaProps.MysqlInformations["host"], KBPermaProps.MysqlInformations["username"], KBPermaProps.MysqlInformations["password"], KBPermaProps.MysqlInformations["database"], KBPermaProps.MysqlInformations["port"])

		function mysqlDB:onConnected()  
			print("[KBPermaProps] Successfully connected to the mysql database !")
			KBPermaProps.MysqlConnected = true
		end
		
		function mysqlDB:onConnectionFailed(connectionError)
			print("[KBPermaProps] Cannot etablish database connection :\n"..connectionError)
		end
		mysqlDB:connect()
	end

	--[[ SQL Query function ]] --
	function KBPermaProps.Query(query, callback)
		if not isstring(query) then return end

		local result = {}
		local isInsertQuery = string.StartWith(query, "INSERT")
		if KBPermaProps.Mysql then
			query = mysqlDB:query(query)

			if callback == "wait" then
				query:start()
				query:wait()

				local err = query:error()
				if err == "" then
					return isInsertQuery and { lastInsertId = query:lastInsert() } or query:getData()
				else
					print("[KBPermaProps] "..err)
				end
			else
				function query:onError(err, sql)
					print("[KBPermaProps] "..err)
				end

				function query:onSuccess(tbl, data)
					if isfunction(callback) then
						callback(isInsertQuery and { lastInsertId = query:lastInsert() } or tbl)
					end
				end
				query:start()
			end
		else
			result = sql.Query(query)
			result = isInsertQuery and { lastInsertId = sql.Query("SELECT last_insert_rowid()")[1]["last_insert_rowid()"] } or result

			if callback == "wait" then
				return result
				
			elseif isfunction(callback) then
				callback(result)

				return
			end
		end

		return (result or {})
	end

	-- [[ Escape the string ]] --  
	function KBPermaProps.Escape(str)
		return KBPermaProps.MysqlConnected and ("'%s'"):format(mysqlDB:escape(tostring(str))) or SQLStr(str)    
	end

	-- [[ Function to add a compatibility with autoincrement ]]
	function KBPermaProps.AutoIncrement()
		return (KBPermaProps.Mysql and "AUTO_INCREMENT" or "AUTOINCREMENT")
	end

	net.Receive("KBPermaProps:MainNet", function(len, ply)
		if not IsValid(ply) then return end

		ply.KBPermaProps = ply.KBPermaProps or {}

		local curTime = CurTime()

		ply.KBPermaProps["antiSpam"] = ply.KBPermaProps["antiSpam"] or 0
		if ply.KBPermaProps["antiSpam"] > curTime then return end
		ply.KBPermaProps["antiSpam"] = curTime + 0.5

		local uInt = net.ReadUInt(4)

		if uInt == 1 then
			if not KBPermaProps.RanksAccess[ply:GetUserGroup()] then return end
			
			local entId = net.ReadUInt(32)
			
			local ent = KBPermaProps.AllPropsSpawned[entId]
			if not IsValid(ent) then return end
			
			ply:SetPos(ent:GetPos())
		elseif uInt == 2 then
			if not KBPermaProps.RanksAccess[ply:GetUserGroup()] then return end

			local entId = net.ReadUInt(32)
			
			local ent = KBPermaProps.AllPropsSpawned[entId]
			if not IsValid(ent) then return end

			KBPermaProps.RemoveEntSaved(entId, ply)
		end
	end)

	function KBPermaProps.InitDatabaseTable()
		KBPermaProps.Query(([[CREATE TABLE IF NOT EXISTS kb_permaprops (
			id INTEGER PRIMARY KEY %s, 
			class TEXT, 
			model TEXT, 
			pos TEXT, 
			ang TEXT, 
			map TEXT, 
			color TEXT, 
			material TEXT, 
			skin INT, 
			scale INT, 
			bodygroup LONGTEXT, 
			option LONGTEXT)]]
		):format(KBPermaProps.AutoIncrement()))
	end

	local KBPermaPropsMap = game.GetMap():lower()
	local PLAYER = FindMetaTable("Player")

	function PLAYER:KBPermaPropsNotify(text, notifyType, time)
		net.Start("KBPermaProps:SendNotification")
			net.WriteString(text)
			net.WriteUInt(notifyType, 4)
			net.WriteUInt(time, 10)
		net.Send(self)
	end

	-- [[ Save a prop on the database ]]
	function KBPermaProps.SaveEnt(ent, ply)
		if not IsValid(ent) then return end

		local update = ent.KBPermaPropsId

		local class = ent:GetClass()
		if class == "prop_dynamic" then
			class = "prop_physics"
		end

		local model = ent:GetModel()
		local pos = ent:GetPos()
		local ang = ent:GetAngles()
		local color = ent:GetColor() or color_white
		local material = ent:GetMaterial() or ""
		local entSkin = ent:GetSkin() or 1
		local scale = ent:GetModelScale() or 1
		
		local bodygroups = {}
		for i=0, (ent:GetNumBodyGroups() - 1) do
			bodygroups[i] = ent:GetBodygroup(i)
		end

		local subMaterialsToSave = {}
		local subMaterials = ent:GetMaterials()

		if subMaterials && istable(subMaterials) then
			for k, v in pairs(subMaterials) do
				if ent:GetSubMaterial(k) then
					subMaterialsToSave[k] = ent:GetSubMaterial(k-1)
				end
			end
		end

		local phys = ent:GetPhysicsObject()

		local isFrozen = true
		if IsValid(phys) then
			isFrozen = phys:IsMoveable()
		end

		local optionTable = {
			["collision"] = ent:GetCollisionGroup(),
			["rendermode"] = ent:GetRenderMode(),
			["renderfx"] = ent:GetRenderFX(),
			["getName"] = ent:GetName(),
			["solid"] = ent:GetSolid(),
			["networkVars"] = (ent.GetNetworkVars && isfunction(ent.GetNetworkVars)) and util.TableToJSON(ent:GetNetworkVars()) or {},
			["subMaterials"] = util.TableToJSON(subMaterialsToSave),
			["isFrozen"] = (!isFrozen),
		}

		local option = util.TableToJSON((optionTable or {})) or "{}"

		local query = ""
		if update then
			query = "UPDATE kb_permaprops SET class = %s, model = %s, pos = %s, ang = %s, map = %s, color = %s, material = %s, skin = %s, scale = %s, bodygroup = %s, option = %s WHERE id = %s AND map = %s"
		else
			query = "INSERT INTO kb_permaprops (class, model, pos, ang, map, color, material, skin, scale, bodygroup, option) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		end 

		query = query:format(
			KBPermaProps.Escape(class),
			KBPermaProps.Escape(model),
			KBPermaProps.Escape(tostring(pos)),
			KBPermaProps.Escape(tostring(ang)),
			KBPermaProps.Escape(KBPermaPropsMap),
			KBPermaProps.Escape(util.TableToJSON(color)),
			KBPermaProps.Escape(material),
			KBPermaProps.Escape(entSkin),
			KBPermaProps.Escape(scale),
			KBPermaProps.Escape(util.TableToJSON(bodygroups)),
			KBPermaProps.Escape(option),
			KBPermaProps.Escape(update),
			KBPermaProps.Escape(KBPermaPropsMap)
		)

		KBPermaProps.Query(query, function(data)
			if update then
				ent:EmitSound("buttons/button9.wav")

				print(getSentence("succesfulyUpdated"):format(update))

				if IsValid(ply) then
					ply:KBPermaPropsNotify(getSentence("succesfulyUpdated"):format(update), 0, 5)
				end
			else
				if data and data["lastInsertId"] then
					ent:Remove()
					ent:EmitSound("buttons/button9.wav")

					print(getSentence("succesfulySavedLog"):format(data["lastInsertId"]))

					if IsValid(ply) then
						ply:KBPermaPropsNotify(getSentence("succesfulySaved"):format(data["lastInsertId"]), 0, 5)
					end
					
					KBPermaProps.CreateEntSaved(tonumber(data["lastInsertId"]), ply)
				end
			end
		end)
	end

	-- [[ Remove a saved entity ]]
	function KBPermaProps.RemoveEntSaved(entId, ply)
		KBPermaProps.Query(("DELETE FROM kb_permaprops WHERE id = %s AND map = %s"):format(KBPermaProps.Escape(entId), KBPermaProps.Escape(KBPermaPropsMap)), function()
			print(getSentence("succesfulyRemovedLog"):format(entId))

			KBPermaProps.AllPropsSpawned = KBPermaProps.AllPropsSpawned or {}

			local ent = KBPermaProps.AllPropsSpawned[entId]

			if IsValid(ent) then
				ent:Remove()
				ent:EmitSound("buttons/combine_button_locked.wav")

				ply:KBPermaPropsNotify(getSentence("succesfulyRemoved"):format(entId), 1, 5)

				KBPermaProps.AllPropsSpawned[entId] = nil
			end
		end)
	end

	-- [[ Create a saved entity ]]
	function KBPermaProps.CreateEntSaved(entId, ply)
		KBPermaProps.AllPropsSpawned = KBPermaProps.AllPropsSpawned or {}

		local ent = KBPermaProps.AllPropsSpawned[entId]

		if IsValid(ent) then
			ent:Remove()
			KBPermaProps.AllPropsSpawned[entId] = nil
		end
		
		KBPermaProps.Query(("SELECT * FROM kb_permaprops WHERE id = %s AND map = %s"):format(KBPermaProps.Escape(entId), KBPermaProps.Escape(KBPermaPropsMap)), function(data)
			local entData = data[1]
			if not entData or not isstring(entData["class"]) then return end
	
			local ent = ents.Create(entData["class"])
			if not IsValid(ent) then return end
	
			if isstring(entData["model"]) and entData["model"] != "" then
				ent:SetModel(entData["model"])
			end
	
			if isstring(entData["pos"]) and entData["pos"] != "" then
				ent:SetPos(util.StringToType(entData["pos"], "Vector"))
			end
	
			if isstring(entData["ang"]) and entData["ang"] != "" then
				ent:SetAngles(util.StringToType(entData["ang"], "Angle"))
			end
	
			if isstring(entData["color"]) and entData["color"] != "" then
				local color = util.JSONToTable(entData["color"])

				if istable(color) then
					if not isnumber(color.r) or not isnumber(color.g) or not isnumber(color.b) or not isnumber(color.a) then return end

					ent:SetColor(Color(color.r, color.g, color.b, color.a))
				end
			end
	
			if isstring(entData["material"]) and entData["material"] != "" then
				ent:SetMaterial(entData["material"])
			end
	
			local entSkin = tonumber(entData["skin"])
			if isnumber(entSkin) then
				ent:SetSkin(entSkin)
			end
	
			local scale = tonumber(entData["scale"])
			if isnumber(scale) then
				ent:SetModelScale(scale)
			end

			if isstring(entData["networkVars"]) && entData["networkVars"] != "" then
				local networkVars = util.JSONToTable(entData["networkVars"])

				if istable(networkVars) then
					for k, v in pairs(networkVars) do
						if entData["networkVars"][k] == nil then continue end
	
						local func = ent["Set"..k]
						if not isfunction(func) then continue end

						func(ent, entData["networkVars"][k])
					end
				end
			end
	
			if isstring(entData["bodygroup"]) &&  entData["bodygroup"] != "" then
				local bodygroup = util.JSONToTable(entData["bodygroup"])
				
				if istable(bodygroup) then
					for k, v in pairs(bodygroup) do
						if not isnumber(k) or not isnumber(v) then continue end
		
						ent:SetBodygroup(k, v)
					end
				end
			end

			if isstring(entData["subMaterials"]) && entData["subMaterials"] != "" then
				local subMaterials = util.JSONToTable(entData["subMaterials"])
				
				if istable(subMaterials) then
					for k, v in pairs(subMaterials) do
						if not isnumber(k) or not isstring(v) then continue end
		
						ent:SetSubMaterial(k-1, v)
					end
				end
			end
	
			local option = util.JSONToTable(entData["option"])
	
			if option then
				local collision = tonumber(option["collision"])
				if isnumber(collision) then
					ent:SetCollisionGroup(collision)
				end
	
				local rendermode = tonumber(option["rendermode"])
				if isnumber(rendermode) then
					ent:SetRenderMode(rendermode)
				end
	
				local renderfx = tonumber(option["renderfx"])
				if isnumber(renderfx) then
					ent:SetRenderFX(renderfx)
				end

				local solid = tonumber(option["solid"])
				if isnumber(solid) then
					ent:SetSolid(solid)
				end	
			end

			ent:Spawn()
			ent:Activate()
			ent.KBPermaPropsId = entId

			ent:CallOnRemove("kb_permaprops_remove", function()
				callbackAllPlayersWithToolGun(function(ply)
					KBPermaProps.SendRemoveSavedEnt(ent:EntIndex(), ply)
				end)
			end)

			if option["isFrozen"] then
				local phys = ent:GetPhysicsObject()

				if IsValid(phys) then
					phys:EnableMotion(false)
				end
			end

			if IsValid(ply) then
				callbackAllPlayersWithToolGun(function(ply)
					KBPermaProps.SendSavedEnt(ent, ply)
				end)
			end

			KBPermaProps.AllPropsSpawned[entId] = ent
		end)
	end

	-- [[ Reload all saved entities ]]
	function KBPermaProps.ReloadAllSavedEnts(ply)
		KBPermaProps.AllPropsSpawned = KBPermaProps.AllPropsSpawned or {}

		for k, v in pairs(KBPermaProps.AllPropsSpawned) do
			if IsValid(v) then
				v:Remove()
			end
		end

		KBPermaProps.Query(("SELECT * FROM kb_permaprops WHERE map = %s"):format(KBPermaProps.Escape(KBPermaPropsMap)), function(data)
			if not data or not istable(data) then return end

			for k, v in pairs(data) do
				KBPermaProps.CreateEntSaved(tonumber(v["id"]), ply)
			end

			callbackAllPlayersWithToolGun(function(ply)
				KBPermaProps.SendAllSavedEnts(ply)
			end)
		end)
	end

	function KBPermaProps.SendSavedEnt(ent, ply)
		net.Start("KBPermaProps:MainNet")
			net.WriteUInt(2, 4)

			local validModel = IsValid(ent)
			local entIndex = (validModel and ent:EntIndex() or 0)
			local model = (validModel and ent:GetModel() or "")
			local permaPropsId = (validModel and ent.KBPermaPropsId or 0)
			
			net.WriteUInt(entIndex, 15)
			net.WriteUInt(permaPropsId, 32)
			net.WriteString(model)
		net.Send(ply)
	end

	function KBPermaProps.SendAllSavedEnts(ply)
		KBPermaProps.AllPropsSpawned = KBPermaProps.AllPropsSpawned or {}

		net.Start("KBPermaProps:MainNet")
			local amount = table.Count(KBPermaProps.AllPropsSpawned)

			net.WriteUInt(1, 4)
			net.WriteUInt(amount, 32)
			for k, v in pairs(KBPermaProps.AllPropsSpawned) do
				local validModel = IsValid(v)
				local entIndex = (validModel and v:EntIndex() or 0)
				local model = (validModel and v:GetModel() or "")
				local permaPropsId = (validModel and v.KBPermaPropsId or 0)

				net.WriteUInt(entIndex, 15)
				net.WriteUInt(permaPropsId, 32)
				net.WriteString(model)
			end
		net.Send(ply)
	end

	function KBPermaProps.SendRemoveSavedEnt(entIndex, ply)
		KBPermaProps.AllPropsSpawned = KBPermaProps.AllPropsSpawned or {}

		net.Start("KBPermaProps:MainNet")
			net.WriteUInt(3, 4)
			net.WriteUInt(entIndex, 15)
		net.Send(ply)
	end

	function TOOL:LeftClick()
		local owner = self:GetOwner()
		if not KBPermaProps.RanksAccess[owner:GetUserGroup()] then return end

		self.KBPermaProps = self.KBPermaProps or {}

		local curTime = CurTime()

		self.KBPermaProps["antiSpam"] = self.KBPermaProps["antiSpam"] or 0
		if self.KBPermaProps["antiSpam"] > curTime then return end
		self.KBPermaProps["antiSpam"] = curTime + 0.5

		local trace = owner:GetEyeTrace()
		local ent = trace.Entity

		if not IsValid(ent) or ent:IsPlayer() or ent:IsVehicle() then return end

		KBPermaProps.SaveEnt(ent, owner)
	end

	function TOOL:RightClick()
		local owner = self:GetOwner()
		if not KBPermaProps.RanksAccess[owner:GetUserGroup()] then return end

		self.KBPermaProps = self.KBPermaProps or {}

		local curTime = CurTime()

		self.KBPermaProps["antiSpam"] = self.KBPermaProps["antiSpam"] or 0
		if self.KBPermaProps["antiSpam"] > curTime then return end
		self.KBPermaProps["antiSpam"] = curTime + 0.5

		local trace = owner:GetEyeTrace()
		local ent = trace.Entity

		if not IsValid(ent) or ent:IsPlayer() or ent:IsVehicle() then return end

		local entId = ent.KBPermaPropsId
		if not isnumber(entId) then return end

		KBPermaProps.RemoveEntSaved(entId, owner)
	end

	function TOOL:Reload()
		local owner = self:GetOwner()
		if not KBPermaProps.RanksAccess[owner:GetUserGroup()] then return end

		self.KBPermaProps = self.KBPermaProps or {}

		local curTime = CurTime()

		self.KBPermaProps["antiSpam"] = self.KBPermaProps["antiSpam"] or 0
		if self.KBPermaProps["antiSpam"] > curTime then return end
		self.KBPermaProps["antiSpam"] = curTime + 0.5

		KBPermaProps.ReloadAllSavedEnts(owner)
		owner:KBPermaPropsNotify(getSentence("succesfulyReload"), 0, 5)
	end

	function TOOL:Deploy()
		local owner = self:GetOwner()
		if not KBPermaProps.RanksAccess[owner:GetUserGroup()] then return end

		KBPermaProps.SendAllSavedEnts(owner)		
	end
	
	hook.Add("PostCleanupMap", "KBPermaProps:PostCleanupMap:ReloadAllSavedEnts", function()
		KBPermaProps.ReloadAllSavedEnts()
	end)

	hook.Add("InitPostEntity", "KBPermaProps:InitPostEntity:InitDatabase", function()
		KBPermaProps.InitDatabaseTable()

		timer.Simple(1, function()
			KBPermaProps.ReloadAllSavedEnts()
		end)
	end)

	function KBPermaProps.TransferPermaProps()
		local result = sql.Query("SELECT * FROM permaprops")
		if not istable(result) then return end

		for k, v in ipairs(result) do
			if not istable(v) or not isstring(v["map"]) or not isstring(v["content"]) then continue end

			local query = "INSERT INTO kb_permaprops (class, model, pos, ang, map, color, material, skin, scale, bodygroup, option) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

			local options = util.JSONToTable(v["content"])
			if not isstring(options["Class"]) or not isstring(options["Model"]) then continue end

			local pos = options["Pos"]
			if not isvector(pos) then continue end
			
			local ang = options["Angle"]
			if not isangle(ang) then continue end

			local color = options["Color"]
            if not istable(color) or not isnumber(color.r) or not isnumber(color.g) or not isnumber(color.b) or not isnumber(color.a) then
                color = color_white
            end
            color = util.TableToJSON(color)

			local material = options["Material"] or ""
			local entSkin = options["Skin"] or 0
			local scale = options["ModelScale"] or 1
			local bodygroup = util.TableToJSON(options["BodyG"] or {})

			local newOptions = {
				["isFrozen"] = options["Frozen"],
				["collision"] = options["ColGroup"],
				["rendermode"] = options["RenderMode"],
				["getName"] = options["Name"],
				["solid"] = options["Solid"],
				["networkVars"] = options["DT"],
				["subMaterials"] = options["SubMaterials"],
			}
			newOptions = util.TableToJSON(newOptions)

			query = query:format(
				KBPermaProps.Escape(options["Class"]),
				KBPermaProps.Escape(options["Model"]),
				KBPermaProps.Escape(pos),
				KBPermaProps.Escape(ang),
				KBPermaProps.Escape(v["map"]),
				KBPermaProps.Escape(color),
				KBPermaProps.Escape(material),
				KBPermaProps.Escape(entSkin),
				KBPermaProps.Escape(scale),
				KBPermaProps.Escape(bodygroup),
				KBPermaProps.Escape(newOptions)
			)

			KBPermaProps.Query(query)
		end

		for k, v in ipairs(ents.GetAll()) do
			if not IsValid(v) then continue end

			if v.PermaProps then
				v:Remove()
			end
		end

		KBPermaProps.ReloadAllSavedEnts()
	end
	
	concommand.Add("kbpermaprops_transfer_permaprops", function(ply)
		if ply != NULL and not IsValid(ply) then return end

		if ply == NULL or KBPermaProps.RanksAccess[ply:GetUserGroup()] then
			KBPermaProps.TransferPermaProps()

			print(getSentence("transferedPermaProps"))
		end
	end)
end
