-- Script Kaitun cải tiến với Haki và FastAttack
-- Ngày: 12/03/2025
-- Tác giả: Grok (xAI)

-- Kiểm tra thế giới
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

-- Cấu hình toàn cục
getgenv().KaitunConfig = {
    AutoFarm = true,           -- Tự động farm
    AutoQuest = true,          -- Tự động nhận nhiệm vụ
    AutoHaki = true,           -- Tự động bật Haki
    UseMelee = true,           -- Sử dụng melee
    FPSBoost = true,           -- Tối ưu FPS
    MaxLevel = 2600,           -- Cấp tối đa
    SafeMode = true            -- Chế độ an toàn
}

-- Biến toàn cục cho nhiệm vụ
local MyLevel, Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon

-- FastAttack toàn cục
_G.FastAttack = true

-- Hàm kiểm tra nhiệm vụ dựa trên cấp độ (giữ nguyên từ trước)
function CheckQuest() 
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059, 17, 1546)
            CFrameMon = CFrame.new(943, 45, 1562)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598, 37, 153)
            CFrameMon = CFrame.new(-1524, 50, 37)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598, 37, 153)
            CFrameMon = CFrame.new(-1128, 40, -451)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1140, 4, 3829)
            CFrameMon = CFrame.new(-1262, 40, 3905)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1140, 4, 3829)
            CFrameMon = CFrame.new(-976, 55, 4304)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(897, 6, 4389)
            CFrameMon = CFrame.new(924, 7, 4482)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(897, 6, 4389)
            CFrameMon = CFrame.new(1608, 9, 4371)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1385, 87, -1298)
            CFrameMon = CFrame.new(1362, 120, -1531)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1385, 87, -1298)
            CFrameMon = CFrame.new(1243, 140, -1437)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035, 29, 4326)
            CFrameMon = CFrame.new(-4881, 23, 4274)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4844, 718, -2621)
            CFrameMon = CFrame.new(-4953, 296, -2899)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4844, 718, -2621)
            CFrameMon = CFrame.new(-5260, 391, -2229)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5306, 2, 477)
            CFrameMon = CFrame.new(5099, -0, 474)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5306, 2, 477)
            CFrameMon = CFrame.new(5655, 16, 866)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1581, 7, -2982)
            CFrameMon = CFrame.new(-1820, 51, -2741)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1581, 7, -2982)
            CFrameMon = CFrame.new(-1268, 30, -2996)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5319, 12, 8515)
            CFrameMon = CFrame.new(-5335, 46, 8638)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5319, 12, 8515)
            CFrameMon = CFrame.new(-5803, 86, 8829)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122, 18, 1567)
            CFrameMon = CFrame.new(60998, 50, 1534)
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122, 18, 1567)
            CFrameMon = CFrame.new(61866, 55, 1655)
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4720, 846, -1951)
            CFrameMon = CFrame.new(-4720, 846, -1951)
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7861, 5545, -381)
            CFrameMon = CFrame.new(-7741, 5580, -395)
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7903, 5636, -1412)
            CFrameMon = CFrame.new(-7727, 5650, -1410)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7903, 5636, -1412)
            CFrameMon = CFrame.new(-7894, 5640, -1629)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5258, 39, 4052)
            CFrameMon = CFrame.new(5391, 70, 4023)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5258, 39, 4052)
            CFrameMon = CFrame.new(5985, 70, 4790)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-427, 73, 1835)
            CFrameMon = CFrame.new(-614, 90, 2240)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-427, 73, 1835)
            CFrameMon = CFrame.new(-867, 110, 1621)
        elseif MyLevel == 775 or MyLevel <= 874 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(635, 73, 919)
            CFrameMon = CFrame.new(635, 73, 919)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2441, 73, -3219)
            CFrameMon = CFrame.new(-2552, 110, -3050)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2441, 73, -3219)
            CFrameMon = CFrame.new(-1695, 110, -3299)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5495, 48, -794)
            CFrameMon = CFrame.new(-5715, 90, -917)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5495, 48, -794)
            CFrameMon = CFrame.new(-6027, 50, -1130)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(607, 401, -5371)
            CFrameMon = CFrame.new(445, 440, -5175)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(607, 401, -5371)
            CFrameMon = CFrame.new(1224, 460, -5332)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6061, 16, -4904)
            CFrameMon = CFrame.new(-5941, 50, -4322)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6061, 16, -4904)
            CFrameMon = CFrame.new(-6306, 50, -5752)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5430, 16, -5298)
            CFrameMon = CFrame.new(-5233, 60, -6227)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5430, 16, -5298)
            CFrameMon = CFrame.new(-4955, 60, -4836)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1033, 125, 32909)         
            CFrameMon = CFrame.new(1033, 125, 32909)    
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1033, 125, 32909)   
            CFrameMon = CFrame.new(809, 80, 33090)   
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(973, 125, 33245)         
            CFrameMon = CFrame.new(838, 160, 33408)      
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(973, 125, 33245)
            CFrameMon = CFrame.new(1238, 220, 33148)
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5668, 28, -6484)
            CFrameMon = CFrame.new(5836, 80, -6257)
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5668, 28, -6484)
            CFrameMon = CFrame.new(5700, 80, -6724)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3056, 240, -10145)
            CFrameMon = CFrame.new(-2583, 80, -9821)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3056, 240, -10145)
            CFrameMon = CFrame.new(-3339, 290, -10412)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-291, 44, 5580)
            CFrameMon = CFrame.new(-44, 70, 5623)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-291, 44, 5580)
            CFrameMon = CFrame.new(219, 105, 6018)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5834, 51, -1103)
            CFrameMon = CFrame.new(5992, 90, -1581)
        elseif MyLevel == 1600 or MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5834, 51, -1103)
            CFrameMon = CFrame.new(6472, 370, -151)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5448, 602, 748)
            CFrameMon = CFrame.new(4836, 740, 928)
        elseif MyLevel == 1650 or MyLevel <= 1699 then 
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5448, 602, 748)
            CFrameMon = CFrame.new(4784, 660, 155)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180, 29, -6738)
            CFrameMon = CFrame.new(3156, 120, -7837)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2180, 29, -6738)
            CFrameMon = CFrame.new(3205, 120, -6742)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581, 332, -8758)   
            CFrameMon = CFrame.new(-10550, 380, -8574)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581, 332, -8758)   
            CFrameMon = CFrame.new(-10764, 380, -8799) 
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13233, 332, -7626)
            CFrameMon = CFrame.new(-13335, 380, -7660)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13233, 332, -7626)   
            CFrameMon = CFrame.new(-13844, 520, -7016)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12682, 391, -9901)
            CFrameMon = CFrame.new(-12166, 380, -10375)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12682, 391, -9901)
            CFrameMon = CFrame.new(-13098, 450, -9831)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9481, 142, 5565)
            CFrameMon = CFrame.new(-8680, 190, 5852)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9481, 142, 5565)
            CFrameMon = CFrame.new(-10144, 140, 5932)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9515, 172, 607) 
            CFrameMon = CFrame.new(-9275, 210, 6166)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9515, 172, 607)
            CFrameMon = CFrame.new(-9442, 60, 6304)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104, 38, -10194)
            CFrameMon = CFrame.new(-1870, 100, -10225)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104, 38, -10194)
            CFrameMon = CFrame.new(-2005, 100, -10585)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-818, 66, -10964)
            CFrameMon = CFrame.new(-501, 100, -10883)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-818, 66, -10964)
            CFrameMon = CFrame.new(-690, 100, -11350)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2023, 38, -12028)
            CFrameMon = CFrame.new(-2332, 90, -12049)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2023, 38, -12028)
            CFrameMon = CFrame.new(-1514, 90, -12422)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1931, 38, -12840)
            CFrameMon = CFrame.new(-1930, 90, -12963)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1931, 38, -12840)
            CFrameMon = CFrame.new(-2123, 110, -12777)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(235, 25, -12199)
            CFrameMon = CFrame.new(110, 80, -12245)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(235, 25, -12199)
            CFrameMon = CFrame.new(579, 80, -12413)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150, 25, -12777)
            CFrameMon = CFrame.new(-68, 80, -12692)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150, 25, -12777)
            CFrameMon = CFrame.new(17, 80, -12962)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1148, 14, -14446)
            CFrameMon = CFrame.new(-1371, 70, -14405)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1148, 14, -14446)
            CFrameMon = CFrame.new(-836, 70, -14326)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547, 56, -172)
            CFrameMon = CFrame.new(-16431, 90, -223)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547, 56, -172)
            CFrameMon = CFrame.new(-16668, 70, -243)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrior"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "kissed"
            CFrameQuest = CFrame.new(-16540, 56, 1051)
            CFrameMon = CFrame.new(-16345, 80, 1004)
        elseif MyLevel == 2525 or MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16540, 56, 1051)
            CFrameMon = CFrame.new(-16634, 85, 1106)
        elseif MyLevel == 2550 or MyLevel <= 2574 then
            Mon = "Serpent Hunter"
            LevelQuest = 1
            NameQuest = "TikiQuest3"
            NameMon = "Serpent Hunter"
            CFrameQuest = CFrame.new(-16665, 105, 1576)
            CFrameMon = CFrame.new(-16568, 165, 1589)
        elseif MyLevel == 2575 or MyLevel <= 2600 then
            Mon = "Skull Slayer"
            LevelQuest = 2
            NameQuest = "TikiQuest3"
            NameMon = "Skull Slayer"
            CFrameQuest = CFrame.new(-16665, 105, 1576)
            CFrameMon = CFrame.new(-16844, 158, 1633)
        end
    end
end
-- Hàm dịch chuyển an toàn
local function TeleportTo(cf)
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = cf
    end
end

-- Hàm tự động bật Haki
local function AutoHaki()
    if KaitunConfig.AutoHaki then
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            if not player.Character:FindFirstChild("Haki") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end
    end
end

-- Hàm trang bị melee
local function EquipMelee()
    if KaitunConfig.UseMelee then
        local player = game.Players.LocalPlayer
        if player.Backpack:FindFirstChildOfClass("Tool") then
            for _, tool in pairs(player.Backpack:GetChildren()) do
                if tool:IsA("Tool") and tool.ToolTip ~= "Gun" then
                    player.Character.Humanoid:EquipTool(tool)
                    break
                end
            end
        end
    end
end

-- Hàm tự động nhận nhiệm vụ
local function AutoQuest()
    if KaitunConfig.AutoQuest then
        CheckQuest()
        local player = game.Players.LocalPlayer
        if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
            TeleportTo(CFrameQuest)
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
        end
    end
end

-- Tích hợp FastAttack từ code của bạn
if _G.FastAttack then
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local CollectionService = game:GetService("CollectionService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer

    local Remotes = ReplicatedStorage:WaitForChild("Remotes")
    local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
    local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")
    local RegisterHit = Net:WaitForChild("RE/RegisterHit")

    local Settings = {
        AutoClick = true,
        ClickDelay = 0,
    }

    local FastAttack = {
        Distance = 100,
        attackMobs = true,
    }

    local function IsAlive(character)
        return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
    end

    local function ProcessEnemies(OthersEnemies, Folder)
        local BasePart = nil
        for _, Enemy in Folder:GetChildren() do
            local Head = Enemy:FindFirstChild("Head")
            if Head and IsAlive(Enemy) and Player:DistanceFromCharacter(Head.Position) < FastAttack.Distance then
                if Enemy ~= Player.Character then
                    table.insert(OthersEnemies, { Enemy, Head })
                    BasePart = Head
                end
            end
        end
        return BasePart
    end

    function FastAttack:Attack(BasePart, OthersEnemies)
        if not BasePart or #OthersEnemies == 0 then return end
        RegisterAttack:FireServer(Settings.ClickDelay or 0)
        RegisterHit:FireServer(BasePart, OthersEnemies)
    end

    function FastAttack:BladeHits()
        local Equipped = IsAlive(Player.Character) and Player.Character:FindFirstChildOfClass("Tool")
        if Equipped and Equipped.ToolTip ~= "Gun" then
            local OthersEnemies = {}
            local Part = ProcessEnemies(OthersEnemies, game:GetService("Workspace").Enemies)
            if #OthersEnemies > 0 then
                self:Attack(Part, OthersEnemies)
            end
        end
    end

    task.spawn(function()
        while task.wait(Settings.ClickDelay) do
            if Settings.AutoClick then
                FastAttack:BladeHits()
            end
        end
    end)
end

-- Hàm tự động farm quái với FastAttack
local function AutoFarm()
    if KaitunConfig.AutoFarm then
        CheckQuest()
        AutoHaki()
        EquipMelee()
        for _, mob in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if mob.Name == Mon and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                local player = game.Players.LocalPlayer
                repeat
                    if KaitunConfig.SafeMode then
                        TeleportTo(CFrameMon * CFrame.new(0, 20, 0))
                    else
                        TeleportTo(mob.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))
                    end
                    FastAttack:BladeHits() -- Sử dụng FastAttack để tấn công
                    wait(0.1)
                until not KaitunConfig.AutoFarm or mob.Humanoid.Health <= 0 or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                wait(0.5)
            end
        end
    end
end

-- Hàm tối ưu FPS
local function FPSBoost()
    if KaitunConfig.FPSBoost then
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").FogEnd = 9e9
        for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("BasePart") and not v:IsA("MeshPart") then
                v.Material = Enum.Material.SmoothPlastic
            end
        end
    end
end

-- Hàm chính
local function Main()
    print("Kaitun Script by Grok - Bắt đầu!")
    while wait(1) do
        if MyLevel < KaitunConfig.MaxLevel then
            pcall(function()
                FPSBoost()
                AutoQuest()
                AutoFarm()
            end)
        else
            print("Đã đạt cấp tối đa: " .. KaitunConfig.MaxLevel)
            break
        end
    end
end

-- Chạy script
spawn(Main)