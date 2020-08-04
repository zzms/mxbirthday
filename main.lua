os_type = getOSType();     --获取设备系统版本

if os_type == "android" then --返回值为纯小写字母
	init(0)	
else  
	init(1)
end

require("TSLib")
local tool= require("Tool")
w,h = getScreenSize()
isUpdate="否"


nowStatus="创建角色" 

--如果要在设备自启动时解锁屏幕直接使用 unlockDevice 函数即可
sysver = getOSVer();    


function initParam()

	os_type = getOSType();     --获取设备系统版本

	if os_type == "android" then --返回值为纯小写字母
		init(0)	
	else  
		init(1)
	end
	isUpdate="否"
	require("TSLib")
	tool= require("Tool")
	sysver = getOSVer(); 
	w,h = getScreenSize()
	if ( w == 1080 and h == 1920 ) or ( h == 1080 and w == 1920 ) then			--	安卓	1080p


	elseif ( w == 720 and h == 1280 ) or ( h == 720 and w == 1280 ) then		--	安卓	720P

	elseif ( w == 1242 and h == 2208 ) or ( h == 1242 and w == 2208 ) then		--	iOS		6p,6sp

	elseif ( w == 640 and h == 1136 ) or ( h == 640 and w == 1136 ) then		--	iOS		5,5c,5s,touch5,touch6

	elseif ( w == 750 and h == 1334 ) or ( h == 750 and w == 1334 ) then		--	iOS		6,6s 750x1334
		flag="7" 
	elseif ( w == 828 and h == 1792 ) or ( h == 828 and w == 1792 ) then		--	XR 828×1792
		flag="xr" 

	else
		dialog("暂不支持此分辨率")
		lua_exit()
	end
end


function respring()--帮你玩平台禁用此函数
	os.execute("killall -9 SpringBoard");
end




function unlockdev()
	respring()
	mSleep(6000)
	--获取系统版本
	local t = strSplit(sysver,".") 
	fl = deviceIsLock();      
	if fl == 0 then
		dialog("未锁定",1);
	elseif tonumber(t[1]) >= 10 then 
		dialog("未锁定111",1);
		unlockDevice(); 
		--按一次 Home 键
		pressHomeKey(0); 
		pressHomeKey(1)

	else
		dialog("未锁定22222",1);
		pressHomeKey(0); 
		pressHomeKey(1)
		--解锁屏幕
		unlockDevice(); 
	end
end



function randomStatus(flag)
	if( flag == "7" ) then
		math.randomseed(getRndNum()) 
		num = math.random(1,6) 
		if(num==1)then
			nowStatus="主线任务"
		elseif(num==2)then
			nowStatus="师门任务"

		elseif(num==3)then
			nowStatus="一条龙"

		elseif(num==4)then
			nowStatus="挂机"

		elseif(num==5)then
			nowStatus="守财奴"

		else
			nowStatus="关宁校场"
		end


	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end



shimingtable=
{"23122319960429002X,张盼盼,13100897190",
"23128219980730732X,邹金凤,13394643836",
"23210119850620344X,周晓玲,13524641149",
"23210119860415643X,李德仁,13636327330",
"23210119861126261X,蔡兴宇,13641680642",
"23210119900202301X,张寄予,13644697122",
"23210119910909001X,徐国兴,13651777729",
"23210119930228182X,王娜,13661439740",
"23210119931019542X,卜阳,13673269202",
"23210219740407022X,朱年华,13686317391",
"23210219791215071X,于晶涛,13718924991",
"23210319741014405X,许继业,13818317705",
"23210319750210432X,陈香玲,13819891504",
"23210319790329390X,王晓萍,13895797750",
"23210319811003403X,何乃波,13904636610",
"23210319860322494X,吴彩丽,13915577654",
"23210319860516061X,韩健,13916016346",
"23210319880711251X,王爽,13936160739",
"23210319891022590X,汪艳,13998699074",
"23210319900620147X,张龙,15104585495",
"23210319901105091X,佟亮,15246184440",
"23210319901211388X,付闯,15246919110",
"23210319920110611X,何鑫,15315505956",
"23210319920404062X,闫莉,15542447690",
"23210319920520493X,卢奇峰,15542627780",
"23210319930327371X,康明学,15546394399",
"23210319950920009X,田霄,15734657771",
"23210319970306372X,张天姿,15846058360",
"23212619680724901X,李春阳,15846669610",
"23212619800708317X,陈玉双,15846821266",
"23212619831028162X,张桂玲,15945901646",
"23212619850124037X,袁武,16625425477",
"23212619851216267X,沈彦江,17621698219",
"23212619860308382X,郑云赫,17621795055",
"23212619870824006X,王遵娜,17766594956",
"23212619890727078X,胡桥茜,18201935107",
"23212619891010001X,沈铁威,18246164775",
"23212619891219446X,王凤云,18246556586",
"23212619920414057X,任志强,18502162125",
"23212619940507162X,邹鸿雁,18521531467",
"23212719840409141X,韩祝春,18600806465",
"23212819760914381X,张晓亮,18603614963",
"23212819870224381X,宋新光,18609969661",
"23212819911129381X,张圣金,18618296129",
"23213119860222162X,张晓凤,18644051201",
"23213119960901162X,韦婉莹,18645931180",
"23230119721205182X,曲秀丽,18646147654",
"23230119730708654X,赵玉荣,18686825725",
"23230119740629781X,张大辉,18946095883",
"23230119791231001X,王世超,18952528978"}



账号密码={"yu4542172@163.com","yife5898"}




local ts = require("ts")
local cjson = ts.json
MyTable = {
	["style"]  = "default",
	["rettype"] = "table",
	["width"] = 1334,
	["height"] = 750,
	["orient"] = "1",
	["bgcolor"] = "255,255,255",
	["btnbkcolor"] = "255,255,255",
	["config"] = "",
	["pagetype"] = "multi",
	["selpage"] = "1",
	["pagenumtype"] = "dot",
	["titles"] = "第1页",
	["timer"] = "40",
	["cancelname"] = "取消",
	["okname"] = "确定",
	pages=
	{
		{

			{
				["type"] = "Label",
				["color"] = "38,38,38",
				["size"] = "10",
				["align"] = "left",
				["text"] = "切换角色",
			},
			{
				["type"] = "CheckBoxGroup",
				["id"] = "checkbox0",
				["list"] = "角色1,角色2,角色3,角色4,角色5,角色6,角色7,角色8,角色9,角色10,角色11",
			},
			{
				["type"] = "Label",
				["color"] = "38,38,38",
				["size"] = "10",
				["align"] = "left",
				["text"] = "是否更新脚本",
			},
			{
				["type"] = "RadioGroup",
				["select"] = "1",
				["id"] = "radio1",
				["list"] = "是,否",
				},},
	},

} 
local MyJsonString = cjson.encode(MyTable);
UIret,values = showUI(MyJsonString)

if UIret == 1 then
	local cbg =  values.checkbox0 
	new  = cbg:split("@")
	for i=1,#new,1 do
		if(new[i]=="0") then 
			nowpalyer=1
			break;
		end 
		if(new[i]=="1") then
			nowpalyer=2
			break;
		end  
		if(new[i]=="2") then 
			nowpalyer=3
			break;
		end  
		if(new[i]=="3") then 
			nowpalyer=4
			break;
		end    

		if(new[i]=="4") then 
			nowpalyer=5
			break;
		end  
		if(new[i]=="5") then
			nowpalyer=6
			break;
		end  
		if(new[i]=="6") then
			nowpalyer=7
			break;
		end  
		if(new[i]=="7") then 
			nowpalyer=8
			break;
		end   
		if(new[i]=="8") then 
			nowpalyer=9
			break;
		end    
		if(new[i]=="9") then 
			nowpalyer=10
			break;
		end    
		if(new[i]=="10") then 
			nowpalyer=11
			break;
		end    
	end   

	local radio1 =  values.radio1 
	--loginType
	if  radio1 == "0" then
		isUpdate="是"
	elseif radio1 == "1" then
		isUpdate="否"
	end
end




function aiRead(url,x1,y1,x2,y2)
	local m = TSVersions()
	local ts = require("ts")
	local a = ts.version()
	local json = ts.json
	local API  = "5IXmBSXaCAGyC8RzY1xwdNdi"
	local Secret  = "rkNjbgw3tStl9DMaTYHUvN2mjqDzuctn"
	local tp = getDeviceType()
	if m <= "1.2.7" then
		dialog("请使用 v1.2.8 及其以上版本 TSLib")
	end
	if  tp >= 0  and tp <= 2 then
		if a <= "1.3.9" then
			dialog("请使用 iOS v1.4.0 及其以上版本 ts.so")
		end
	elseif  tp >= 3 and tp <= 4 then
		if a <= "1.1.0" then
			dialog("请使用安卓 v1.1.1 及其以上版本 ts.so")
		end
	end
	--iOS 需要下载 v1.4.0 及其以上版本 ts.so，Android 需要下载 v1.1.1 及其以上版本 ts.so，否则无法调用成功
	local code1,access_token = getAccessToken(API,Secret)
	if code1 then
		local pic_name = userPath() .."/res/".. url
		snapshot(pic_name,x1,y1,x2,y2) 

		local code2, body = baiduAI(access_token,pic_name)
		if code2 then
			local tmp = json.decode(body)
			return tmp;

		else
			dialog("识别失败\n" .. body)
		end 
	else
		dialog("识别失败\n" .. access_token)
	end
end



function reboot()
	unlockdev()
	mSleep(1000)
	init(1)
	os_type = getOSType();
	if os_type == "android" then --返回值为纯小写字母
		tool.runApp("com.netease.l10")
	else  
		tool.runApp("com.netease.qnyh")
	end
	initParam()

end




local tab参加 = {
"0082000860008400c8c00c9801cb043ce442cc4c4f8c8ce8880c888089110891108c2168e2338f02189041888c0c8c004840008600082000000000000000004000040030401e0fff8ffe000400004000040010403f07ff80000000000000001ffff18001180011800118001180011ffff$参加$224$20$45",
}
local index参加 = addTSOcrDictEx(tab参加)



local tab便捷组队 = {
"00f0001e0002c001c00077fffb8000e000047fd84407c466ef46667466674666d5ffff400395ffe146660466604666047fe047be067fe02000000000060c0060e0060c0061c0fff7ffffff061800638016f0332edf36efa36eff36ec236ec136ec080000fffff36ec836ec836ec837fc837bc830e0800e00000000000001e310347305c931efd37cfe3f1f6343c6607866070e6000007ffff7ffff7f7ff61070610706107061070610707f7f8400007ffff00000000000000000000000007ffff5ffff600006001067c187fe286eff8783f000001000030000f0007e003fcff8f0ff8e0003f8000fe0000f00007000010000000000$便捷组队$784$20$98",
}
local index便捷组队 = addTSOcrDictEx(tab便捷组队)


istapedcanjia=0;





function Login(flag)

	if(1==1) then

		-- 创建环境对象
		mysql = luasql.mysql()
-- 连接数据库
		--conn,msg = mysql:connect("qnyh","root","123456css","cdb-mf4gezvm.cd.tencentcdb.com",10004)
		conn,msg = mysql:connect("qnyh","root","123456css","111.231.212.150",10004)
		if conn then
			dialog("连接成功")
		else
			toast(msg,1)
			mSleep(2000)
		end


		str = getDeviceName()
		wifimac = ts.system.wifimac()
		toast("设备名："..str.."mac地址"..wifimac,1)
		mSleep(1000)

		return false;

	end

	if( flag == "7" ) then




		--同意协议
		if (isColor(1058,  656, 0x9bc8ff, 85) and 
			isColor(1079,  656, 0x8cb5ec, 85) and 
			isColor(1091,  654, 0x688cc5, 85) and 
			isColor(1108,  647, 0x87bdff, 85) and 
			isColor(1064,  651, 0x8dc1ff, 85)) then
			-- 1068,  652
			tool.tap( 1068,  652)
			mSleep(1000)
		end
		--公告我知道了
		if (isColor( 663,  653, 0x9cc8ff, 85) and 
			isColor( 642,  651, 0x7fa8e1, 85) and 
			isColor( 688,  650, 0x1e2b62, 85) and 
			isColor( 709,  641, 0x1e2b62, 85) and 
			isColor( 667,  642, 0x87bdff, 85) and 
			isColor( 657,  646, 0x8dc1ff, 85)) then
			tool.tap( 688,  650)
			mSleep(1000)
		end
		--点击进入游戏
		if (isColor( 667,  631, 0x4d98f2, 85) and 
			isColor( 709,  626, 0x4287cf, 85) and 
			isColor( 690,  621, 0x74b5f4, 85) and 
			isColor( 646,  623, 0x4587d8, 85) and 
			isColor( 638,  625, 0xffffff, 85) and 
			isColor( 699,  618, 0xe5f1fd, 85)) then
			tool.tap( 646,  623)
			mSleep(1000)
		end

		--账号已在线，点继续
		if (isColor( 805,  445, 0x3b2105, 85) and 
			isColor( 821,  445, 0xbb9953, 85) and 
			isColor( 828,  442, 0xfad57d, 85) and 
			isColor( 778,  438, 0xfeda84, 85) and 
			isColor( 770,  445, 0xffd87d, 85) and 
			isColor( 819,  458, 0xffdf7d, 85)) then
			tool.tap(  819,  447)
			mSleep(1000)
		end

		--出现下一步按钮表示没有角色需要创建
		if (isColor(1166,  660, 0xb2d4e1, 85) and 
			isColor(1174,  660, 0xafcdde, 85) and 
			isColor(1178,  660, 0xaec9dd, 85) and 
			isColor(1191,  660, 0x3877ad, 85) and 
			isColor(1199,  668, 0xe3eaf1, 85) and 
			isColor(1219,  664, 0xecf1f7, 85)) then
			nowStatus="创建角色"
		end
		--点击进入游戏
		if (isColor(1180,  666, 0x36689b, 85) and 
			isColor(1193,  662, 0x356ba0, 85) and 
			isColor(1231,  664, 0xa3beda, 85) and 
			isColor(1180,  662, 0x3873a0, 85) and 
			isColor(1158,  667, 0xb0c9dd, 85) and 
			isColor(1209,  666, 0xf6f8fb, 85) and 
			isColor(1233,  666, 0x3d74b1, 85)) then
			tool.tap( 1196,  663)
			mSleep(1000)
		end
		closeDh(flag)

		if (isColor(1205,  233, 0xf38638, 85) and 
			isColor(1223,  227, 0xd76029, 85) and 
			isColor(1216,  215, 0xfeb261, 85) and 
			isColor(1195,  215, 0xbc471d, 85) and 
			isColor(1206,  223, 0xfe9441, 85) and 
			isColor(1218,  211, 0xe76c2f, 85)) then
			nowStatus="主线任务"

		end

		if (isColor(1129,   54, 0x5b1504, 85) and 
			isColor(1132,   39, 0xe29d1e, 85) and 
			isColor(1116,   34, 0xf95b4a, 85) and 
			isColor(1127,   54, 0xa35014, 85) and 
			isColor(1140,   38, 0xe9372f, 85) and 
			isColor(1123,   26, 0xfee255, 85)) then
			nowStatus="主线任务"
		end

	elseif( flag == "note3" ) then 

		--出现边玩边下载
		if (isColor(1148,  646, 0xffdb7b, 85) and 
			isColor(1176,  651, 0xffdb7b, 85) and 
			isColor(1210,  652, 0xffdb7b, 85) and 
			isColor(1177,  638, 0xe7c36b, 85) and 
			isColor(1161,  644, 0xffdb7b, 85) and 
			isColor(1240,  641, 0xffdb7b, 85)) then
			tool.tap( 1185,  642)
			mSleep(1000)
		end


	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end




--服务器字体库
local tab服务器字体库 = {
"10c0838c1c38c3838c7038c70fedfffefff7cfc33fec33fcc33acc338cc338cc3fecc3fecc338cc338cff38cff38c7f38c00008000000000080181c0183801870018e001ffff1ffff3f998fd998f9998199981999819999199991999919d9919fff19fff180001800000000000000000000c0000c0330c0730c1f30c3f30cfb30fe330fc330f0630c0630c0630c0630c4630ce630cfe30c3e30c1f30c0700c0100c00000000000000c0001c0003800070001f8403d9c079fc061ec0018c1018c1018c1018c1e18c1f98c33d8ff1f8fe070e00380001c0001c00$若有云兮$668$20$87",
}
local index服务器字体库 = addTSOcrDictEx(tab服务器字体库)








roleCode=1;
function createRole(flag)


	if( flag == "7" ) then


		if(isUpdate=="是")then
			local ts = require("ts")
			code,msg = ts.tsDownload(userPath().."/lua/main.lua","https://zzms.github.io/mxbirthday/main.lua",{["tstab"] = 1,["mode"] = true})  
			if code == 200 then
				dialog("下载成功："..msg,0)
			else
				dialog("下载失败："..msg,0)
			end
			toast("重载脚本",1)
			isUpdate="否"
			lua_restart()
		end


		if (isColor( 813,   51, 0x6aa8e7, 85) and 
			isColor( 814,   46, 0x62a8e5, 85) and 
			isColor( 813,   44, 0x5b86b5, 85) and 
			isColor( 656,  661, 0xf2f7fa, 85) and 
			isColor(1159,  267, 0x349acf, 85) and 
			isColor(1143,  267, 0xe3fbfd, 85) and 
			isColor(1150,  505, 0x3fb5e1, 85)) then
			nowStatus="主线任务"
		end

		--点击进入游戏
		if (isColor(1172,  667, 0x3171a5, 85) and 
			isColor(1186,  662, 0x8cb2ce, 85) and 
			isColor(1230,  658, 0x3179bd, 85) and 
			isColor(1175,  662, 0x3979a5, 85) and 
			isColor(1209,  670, 0xf7f7ff, 85) and 
			isColor(1226,  665, 0x4279b5, 85)) then
			tool.tap( 1226,  665)

		end

		--服务器重连
		if (isColor( 657,  444, 0x361c02, 85) and 
			isColor( 663,  447, 0x351b01, 85) and 
			isColor( 684,  444, 0xfcd57b, 85) and 
			isColor( 657,  448, 0x391f04, 85) and 
			isColor( 701,  440, 0xffd982, 85) and 
			isColor( 627,  446, 0xffd87b, 85)) then
			tool.tap(   664,  449)

		end

		--创建射手
		if(roleCode==1)then

			--射手图标
			if (isColor(  91,  376, 0xb1c288, 85) and 
				isColor( 105,  372, 0xabbc9a, 85) and 
				isColor( 101,  370, 0xfaf8f4, 85) and 
				isColor(  95,  369, 0xb3c48e, 85) and 
				isColor(  89,  369, 0x9fb189, 85)) then
				if (isColor(1190,  670, 0x396b9c, 85) and 
					isColor(1205,  664, 0x356ca2, 85) and 
					isColor(1189,  663, 0x356da1, 85) and 
					isColor(1193,  673, 0x3c76a2, 85) and 
					isColor(1219,  669, 0xffffff, 85) and 
					isColor(1203,  663, 0x366da3, 85)) then
					tool.tap(1193,  673) --点击下一步
				end

			end
		end
		local istapedSz=0;
		--随机角色名骰子
		if (isColor(1286,  500, 0x8b8b94, 85) and 
			isColor(1296,  490, 0xd9dee9, 85) and 
			isColor(1278,  490, 0xe0dfe0, 85) and 
			isColor(1276,  499, 0xa6aecc, 85) and 
			isColor(1293,  494, 0xccd3e6, 85) and 
			isColor(1290,  486, 0xd4931a, 85)) then
			for i=3,1,-1 do
				tool.tap( 1289,  494)
				mSleep(2000)
				istapedSz=1;
			end
		end

		--点击进入游戏
		if (isColor(1189,  667, 0x346494, 85) and 
			isColor(1220,  667, 0x376ea5, 85) and 
			isColor(1181,  660, 0x85aecc, 85) and 
			isColor(1161,  661, 0x4b99b8, 85) and 
			isColor(1152,  667, 0x4384b1, 85) and 
			isColor(1140,  666, 0x35619a, 85) and istapedSz==1) then
			tool.tap(  1197,  667)
			mSleep(2000)
		end

		--服务器断开连接
		if (isColor( 653,  449, 0x3b2004, 85) and 
			isColor( 693,  449, 0xffd87b, 85) and 
			isColor( 656,  445, 0xedc772, 85) and 
			isColor( 644,  451, 0x9e7d40, 85) and 
			isColor( 677,  436, 0xfeda84, 85) and 
			isColor( 687,  444, 0x907039, 85)) then
			tool.tap( 644,  451)
			mSleep(1000)
		end

		--登录页点击进入游戏
		if (isColor( 667,  631, 0x4d98f2, 85) and 
			isColor( 709,  626, 0x4287cf, 85) and 
			isColor( 690,  621, 0x74b5f4, 85) and 
			isColor( 646,  623, 0x4587d8, 85) and 
			isColor( 638,  625, 0xffffff, 85) and 
			isColor( 699,  618, 0xe5f1fd, 85)) then
			tool.tap( 646,  623)
			mSleep(1000)
			-- 1166,   27
			tool.tap( 1166,   27)
			tool.tap( 1166,   27)
			tool.tap( 1166,   27)
		end



		if (isColor(1000,  578, 0xe2e389, 85) and 
			isColor(1021,  578, 0xd39393, 85) and 
			isColor(1017,  574, 0xd09088, 85) and 
			isColor( 966,  573, 0x754e62, 85) and 
			isColor( 984,  566, 0xecaeac, 85) and 
			isColor(1004,  554, 0xfdc6ab, 85)) then
			nowStatus="开场动画"
		end




		if (isColor( 970,  615, 0xc9f3ff, 85) and 
			isColor( 963,  619, 0xd0f5fe, 85) and 
			isColor( 959,  599, 0xa4f6b5, 85) and 
			isColor( 967,  597, 0xb1ebbb, 85) and 
			isColor( 976,  597, 0xa8f5aa, 85)) then
			nowStatus="开场动画"
		end

		if (isColor( 378,  212, 0xffffff, 85) and 
			isColor( 376,  209, 0xc2c2c2, 85) and 
			isColor( 339,  223, 0xffffff, 85) and 
			isColor( 336,  227, 0x4b4947, 85) and 
			isColor( 337,  229, 0xb8b8b8, 85) and 
			isColor(  71,  218, 0xc49b03, 85) and 
			isColor(  58,  229, 0xfac601, 85)) then

			nowStatus="主线任务"
			tool.tap(  135,  244)
		end
		if (isColor( 332,  677, 0xa6a601, 85) and 
			isColor( 333,  677, 0xc2c201, 85) and 
			isColor( 357,  672, 0xfafa00, 85) and 
			isColor( 501,  681, 0xe1e100, 85) and 
			isColor( 666,  688, 0xe6e601, 85) and 
			isColor( 639,  686, 0xf9f900, 85)) then
			nowStatus="开场动画"
		end

		if (isColor( 513,   43, 0x593833, 85) and 
			isColor( 506,   46, 0x605551, 85) and 
			isColor( 502,   46, 0x532c28, 85) and 
			isColor( 511,   36, 0x675e5a, 85) and 
			isColor( 502,   54, 0x412923, 85) and 
			isColor( 528,   36, 0x030406, 85)) then
			nowStatus="主线任务"
			tool.tap(  135,  244)
		end

		--点击边下边玩
		if (isColor( 781,  449, 0xffdb7b, 85) and 
			isColor( 808,  445, 0xc6a65a, 85) and 
			isColor( 842,  453, 0x735929, 85) and 
			isColor( 840,  446, 0xefcb73, 85) and 
			isColor( 840,  446, 0xefcb73, 85) and 
			isColor( 770,  451, 0xffdf7b, 85)) then

			tool.tap(  770,  451)
		end


		--登录界面 安卓模拟器
		if (isColor( 815,  584, 0xd41d13, 85) and 
			isColor( 819,  574, 0xeea7a3, 85) and 
			isColor( 818,  569, 0xd41d13, 85) and 
			isColor( 811,  578, 0xe88882, 85) and 
			isColor( 818,  582, 0xd41d13, 85) and 
			isColor( 823,  567, 0xffffff, 85)) then

			--打钩订阅
			if (isColor( 415,  679, 0xf9fafd, 85) and 
				isColor( 412,  680, 0xf9fafd, 85) and 
				isColor( 423,  673, 0xf9fafd, 85) and 
				isColor( 428,  685, 0xf9f9fd, 85) and 
				isColor( 430,  675, 0xf9f9fd, 85)) then
				tool.tap(  422,  681)
				mSleep(1000) 
			end
			--点击邮箱登录
			tool.tap(  919,  581)

			--输入账号密码窗口
			if (isColor(1029,  509, 0xfb4f4f, 85) and 
				isColor(1051,  505, 0xfb4f4f, 85) and 
				isColor(1026,  506, 0xfb4f4f, 85) and 
				isColor(1055,  349, 0xd2d0d0, 85) and 
				isColor(1026,  353, 0xd2d0d0, 85) and 
				isColor(1018,  630, 0xfb4f4f, 85)) then
				tool.click(  768,  217,300)
				mSleep(2000)
				if(getOSType()=="android") then
					switchTSInputMethod(true) 
					mSleep(1000)
					inputText(账号密码[1])
					mSleep(5000)
					if (isColor( 631,  496, 0xffdb7b, 85) and 
						isColor( 660,  498, 0xffdb7b, 85) and 
						isColor( 676,  506, 0xffdb7b, 85) and 
						isColor( 698,  507, 0xffd77b, 85) and 
						isColor( 669,  502, 0x311c00, 85) and 
						isColor( 674,  488, 0xffdb84, 85)) then
						tool.tap( 1255,  648)
						tool.tap(   678,  497)
					end
				else

					inputText(账号密码[1]);
					mSleep(2000)
					tool.tap( 1077,  303)
				end
				mSleep(2000)


				tool.click(    797,  366,300)
				mSleep(2000)
				if(getOSType()=="android") then
					switchTSInputMethod(true) 
					mSleep(1000)
					inputText(账号密码[2])
					mSleep(5000)
					if (isColor( 631,  496, 0xffdb7b, 85) and 
						isColor( 660,  498, 0xffdb7b, 85) and 
						isColor( 676,  506, 0xffdb7b, 85) and 
						isColor( 698,  507, 0xffd77b, 85) and 
						isColor( 669,  502, 0x311c00, 85) and 
						isColor( 674,  488, 0xffdb84, 85)) then
						tool.tap( 1255,  648)
						tool.tap(   678,  497)
					end
				else

					inputText(账号密码[2]);
					mSleep(2000)
					tool.tap( 1077,  303)
				end
				mSleep(2000)
				tool.tap(  652,  506)
			end
		end 


		--ios 选网易邮箱登录
		if (isColor( 479,  505, 0xffffff, 85) and 
			isColor( 488,  514, 0x92beff, 85) and 
			isColor( 671,  512, 0xffffff, 85) and 
			isColor( 674,  512, 0xfae4e3, 85) and 
			isColor( 847,  512, 0xae9885, 85) and 
			isColor( 734,  425, 0xfb4f4f, 85) and 
			isColor( 590,  420, 0xfb4f4f, 85)) then
			--打钩订阅
			if (isColor( 473,  575, 0xf9fafd, 85) and 
				isColor( 473,  581, 0xf9fafd, 85) and 
				isColor( 471,  571, 0xf9fafd, 85) and 
				isColor( 468,  575, 0xf9fafd, 85) and 
				isColor( 470,  581, 0xf9fafd, 85)) then
				tool.tap(  471,  580)
			end

--点击网易邮箱登录
			if (isColor( 654,  507, 0xd41d13, 85) and 
				isColor( 594,  520, 0xd41d13, 85) and 
				isColor( 599,  511, 0xfdf5f5, 85) and 
				isColor( 629,  506, 0xd41d13, 85) and 
				isColor( 666,  507, 0xd41d13, 85) and 
				isColor( 705,  514, 0xd41d13, 85)) then
				tool.tap( 705,  514)

			end

		end

		--网易邮箱登录
		if (isColor( 632,  465, 0xfb4f4f, 85) and 
			isColor( 636,  460, 0xfb4f4f, 85) and 
			isColor( 639,  462, 0xfb4f4f, 85) and 
			isColor( 652,  449, 0xfc8989, 85) and 
			isColor( 703,  454, 0xfb4f4f, 85) and 
			isColor( 588,  468, 0xfb4f4f, 85) and 
			isColor( 923,  361, 0xd2d0d0, 85) and 
			isColor( 906,  360, 0xd2d0d0, 85)) then
			tool.click(  721,  262,1)
			mSleep(2000)
			inputText(账号密码[1]);
			mSleep(2000)
			tool.tap( 1077,  303)  
			tool.click(    664,  367,1)
			mSleep(2000)
			inputText(账号密码[2]);
			mSleep(2000)
			tool.tap( 1077,  303)  

			tool.tap(  660,  469)
		end
		--同意协议
		if (isColor(1074,  660, 0xa9d0ff, 85) and 
			isColor(1073,  657, 0x9fcaff, 85) and 
			isColor(1056,  660, 0x25336a, 85) and 
			isColor(1063,  657, 0x5c77ad, 85) and 
			isColor(1044,  657, 0x9fcaff, 85) and 
			isColor(1079,  654, 0x5f80b9, 85) and 
			isColor(1089,  645, 0x364e88, 85)) then
			tool.tap(  1089,  645)
		end

--我知道了
		if (isColor( 613,  634, 0x7cb8ff, 85) and 
			isColor( 630,  647, 0x1f2d64, 85) and 
			isColor( 654,  648, 0x384e87, 85) and 
			isColor( 675,  646, 0x8dc1ff, 85) and 
			isColor( 696,  661, 0xb5d7ff, 85) and 
			isColor( 704,  659, 0xafd4ff, 85) and 
			isColor( 726,  649, 0x90c3ff, 85)) then
			tool.tap(  665,  665)
		end

		x, y = tsFindText(index服务器字体库, "若有云兮",   384,   82,  1148,  334, "A3B3CE , 3E3221 # A3B3CE , 5C4C31", 80)

		if(x~=-1 and y ~=-1) then

			tool.tap(  x, y )
			mSleep(1000)
		end



		--同意协议
		if (isColor(1058,  656, 0x9bc8ff, 85) and 
			isColor(1079,  656, 0x8cb5ec, 85) and 
			isColor(1091,  654, 0x688cc5, 85) and 
			isColor(1108,  647, 0x87bdff, 85) and 
			isColor(1064,  651, 0x8dc1ff, 85)) then
			-- 1068,  652
			tool.tap( 1068,  652)
			mSleep(1000)
		end
		--公告我知道了
		if (isColor( 663,  653, 0x9cc8ff, 85) and 
			isColor( 642,  651, 0x7fa8e1, 85) and 
			isColor( 688,  650, 0x1e2b62, 85) and 
			isColor( 709,  641, 0x1e2b62, 85) and 
			isColor( 667,  642, 0x87bdff, 85) and 
			isColor( 657,  646, 0x8dc1ff, 85)) then
			tool.tap( 688,  650)
			mSleep(1000)
		end
		--点击进入游戏
		if (isColor( 667,  631, 0x4d98f2, 85) and 
			isColor( 709,  626, 0x4287cf, 85) and 
			isColor( 690,  621, 0x74b5f4, 85) and 
			isColor( 646,  623, 0x4587d8, 85) and 
			isColor( 638,  625, 0xffffff, 85) and 
			isColor( 699,  618, 0xe5f1fd, 85)) then
			tool.tap( 646,  623)
			mSleep(1000)
		end

		--账号已在线，点继续
		if (isColor( 805,  445, 0x3b2105, 85) and 
			isColor( 821,  445, 0xbb9953, 85) and 
			isColor( 828,  442, 0xfad57d, 85) and 
			isColor( 778,  438, 0xfeda84, 85) and 
			isColor( 770,  445, 0xffd87d, 85) and 
			isColor( 819,  458, 0xffdf7d, 85)) then
			tool.tap(  819,  447)
			mSleep(1000)
		end

		--出现下一步按钮表示没有角色需要创建
		if (isColor(1166,  660, 0xb2d4e1, 85) and 
			isColor(1174,  660, 0xafcdde, 85) and 
			isColor(1178,  660, 0xaec9dd, 85) and 
			isColor(1191,  660, 0x3877ad, 85) and 
			isColor(1199,  668, 0xe3eaf1, 85) and 
			isColor(1219,  664, 0xecf1f7, 85)) then
			nowStatus="创建角色"
		end
		--点击进入游戏
		if (isColor(1180,  666, 0x36689b, 85) and 
			isColor(1193,  662, 0x356ba0, 85) and 
			isColor(1231,  664, 0xa3beda, 85) and 
			isColor(1180,  662, 0x3873a0, 85) and 
			isColor(1158,  667, 0xb0c9dd, 85) and 
			isColor(1209,  666, 0xf6f8fb, 85) and 
			isColor(1233,  666, 0x3d74b1, 85)) then
			tool.tap( 1196,  663)
			mSleep(1000)
		end
		closeDh(flag)

		if (isColor(1205,  233, 0xf38638, 85) and 
			isColor(1223,  227, 0xd76029, 85) and 
			isColor(1216,  215, 0xfeb261, 85) and 
			isColor(1195,  215, 0xbc471d, 85) and 
			isColor(1206,  223, 0xfe9441, 85) and 
			isColor(1218,  211, 0xe76c2f, 85)) then
			nowStatus="主线任务"

		end

		if (isColor(1129,   54, 0x5b1504, 85) and 
			isColor(1132,   39, 0xe29d1e, 85) and 
			isColor(1116,   34, 0xf95b4a, 85) and 
			isColor(1127,   54, 0xa35014, 85) and 
			isColor(1140,   38, 0xe9372f, 85) and 
			isColor(1123,   26, 0xfee255, 85)) then
			nowStatus="主线任务"
		end

	elseif( flag == "note3" ) then 

		--出现边玩边下载
		if (isColor(1148,  646, 0xffdb7b, 85) and 
			isColor(1176,  651, 0xffdb7b, 85) and 
			isColor(1210,  652, 0xffdb7b, 85) and 
			isColor(1177,  638, 0xe7c36b, 85) and 
			isColor(1161,  644, 0xffdb7b, 85) and 
			isColor(1240,  641, 0xffdb7b, 85)) then
			tool.tap( 1185,  642)
			mSleep(1000)
		end



	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end


end


--对话框
local tab点点符号 = {
	"007000070000700000000000000000000000020000700007000070000000000000000000000000000070000700007000000000000000000000000700007000070000200000000000000000c0000e0001780073e01f0fffc03fe0$点点符号$84$20$36",
}
local index点点符号 = addTSOcrDictEx(tab点点符号)




local tab技能引导 = {
	"34181c06e30f00cf63c0184de003fff890ffffffdffffffb04f80063db800ce33801986300000e06030198c07033180f0c6301f98c6033f18c063cfff8c71fff98f3ffe33f18c06e63180f8e6301e0cc60381d8c04038180000000000000000000040c0003818000f03000fc07fffe00ffff01dff0033f0c0061e1800c0c30018187fff030fffc061e00c0c3801c00f00700fc00c0ff0038fffe0e1fc3f382180fe00300fc00607fc00cff3c01ff01c03f803c06000380c00030100000000000000000000c07000180c07030180e060701fffffff7fffffe0307000060e0000c18030103007061800c0c38038187e06030fe1c0619f300c30fe1ffe0f87ffc0f07ff81e00c30fe01863ce030df0c061f81c0c3e018186003030000700000000000000000000000000003800000f7fffc7cffffbf988c07331180c6623000cc46389988c73f3118e3e7fff81effff01c000000000000000001ffcfff3ffdffe061830c0c30e18306183060c3060c18e0c30318186067030c7ce0e00f007c00c00f@00$技能引导$1160$27$114",
}
local index技能引导 = addTSOcrDictEx(tab技能引导)

x, y = tsFindText(index技能引导, "技能引导", 0, 0, 0, 0, "A7A7A8 , 595958", 90)


function closeDh(flag)
	-- body

	if( flag == "7" ) then
		--跳过对话
		if (isColor(1064,  621, 0x1a2032, 85) and 
			isColor(1064,  620, 0x545b68, 85) and 
			isColor(1064,  619, 0x555c69, 85) and 
			isColor(1063,  617, 0x4a505f, 85)) then
			numx1 = math.random(   464,    854)
			numy1 = math.random(618, 712)
			tool.tap(  numx1, numy1 )

		end

		if (isColor(1077,  603, 0xacbdcb, 85) and 
			isColor(1076,  604, 0x8a968f, 85) and 
			isColor(1076,  603, 0xa8bbbf, 85) and 
			isColor(1077,  603, 0xacbdcb, 85) and 
			isColor(1078,  603, 0x9bacac, 85) and 
			isColor(1078,  602, 0x90a09c, 85) and 
			isColor(1077,  602, 0xabbbc9, 85)) then
			numx1 = math.random(   464,    854)
			numy1 = math.random(618, 712)
			tool.tap(  numx1, numy1 )

		end

		if (isColor( 258,  604, 0x88a7ae, 85) and 
			isColor( 256,  604, 0xacbccd, 85) and 
			isColor( 257,  603, 0x9cb4be, 85) and 
			isColor( 257,  602, 0x83a5b1, 85) and 
			isColor( 257,  605, 0xa8bcc4, 85) and 
			isColor( 256,  605, 0xa8bac6, 85)) then
			numx1 = math.random(   464,    854)
			numy1 = math.random(618, 712)
			tool.tap(  numx1, numy1 )

		end

		if (isColor(1077,  602, 0xadbecc, 85) and 
			isColor(1076,  603, 0xa2aca7, 85) and 
			isColor(1076,  601, 0xa5b1af, 85) and 
			isColor(1077,  601, 0xaab8c3, 85) and 
			isColor(1078,  602, 0xa7b7b9, 85)) then
			numx1 = math.random(   464,    854)
			numy1 = math.random(618, 712)
			tool.tap(  numx1, numy1 )
		end

		if (isColor(1271,  702, 0x5cdaf6, 85) and 
			isColor(1271,  705, 0x6aecfa, 85) and 
			isColor(1277,  701, 0x54d0f2, 85) and 
			isColor(1268,  704, 0x5bd8f4, 85) and 
			isColor(1267,  702, 0x50c3ec, 85) and 
			isColor(1271,  711, 0x9bf6fc, 85)) then
			numx1 = math.random(   464,    854)
			numy1 = math.random(618, 712)
			tool.tap(  numx1, numy1 )
		end

		if (isColor( 256,  604, 0xabbccc, 85) and 
			isColor( 256,  603, 0x8394a3, 85) and 
			isColor( 257,  603, 0x8fa2ac, 85) and 
			isColor( 258,  604, 0x718288, 85) and 
			isColor( 257,  606, 0x7a8a91, 85)) then
			numx1 = math.random(   464,    854)
			numy1 = math.random(618, 712)
			tool.tap(  numx1, numy1 )
		end


		--关闭新手好礼
		if (isColor(1166,  638, 0xffffdd, 85) and 
			isColor(1186,  618, 0xffffd9, 85) and 
			isColor(1181,  604, 0xffffd3, 85) and 
			isColor(1191,  589, 0xd9aa5d, 85) and 
			isColor(1171,  585, 0xfce7ae, 85) and 
			isColor(1200,  576, 0xebda9a, 85)) then
			tool.tap(    1247,   61 )
		end


		--关闭白蝶弹窗
		if (isColor(1277,   33, 0xeaf7fd, 85) and 
			isColor(1270,   41, 0xeaf7fd, 85) and 
			isColor(1004,  303, 0xa2bee7, 85) and 
			isColor( 935,  300, 0x3b7bd6, 85) and 
			isColor( 954,  281, 0x3e70c1, 85) and 
			isColor(1059,  279, 0x8b89ad, 85) and 
			isColor(1080,  311, 0xb87772, 85)) then
			-- 1276,   36
			tool.tap(   1276,   36 )
		end


		--关闭签到
		if (isColor(1220,  124, 0xeaf7fd, 85) and 
			isColor(1216,  131, 0xeaf7fd, 85) and 
			isColor(1197,  119, 0xcc9252, 85) and 
			isColor(1143,   99, 0xf8d5c2, 85) and 
			isColor(1176,  145, 0xc88d4f, 85) and 
			isColor(1246,  147, 0xfdd4e6, 85)) then
			tool.tap( 1219,  127)
		end


		--选择型对话
		if (isColor(1230,  534, 0x4c98d0, 85) and 
			isColor(1230,  526, 0x4990c4, 85) and 
			isColor(1222,  532, 0x657992, 85) and 
			isColor(1223,  531, 0xacd0e5, 85) and 
			isColor(1236,  533, 0x5e9eb1, 85)) then
			tool.tap( 1003,  526)
		end
		--关闭云溪君界面
		if (isColor(1271,   42, 0xeaf7fd, 85) and 
			isColor(1277,   36, 0xeaf7fd, 85) and 
			isColor(1279,   33, 0xeaf7fd, 85) and 
			isColor(1269,   27, 0x405b6e, 85) and 
			isColor(1282,   30, 0xeaf7fd, 85) and 
			isColor(1276,   46, 0x304f64, 85)) then
			tool.tap(  1276,   36)
		end

		--关闭路人组队
		if (isColor(1243,  343, 0xfecc53, 85) and 
			isColor(1231,  343, 0xad8738, 85) and 
			isColor(1244,  342, 0x4c3519, 85) and 
			isColor(1209,  341, 0xffcd53, 85) and 
			isColor(1306,  188, 0xeaf7fd, 85) and 
			isColor(1310,  184, 0xeaf7fd, 85)) then
			tool.tap( 1310,  185)
		end

		--关闭活动页面
		if (isColor( 249,  708, 0x3094af, 85) and 
			isColor( 246,  708, 0x316293, 85) and 
			isColor( 243,  708, 0x2e6394, 85) and 
			isColor( 264,  708, 0xd4aa28, 85) and 
			isColor( 245,  708, 0x2f6396, 85) and 
			isColor( 244,  708, 0x2e6296, 85)) then
			tool.tap( 1277,   37)
		end
		--关闭袁崇焕对话
		if (isColor(1256,  705, 0x4eb2d8, 85) and 
			isColor(1255,  706, 0x5ac5e8, 85) and 
			isColor(1258,  708, 0x417580, 85) and 
			isColor(1258,  709, 0x63c8dd, 85) and 
			isColor(1263,  709, 0x67d1e8, 85) and 
			isColor(1263,  709, 0x67d1e8, 85)) then
			tool.tap(  727,  670);
		end

		if (isColor(1141,  683, 0xe0bb64, 85) and 
			isColor(1151,  672, 0xe2a856, 85) and 
			isColor(1149,  668, 0xe3a056, 85) and 
			isColor(1159,  661, 0xe18e3a, 85) and 
			isColor(1175,   91, 0xeaf7fd, 85)) then
			--误点换线
			tool.tap(1175,   91)
		end


		if (isColor( 255,  603, 0x7b96a5, 85) and 
			isColor( 257,  605, 0x8c9aa5, 85) and 
			isColor( 258,  604, 0x6b7984, 85) and 
			isColor( 257,  603, 0xa5bac6, 85) and 
			isColor( 257,  599, 0x4a616b, 85) and 
			isColor( 258,  611, 0x5a6973, 85)) then
			numx1 = math.random(   464,    854)
			numy1 = math.random(618, 712)
			tool.tap(  numx1, numy1 )
		end


		if (isColor( 804,  538, 0x000c18, 85) and 
			isColor( 804,  528, 0x000c18, 85) and 
			isColor( 806,  528, 0x000c18, 85) and 
			isColor( 409,  494, 0xc6aaa5, 85) and 
			isColor( 397,  494, 0xe7e3ef, 85) and 
			isColor( 399,  488, 0xe7d7c6, 85) and 
			isColor( 402,  487, 0xefcfbd, 85)) then
			tool.tap(  999,  534)

		end

	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end



function kaiChangDh(flag)
	if( flag == "7" ) then
		--实名提示关闭确定按钮
		if (isColor( 663,  463, 0x4f6cb1, 85) and 
			isColor( 704,  463, 0x80b8ff, 85) and 
			isColor( 657,  470, 0x8ebeff, 85) and 
			isColor( 647,  470, 0x8cbbfc, 85) and 
			isColor( 698,  455, 0x80b8fe, 85) and 
			isColor( 632,  456, 0x7eb6fe, 85)) then
			tool.tap(632,  456)
		end


		if (isColor( 647,  651, 0x7fa8e1, 85) and 
			isColor( 669,  651, 0x96c5ff, 85) and 
			isColor( 697,  644, 0x8cc0ff, 85) and 
			isColor( 661,  645, 0x30447c, 85) and 
			isColor( 644,  640, 0x82bbff, 85) and 
			isColor( 630,  640, 0x223068, 85)) then
			tool.tap(661,  645)
		end
		--点击进入游戏
		if (isColor(1180,  666, 0x36689b, 85) and 
			isColor(1193,  662, 0x356ba0, 85) and 
			isColor(1231,  664, 0xa3beda, 85) and 
			isColor(1180,  662, 0x3873a0, 85) and 
			isColor(1158,  667, 0xb0c9dd, 85) and 
			isColor(1209,  666, 0xf6f8fb, 85) and 
			isColor(1233,  666, 0x3d74b1, 85)) then
			tool.tap( 1196,  663)
			mSleep(1000)
		end

		--点击进入游戏
		if (isColor( 667,  631, 0x4d98f2, 85) and 
			isColor( 709,  626, 0x4287cf, 85) and 
			isColor( 690,  621, 0x74b5f4, 85) and 
			isColor( 646,  623, 0x4587d8, 85) and 
			isColor( 638,  625, 0xffffff, 85) and 
			isColor( 699,  618, 0xe5f1fd, 85)) then
			tool.tap( 646,  623)
			mSleep(1000)
		end



		--对话
		x, y = tsFindText(index点点符号, "点点符号",   883,  668,  929,  693, "A5970C , 3A490D # 9A9815 , 656716", 90)
		if(x~=-1 and y ~=-1) then

			tool.tap(  x, y )
			mSleep(1000)
		end

		--点击地下蝴蝶圈圈
		x,y = findMultiColorInRegionFuzzy( 0x3066d8, "0|2|0x4b98ff,4|2|0x5eb4ff,5|1|0x5fb7ff,0|6|0x2564e0,-4|7|0x306eec", 90, 0, 0, 1333, 749)
		if(x~=-1 and y ~=-1) then

			tool.tap(  x, y )
			mSleep(1000)
		end
		--虚拟摇杆提示
		if (isColor( 540,  531, 0xcbcbcb, 85) and 
			isColor( 337,  499, 0xcccdd0, 85) and 
			isColor( 336,  502, 0xd0d1d3, 85) and 
			isColor( 338,  503, 0xc8c8c8, 85) and 
			isColor( 534,  533, 0xf0f0f0, 85) and 
			isColor( 534,  533, 0xf0f0f0, 85)) then
			tool.tap(  x, y )
			moveTo(    213,  539,    268,  601,{["step"] = 20,["ms"] = 70,["index"] = 1,["stop"] = true})
			mSleep(1000)
		end

		x, y = tsFindText(index技能引导, "技能引导",   788,  561,  1091,  632, "A7A7A8 , 595958", 90)
		local isNeedDg=0;
		if(x~=-1 and y ~=-1) then

			tool.tap(  1197,  601 )
			mSleep(1000)
			isNeedDg=1;
		end



		-- 切换怪物
		if (isColor( 959,  596, 0x96f5a4, 85) and 
			isColor( 964,  597, 0xa6f7b1, 85) and 
			isColor( 970,  594, 0x95f698, 85) and 
			isColor( 964,  622, 0xbceeff, 85) and 
			isColor( 971,  615, 0xc8f3ff, 85) and 
			isColor( 969,  614, 0xcef5ff, 85)) then
			tool.tap(  964,  622 )
			mSleep(500)

			tool.tap( 1197,  603)
		end
		-- 切换怪物
		if (isColor( 970,  615, 0xc9f3ff, 85) and 
			isColor( 963,  619, 0xd0f5fe, 85) and 
			isColor( 959,  599, 0xa4f6b5, 85) and 
			isColor( 967,  597, 0xb1ebbb, 85) and 
			isColor( 976,  597, 0xa8f5aa, 85)) then
			tool.tap(  964,  622 )
			mSleep(500)

			tool.tap( 1197,  603)
		end		

		-- 切换怪物
		if (isColor( 979,  618, 0x1c3958, 85) and 
			isColor( 982,  616, 0x1f3c59, 85) and 
			isColor( 985,  609, 0x1b3752, 85) and 
			isColor( 979,  617, 0x1d3957, 85) and 
			isColor( 967,  627, 0x234e75, 85) and 
			isColor( 958,  628, 0x234e75, 85)) then
			tool.tap(  964,  622 )
			mSleep(500)

			tool.tap( 1197,  603)
		end

		closeDh(flag)

		--跳过动漫
		if (isColor(1250,   36, 0xdff7fe, 85) and 
			isColor(1251,   33, 0xa4cfda, 85) and 
			isColor(1251,   33, 0xa4cfda, 85) and 
			isColor(1250,   32, 0xdff7fe, 85) and 
			isColor(1248,   29, 0x077285, 85) and 
			isColor(1250,   25, 0xc9e7ef, 85)) then
			tool.tap( 1250,   32 )
			mSleep(1000)
		end

		--进入新手村
		if (isColor(1267,  357, 0x5f605f, 85) and 
			isColor(1274,  350, 0x606363, 85) and 
			isColor(1279,  359, 0x2f3c3d, 85) and 
			isColor(1288,  343, 0x1b696c, 85) and 
			isColor(1285,  342, 0x6c583c, 85) and 
			isColor(1283,  340, 0x66593c, 85)) then
			nowStatus="主线任务"
		end
		--第一个任务提示
		if (isColor( 549,  213, 0xdcdcdc, 85) and 
			isColor( 433,  224, 0xa5a5a5, 85) and 
			isColor( 581,  213, 0xdedede, 85) and 
			isColor( 586,  218, 0xffffff, 85) and 
			isColor( 590,  225, 0xffffff, 85) and 
			isColor( 551,  238, 0xdedede, 85)) then
			nowStatus="主线任务"
		end

		--广告
		if (isColor(1269,   42, 0xeaf7fd, 85) and 
			isColor(1274,   33, 0xe9f6fc, 85) and 
			isColor(1283,   28, 0xeaf7fd, 85) and 
			isColor(1277,   34, 0xeaf7fd, 85) and 
			isColor(1282,   42, 0xe9f6fc, 85)) then
			tool.tap( 1277,   34)
			nowStatus="主线任务"
		end
		--主线任务
		if (isColor(1208,  223, 0xfd9541, 85) and 
			isColor(1223,  221, 0xad3613, 85) and 
			isColor(1207,  219, 0xffa14a, 85) and 
			isColor(1220,  227, 0xe97333, 85) and 
			isColor(1224,  227, 0xc44d1e, 85)) then
			nowStatus="主线任务"
		end

		if (isColor( 378,  212, 0xffffff, 85) and 
			isColor( 376,  209, 0xc2c2c2, 85) and 
			isColor( 339,  223, 0xffffff, 85) and 
			isColor( 336,  227, 0x4b4947, 85) and 
			isColor( 337,  229, 0xb8b8b8, 85) and 
			isColor(  71,  218, 0xc49b03, 85) and 
			isColor(  58,  229, 0xfac601, 85)) then

			nowStatus="主线任务"
			tool.tap(  135,  244)
		end

		if (isColor( 513,   43, 0x593833, 85) and 
			isColor( 506,   46, 0x605551, 85) and 
			isColor( 502,   46, 0x532c28, 85) and 
			isColor( 511,   36, 0x675e5a, 85) and 
			isColor( 502,   54, 0x412923, 85) and 
			isColor( 528,   36, 0x030406, 85)) then
			nowStatus="主线任务"
			tool.tap(  135,  244)
		end









	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end




-- 丹青谜题
local tab丹青谜题 = {
	"0000201307039070f90e3b11ee411cfc1384c1500c5e00c5c0ffcff80000ffcff0c5e00c5f00c5780c5280c53c0c51e0c50e0c50f003070000000000603c060f80679ff7fffb5ec0e70c0e60ffe60bfa60fff60f010fb030fc020e00300007fffeffffea0003c080681f1f00fde003b8000e00$朱砂$378$20$46",
	"01818195f9195f7197ff197feff781ff7ff19000197ff195f001cf0199e01917f19700ff79bff79b7f79b1e59b1d19b371fe7d1ff7180000000000003007030050301f0303e030eff318ff3efff3bf032e703387033070330703307033070330703307033070330703305fd307ff30000$础石$420$20$45",
	"0001800018000181ff981ff9818198181981819878198f8198d81981819818d9818d9818d9819d981fd981f981101ff001ff001f8000000000000000000380013b7f9bf7f9bf619b8799b87f9ba6f9bf619b97fff87fff861dbe679bf7f9bb7d9b8619b87f9be7f9bf7f9bb0003900038000000000000200007000070000700007017fffffffff007010170303f0303f03077c3067e30e7781c73c1870e3870e7070760703007030070100201000000000200003020070700e3f01c7f038730f0033e103fc10ffe3ffbf3ff33f0331e0330e0331e0333f633f37b3e33b3c10b0010300003000$乌黑长发$747$20$92",
	"000030003ffffbfbdf7c8514185141bdf7fffffffffffffffffffffbffffa381fa386bbfff3befe3bffc3a3bf3a387ba383bbfffffffff0000000000000037fffffffffbff60a3141a3141bff7f9cf7efffff00000ffbfff6bee19bbb19bbb19bbb29bbb39bbb39bbb71bbb71bee6fbff$胭脂$581$20$45",
	"000013ffff7ffff7ffe0718e0718e07ffff7ffff01c0101881039f9078f91e8093c801f09e1f89f9388030e81f0f87f031f1039c101c0100801000000c1810f9810ff870cf9f7fffcffff80c1b80cf9c0ff8e0f9873c18033ff033ff933ff33600f3effe3effc320063200733ffb33ff930000$脸颊$455$20$46",
}
local index丹青谜题 = addTSOcrDictEx(tab丹青谜题)


--找正传
local tab正传 = {
	"7fffffffffe0000e0000e000040000000000000060001e0001e0001e1fffe1fffe0003e0001e0001e0001e0001fffffffffffffffe0701e0701e0701e0701e0701e0701e0701e060100001000000000000e0001e0003c000ffff1ffffffffff1800c1800398003980039f8039f8c3ff8cff98ef9987f998f3999f399b9399f0399e0399c039880018000100000000e0000e0000e0000ffffffffff$正传$493$20$62",
	"018016180760c3f70c7c3a020061ff061ff061867ff867ff86061fe061fe061ff0003f7fffc7fec0618c0618c0639c07ffff7ffff00000000000001c000fc00ff800f80000000000003fff63fff6000170001380011c0010e0010600102001000030001f00c1c00f80007f0001f800038000000000000000000000003e1ff021ff021030212302163fe373fef3302f3b0211b021030210f3f10f3f1ff001fb001e301003ff003ff$湖心岛$480$20$67",
	"0020030301363613f6613f663f3e63f1c6333c663fc7e3ee7c385f8007e0706607c6616ec6167c616386167c676ee7f7c67e70700002000000000000000010600106003060070600e0601c06078061f0fffc0fff00fe0000600006001060010600106001060030601f07fff07ff00000000000000000000001803018073181e31bfc31bf031bbc3180e3180631807ffffffffff318e3318c3318c1318c1318c1318c1318c1318c10180101801000000000000000000fe3fdff3fdff3fc0300c0300c0300c0300c0300c07ffffffffff00c0300c0300c0300c0300c033fc033fdff1f9ff000ff$一唱三叹$684$20$92",
}
local index正传 = addTSOcrDictEx(tab正传)


local tab装备 = {
	"0040000e6330e6339c671dc661b8667ff6ffff6f7ff7c0c0780c7700c7f10c7f10c7fd0c77cfff6efff670c7670c76d0c77d0c77c0c7780c6600806000000003000038003380073000f3ff0e7ff1c7cc3e7cc7feccffeccfbccc3bcff3bcff3bcfc3becc3fecc3eecc3c7cc3c7ff307ff003ff003000030000300$装备$489$20$49",
}
local index装备 = addTSOcrDictEx(tab装备)

--找装备按钮
--萍水相逢任务
local tab萍水相逢任务 ={
	"7fffffffffe0000c0000c00004000000000000000000000010e0c78ecdf1ecdc1ecc03ecc03ecc07ecc1eecdfcecff0ecff8ecc1cecc0eecc07ecc03ecc3bffcf1ffde1000810000000000000000000000000000c0000c03fedf3fedf3b6dfbb6d9fb6d9fb6d93b6d93b6d93fed93fed93b6d93b6d9fb6d9fb6d9bb6d93b6df3fedf3fec0000c0000c00000000000c0000e0000e0000ffffffffff$萍水相逢$545$20$62",
}

local index萍水相逢任务 = addTSOcrDictEx(tab萍水相逢任务)

--神机营任务
local tab神机营 = {
	"0c0e00c1c00c180ec7ff7cfff3dfff0fb800f1c0000c00fff00fff00c6600c6600c660ffffffffff0c6600c6600c6600fff00fff000000000000001006078060f0067c007f00ffffffffff06e0006781063870001f3fffe3ffe0300003000030000300003ffff3ffff00001000030001f0000e000000000033e0033e003301f3339f337d9ff7d9ff4d9334d9334d9334d9336d9336d9336d9ff6d9ff7d93b7d9337df3301f33e1f33e00300000000060000$神机营$612$20$71",
}
local index神机营 = addTSOcrDictEx(tab神机营)


--神秘幻境任务!
local tab神秘幻境 = {
	"7ffff40000400004000040000000000000000001600016000161fff61fff60001600016000160001600017ffff7ffff6070160201602016020160201602016020160201600010000100000000000060000e0001c0007fff1ffff7c000e000081800118001180011bc011fc01ffcc7f8c6f98c7118c7118cd118d8118f0118e0118c0118800180000000000004000040000400007ffff7ffff000000000000000000000c0600c0c00c180cc3ffec7ff7df000f9800e0c0000400fff00fff80843008430084301c670fffff1ce700843008430084300fff00fff00000000000000000181c21878619e07ffff7ffff63f80c19c0c18c0000f000fe100e0300007c7fffc7fff60070301e03878001e000f8003ee07707c2001f00000000000000000060200e0703e0f0f61f3c676f86e6c07c60070601e660387c1001f3000330000300003000130001300013000130001300ff3fffe3ff80000000000000000030060300c0300cffffc7fff803018020100001023000237f0237f13f4b72f4bea34b0e34b0634ba274bf3f4b03b5b0237f02300003003$神秘幻境$1036$20$162",
	"7ffff40000400004000040000000000000000001600016000161fff61fff60001600016000160001600017ffff7ffff6070160601606016060160601606016060160601600010000100000000000060000e0001c0007fff1ffff7c000e080081800118001980019bc019fc41ffcc7f8c6f98c7198c7198cd198f8198f0198e0198c0118800180000000000004000040000400007ffff7ffff000000000000000000000000c3000c3000c3001c37ffd37ffd34b4f34b4f34b4e34b4cfcb4cfcb4c34b4c34b4c34b4f34b4f34b4f37ffd37ffd3000d3000c2000c0000000000000000600c0600c0621c6663866670667ff667ff66f6167e617f6617e661666616666166661666616666166661666617fe7f7fe7f060000600000000000000000000001000071fe1e1fe3818600186001863f1863f1860018640fffe0ffff0186381861818600186011860718637186381fe1c0000f000030000000000000000180001800018010180101803018070180e0183c018f801fe0fff80ffe0001fc0019e0018786181c6180e31807198031d801018010180000000$真君忠犬$1065$20$163",
}
local index神秘幻境 = addTSOcrDictEx(tab神秘幻境)


--阿初!
local tab阿初 = {
	"7ffff7ffff600006001867c187fe187c7f8601f02000061ffc61ffc6103061030610306103061ff061ff06000060000780007ffff70000600002000000000000000c0300c0700c0e08c1c0ec3ff7cfff1fdc00f9e00e7700063030001300073003f307fc3ffe03fc00300003000030000300003001f3ffff3fff0$阿初$366$20$49",
}
local index阿初 = addTSOcrDictEx(tab阿初)


--坐忘寂灭任务
local tab坐忘寂灭 = {
	"7ffff7ffff60000600006000040000000000000060001600016000161fff61fff60001600016000160001600017ffff7ffff7ffff60701607016070160701607016070160701602010000100000000000060001e0003c000ffff1ffffffffff1800c1800198003980039fc039fc43ffccff9c6f99c7b99cf399df399fd399f0399e0399c0198800180000000000006000060000600007ffff7ffff000000000000000000000030100f6101e610fc613f0617f0616386101c6100e6100461ffffffffff0076100e6101e6107c613f0617f0616386101e6100f6100701000000000000000100033800f3803e3fe383fe003fe3f3863f3863f3860138681f87c1f86f1386793863938601386013860738607386303863c3861f3000f0000100000000003c1873c19f301bc301b03018037fff37fff31980319b0319b8f199ef018e71c0131f0331fe7311ff3103e3107f311f731fe33ff013d800000000000000000000006008060181607c161f0361e07610076001e6007c601f07ffe07ff8078fe0600f86003c6009e6038760f8361e0361801600016000000000$坐忘寂灭$1204$20$164",
}
local index坐忘寂灭 = addTSOcrDictEx(tab坐忘寂灭)


----兰若古刹
local tab兰若古刹 = {
	"7ffff60000400004000040000000000000060001600016000161fff61fff60001600016000160001600017ffff7ffff6070360601606016060160601606016060160601602010000100000000000060000e0003c0007fff1ffff7c000f0800c1800198001980019bc019fc41ffccff8c6f98c7198c7198df198f9198f0198e0198c0198800180000000000004000040000400007ffff7ffff000000000000000000000000106001060c1060c1c60c1e60c17e0c13e0c1060c1060c1060c1060c1060c1060c11e0c17e0c1f60c1c60c1060c1060c1060010200100000000000000030c0430c0c30c1c30c3830c7030cfffedfffcfe131f6137c6137c6130c6130c6130c6130c61fec61fcc6130c6130c7f30c7f30c0030c000000000000000000c0000c0000c0000c1ff0c1ff0c1810c1810c1810c1810c181fff81fff810c1810c1810c1810c1810c1810c1ff0c1ff0c1ff0c0000c00000000000000000001b0321b0f31b1c333781f3201e3000dfff1cfff3e300773706333c4130e0030600000000c01fff01ffe000000000007ffffffffffffff$兰若古刹$1044$20$162",
	"000c00a48001b102fc00fd802360026e1114e66d94ae1cb8e1aa6fdc0f1301c37008cd01bb203f5700ac300e950c50801a0009000010100280$玫瑰花$152$19$24",
	"0f000400024800382077e413ee008fe0f9f8175f1d97c5fef1fffe7fe4bffbaffeeb7fbddfbb7fd8d77704e6801bca07bb9063d42fd506ff40b780106803300001@00$仙鹤$264$18$29",
	"007817ffff60000600006000000000000000040020601206012060320607206062060c2063c2067031fe03ff803ffc0207e0206782061c2060e20606206032060320601006010000000000000000000230002300023000230002300023000230002300023fffe3fffe3838630002300023000230002300023000230002300020000200000000000000007fff47fffe00007088038d80199ff031ff67b666ff6666e666666666f6667b66671ff661ff6018060080600007ffff7ffff0000000000200006000060000600007ffff00000000000000000000001817f9817f9876199e61ffc61fc161981619817f98f7f9ff3f9fc00000000001fff01fff00000000000000007ffff7ffff00000000000000000000180c0181801830018e0019fff1ffff1f9987d998f99981999819998199981999819998199981999919fff18fff1800018000080000000000000018004180361c0f70c3e3047830060000007ffff6000064000667fc667fc664306643066430667f0667f066000600017ffff7ffff00000000000000000601206012060320603206072060e2061c20638207f03ffc03ff80207c0206f0206382061c2060e2060720603206012060100601$天工阁$1142$20$178",

}
local index兰若古刹 = addTSOcrDictEx(tab兰若古刹)


function getWhichRenwu(flag)

	if( flag == "7" ) then

		--服务器重连
		if (isColor( 657,  444, 0x361c02, 85) and 
			isColor( 663,  447, 0x351b01, 85) and 
			isColor( 684,  444, 0xfcd57b, 85) and 
			isColor( 657,  448, 0x391f04, 85) and 
			isColor( 701,  440, 0xffd982, 85) and 
			isColor( 627,  446, 0xffd87b, 85)) then
			tool.tap(   664,  449)

		end

		--包裹提示
		if (isColor(1156,  177, 0xbfd4f9, 85) and 
			isColor(1156,  176, 0xc8ddfe, 85) and 
			isColor(1156,  174, 0xffffff, 85) and 
			isColor(1158,  174, 0xffffff, 85) and 
			isColor(1209,  221, 0xff9745, 85) and 
			isColor(1211,  221, 0xff9845, 85)) then

			tool.tap(   1215,  224 )
			mSleep(1000)
		end
		--背包拾取设置提示
		if (isColor( 653,   52, 0xbfd7f3, 85) and 
			isColor( 655,   55, 0xcfe4f7, 85) and 
			isColor( 656,   50, 0xc4dcf5, 85) and 
			isColor( 657,   53, 0xbed5f6, 85) and 
			isColor( 654,   54, 0x99d2f2, 85)) then
			--  701,   99
			tool.tap(   701,   99 )
			mSleep(1000)   
		end
		--配置拾取 1
		if (isColor( 822,  257, 0xacdbf4, 85) and 
			isColor( 827,  255, 0xa7b8e2, 85) and 
			isColor( 820,  257, 0xa2d0eb, 85) and 
			isColor( 818,  254, 0xb1c9e8, 85) and 
			isColor( 826,  254, 0xacc2e9, 85)) then
			if (isColor( 858,  303, 0xa4ee50, 85) and 
				isColor( 862,  308, 0x5da603, 85) and 
				isColor( 868,  308, 0x589f01, 85) and 
				isColor( 871,  306, 0x539603, 85) and 
				isColor( 873,  300, 0x7cc42b, 85)) then
				tool.tap(    866,  304 )
				mSleep(1000)   
			end

		end
		--配置拾取 2
		if (isColor( 585,  242, 0x99d1f2, 85) and 
			isColor( 587,  240, 0xe8ffff, 85) and 
			isColor( 589,  240, 0xe1ffff, 85) and 
			isColor( 590,  239, 0xb0c9ee, 85) and 
			isColor( 591,  237, 0xb6ccf8, 85)) then
			if (isColor( 623,  304, 0x93db3e, 85) and 
				isColor( 629,  307, 0x65ae0c, 85) and 
				isColor( 635,  303, 0x75bf14, 85) and 
				isColor( 640,  298, 0x7fc828, 85)) then
				tool.tap(    635,  303 )
				mSleep(1000)   
			end
		end

		--配置拾取 3
		if (isColor( 372,  239, 0xd3f9ff, 85) and 
			isColor( 374,  241, 0xe1ffff, 85) and 
			isColor( 377,  242, 0xbce1f8, 85) and 
			isColor( 380,  238, 0xb0c2ef, 85) and 
			isColor( 380,  244, 0xedffff, 85)) then

			if (isColor( 413,  304, 0xb4fb5f, 85) and 
				isColor( 416,  307, 0x63b018, 85) and 
				isColor( 417,  311, 0x50a438, 85) and 
				isColor( 422,  305, 0x6cb610, 85) and 
				isColor( 426,  300, 0x7ec426, 85)) then
				tool.tap(   417,  311 )
				mSleep(1000)   
			end
		end
		--关闭背包配置
		if (isColor( 423,  303, 0x132a47, 85) and 
			isColor( 427,  300, 0x122a47, 85) and 
			isColor( 414,  300, 0x13263f, 85) and 
			isColor( 638,  305, 0x132a47, 85) and 
			isColor( 634,  304, 0x132a47, 85) and 
			isColor( 870,  299, 0x132a47, 85) and 
			isColor( 871,  303, 0x132a47, 85) and 
			isColor( 869,  303, 0x122a47, 85)) then

			if (isColor( 979,  156, 0xeaf7fd, 85) and 
				isColor( 985,  149, 0xeaf7fd, 85) and 
				isColor( 991,  148, 0xeaf7fd, 85) and 
				isColor( 980,  145, 0xeaf7fd, 85) and 
				isColor( 990,  155, 0xe7f5fb, 85)) then
				tool.tap(     985,  150 )
				mSleep(1000)  
			end
		end
		--点击加号新功能
		if (isColor(1234,  176, 0x9ba1a8, 85) and 
			isColor(1235,  175, 0xc5d6ec, 85) and 
			isColor(1234,  174, 0xbfd4ef, 85) and 
			isColor(1233,  173, 0xd1e6f8, 85) and 
			isColor(1235,  173, 0xc5dff5, 85)) then
			-- 1291,  217
			tool.tap(    1291,  217 )
			mSleep(1000)
		end

		x, y = tsFindText(index装备, "装备", 1021,  467,  1158,  510, "4D70AB , 2C3F4B", 90)

		if(x~=-1 and y ~=-1) then
			--			点击装备穿戴
			tool.tap(  x, y )
			x = x + math.random(-2, 2)
			y = y + math.random(-2, 2)
			touchDown(x, y)
			mSleep(30)
			touchUp(x, y)
			mSleep(1000)
		end

		--点击装备穿戴
		if (isColor(1051,  124, 0x3a678f, 85) and 
			isColor(1049,  129, 0x1b415a, 85) and 
			isColor(1067,  129, 0x82b9ff, 85) and 
			isColor(1049,  123, 0x39668d, 85) and 
			isColor(1063,  117, 0x84bafe, 85) and 
			isColor(1031,  127, 0x7fb8ff, 85)) then
			tool.click( 1057,  126)

		end



		--密文手
		if (isColor( 172,  555, 0xefe3d6, 85) and 
			isColor( 181,  555, 0xdec7b5, 85) and 
			isColor( 196,  543, 0xa59684, 85) and 
			isColor( 174,  539, 0x636152, 85) and 
			isColor( 247,  536, 0x5a2029, 85) and 
			isColor( 248,  532, 0xd64142, 85)) then
			tool.click(247,  536)
		end

		--新轮回确定按钮
		if (isColor( 666,  442, 0x7db6ff, 85) and 
			isColor( 678,  441, 0x3b4e93, 85) and 
			isColor( 649,  441, 0x38498e, 85) and 
			isColor( 673,  433, 0x84bafe, 85) and 
			isColor( 633,  439, 0x7db7ff, 85) and 
			isColor( 649,  448, 0x5d7dc1, 85) and 
			isColor( 650,  448, 0x222568, 85)) then
			tool.tap( 649,  441 )
			mSleep(1000)
		end

		--背包
		if ((isColor(1128,   55, 0x8b380a, 85) and 
				isColor(1140,   46, 0x53170b, 85) and 
				isColor(1127,   35, 0xefb32b, 85) and 
				isColor(1123,   31, 0xf8cd3d, 85) and 
				isColor(1131,   19, 0xfdf179, 85) and 
				isColor(1115,   46, 0x6c0302, 85)) or(isColor(1211,  230, 0xe76d29, 85) and 
				isColor(1222,  228, 0xde5d29, 85) and 
				isColor(1209,  226, 0xff9e39, 85) and 
				isColor(1212,  218, 0xffa24a, 85) and 
				isColor(1224,  218, 0xff7531, 85) and 
				isColor(1201,  221, 0xff9a42, 85))) then

			--   62,  170点击任务
			tool.tap(62,  170 )
			mSleep(1000)

		end

		--任务界面
		if (isColor( 182,   40, 0x3d5b75, 85) and 
			isColor( 180,   39, 0x496883, 85) and 
			isColor( 183,   33, 0x7797a8, 85) and 
			isColor( 130,   38, 0xdbd6c4, 85) and 
			isColor( 130,   32, 0xddd8c6, 85)) then
			tool.tap( 1233,  170 )  --点击已接
			mSleep(1000)   
		end


		x, y = tsFindText(index神秘幻境, "真君忠犬",  132,  156,    348,  443, "84C0D5 , 2C3C2D", 90)


		if(x~=-1 and y ~=-1) then
			randomStatus(flag)
		end


		x, y = tsFindText(index正传, "正传",     132,  156,    348,  443, "74ACC5 , 394D3B", 80)
		--找到正传
		if(x~=-1 and y ~=-1) then
			x1,y1=x,y
			tool.tap(  x1, y1 )
			local isSmhj=0;
			local iszwjm=0
			local istgg=0
			x, y = tsFindText(index神秘幻境, "神秘幻境",  132,  156,    348,  443, "7DBACB , 2F3F34", 80)

			if(x~=-1 and y ~=-1) then
				isSmhj=1;
			end


			x, y = tsFindText(index坐忘寂灭, "坐忘寂灭", 132,  156,    348,  443, "70A8BD , 3C5143", 80)
			if(x~=-1 and y ~=-1) then
				iszwjm=1;
			end



			--点击放弃任务
			if (isColor( 987,  656, 0x4e71b1, 85) and 
				isColor(1003,  659, 0x80b8ff, 85) and 
				isColor(1025,  658, 0x7fb7ff, 85) and 
				isColor(1027,  649, 0x82baff, 85) and 
				isColor( 992,  651, 0x3d5793, 85) and 
				isColor( 980,  649, 0x82baff, 85)) then
				tool.tap(  1027,  655 )
				mSleep(1000)
				nowStatus="师门任务"
			end



			--点击立刻前往
			if (isColor(1008,  660, 0x81b9ff, 85) and 
				isColor(1025,  657, 0x7eb7ff, 85) and 
				isColor(1040,  654, 0x5378b9, 85) and 
				isColor(1019,  648, 0x84bbfe, 85) and 
				isColor( 992,  650, 0x81b8fe, 85) and 
				isColor( 981,  652, 0x1e2b62, 85)) then
				tool.tap(   1024,  655 )
			else
				--不到30级
				x, y = tsFindText(index兰若古刹, "兰若古刹", 132,  156,    348,  443, "7EBACF , 2F4030", 90)

				if(x~=-1 and y ~=-1) then
					--关闭任务窗口
					if (isColor(1234,   63, 0xeaf7fd, 85) and 
						isColor(1241,   60, 0xeaf7fd, 85) and 
						isColor(1243,   56, 0xebf8fd, 85) and 
						isColor(1213,   58, 0x1f355c, 85) and 
						isColor(1238,   45, 0x273f65, 85) and 
						isColor(1226,   87, 0x274471, 85) and 
						isColor(1255,   66, 0x2e4c7a, 85)) then
						-- 1233,   65
						tool.tap(  1233,   65 )
					end
					nowStatus="师门任务"
				end

			end

			if(isSmhj==1) then


				--71 81  点击地图
				tool.tap( 1251,   94)
				mSleep(1000)
				--点击定位坐标图标
				if (isColor( 387,   76, 0xefba18, 85) and 
					isColor( 386,   65, 0x29597b, 85) and 
					isColor( 377,   64, 0x214563, 85) and 
					isColor( 371,   64, 0xffebad, 85) and 
					isColor( 381,   50, 0xf7c739, 85)) then
					tool.tap( 381,   50)
					mSleep(1000)
				end
				--X轴获取
				if (isColor( 547,  366, 0x183863, 85) and 
					isColor( 545,  354, 0x183863, 85) and 
					isColor( 549,  364, 0x183863, 85) and 
					isColor( 754,  443, 0xffdb7b, 85) and 
					isColor( 784,  440, 0xf7cf73, 85)) then
					tool.click(   553,  356)
					mSleep(1000)
					tool.tap(  717,  405)
					tool.tap(    715,  226)
					tool.tap(      961,  497) --确定
				end


				if os_type == "android" then --返回值为纯小写字母
					--Y轴
					if (isColor( 730,  361, 0x18385a, 85) and 
						isColor( 735,  353, 0x18385a, 85) and 
						isColor( 738,  365, 0x183863, 85) and 
						isColor( 726,  360, 0x18385a, 85) and 
						isColor( 790,  446, 0x7b6129, 85) and 
						isColor( 769,  443, 0xdebe63, 85)) then
						tool.click(   739,  363)
						tool.tap(  814,  410)
						mSleep(1000)
						tool.tap(    717,  233)
						mSleep(1000)
						tool.tap(      961,  497) --确定
					end
				else  
					if (isColor( 730,  361, 0x18385a, 85) and 
						isColor( 735,  353, 0x18385a, 85) and 
						isColor( 738,  365, 0x183863, 85) and 
						isColor( 726,  360, 0x18385a, 85) and 
						isColor( 790,  446, 0x7b6129, 85) and 
						isColor( 769,  443, 0xdebe63, 85)) then
						tool.tap(  794,  364)
						mSleep(1000)
						tool.tap(   1004,  406)
						mSleep(1000)
						tool.tap( 902,  231)					
						mSleep(1000)
						tool.tap(  1142,  489)
						mSleep(1000)
						tool.tap(  792,  445)
						mSleep(2000)
						tool.tap(  1263,   36)
					end
				end




			elseif(iszwjm==1) then
				mSleep(1000)
				local startTime =os.time();
				while (true) do
					if(os.time()-startTime>90) then

						if (isColor(1264,   34, 0xffffff, 85) and 
							isColor(1269,   17, 0x5daba7, 85) and 
							isColor(1262,   23, 0x28374b, 85) and 
							isColor(1242,   31, 0x4d678f, 85) and 
							isColor(1275,   35, 0x4a8f8e, 85) and 
							isColor(1258,   44, 0xffffff, 85)) then
							tool.tap(     1266,   35 )
							mSleep(1000)
						end
						break;
					end
					mSleep(4000)
					for i=10,1,-1 do
						closeDh(flag)
						mSleep(300)
					end
					--关闭新手好礼
					if (isColor(1166,  638, 0xffffdd, 85) and 
						isColor(1186,  618, 0xffffd9, 85) and 
						isColor(1181,  604, 0xffffd3, 85) and 
						isColor(1191,  589, 0xd9aa5d, 85) and 
						isColor(1171,  585, 0xfce7ae, 85) and 
						isColor(1200,  576, 0xebda9a, 85)) then
						tool.tap(    1247,   61 )
						mSleep(1000)
					end
					--点击地图
					if (isColor(1292,  148, 0x000000, 85) and 
						isColor(1295,  148, 0x000000, 85) and 
						isColor(1287,  157, 0x000000, 85) and 
						isColor(1301,  135, 0x000000, 85) and 
						isColor(1304,  122, 0x000000, 85)) then
						tool.tap( 1287,  157 )
						mSleep(2000)
					end



					--点击放大镜
					if (isColor( 148,   78, 0xa699cb, 85) and 
						isColor( 149,   85, 0xc7c3cc, 85) and 
						isColor( 156,   98, 0x3c7db0, 85) and 
						isColor( 167,   84, 0x296697, 85) and 
						isColor( 167,   94, 0xe1754f, 85)) then
						tool.tap(167,   84 )
						mSleep(1000)

						local d1Time =os.time();
						local d1=0;
						local d2=0;
						local d3=0;
						while (true) do
							if(os.time()-d1Time>9)then break end

							--点击石灯灭1
							if (isColor( 142,  147, 0xd8c6b6, 85) and 
								isColor( 149,  147, 0xcb6f45, 85) and 
								isColor( 137,  139, 0x92674c, 85) and 
								isColor( 137,  148, 0xe2b999, 85) and 
								isColor( 133,  143, 0xd8a147, 85) ) then
								tool.tap(  145,  145 )
								tool.tap(  145,  145 )
								mSleep(1000)
								for i=10,1,-1 do
									closeDh(flag)
									mSleep(100)
								end
							end

							--点击石灯灭1
							if (isColor( 143,  147, 0xdbc8c1, 85) and 
								isColor( 142,  143, 0xd7a972, 85) and 
								isColor( 141,  143, 0xdfb688, 85) and 
								isColor( 146,  147, 0xcf7a49, 85) and 
								isColor( 145,  138, 0x978b6f, 85)) then
								tool.tap(  145,  145 )
								tool.tap(  145,  145 )
								mSleep(1000)
								for i=10,1,-1 do
									closeDh(flag)
									mSleep(100)
								end
							end							

							--点击石灯灭2
							if (isColor( 145,  200, 0xc97348, 85) and 
								isColor( 155,  200, 0xd58665, 85) and 
								isColor( 142,  195, 0xecc095, 85) and 
								isColor( 133,  197, 0xee8950, 85) and 
								isColor( 173,  197, 0x10293f, 85)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ) then
								--  141,  195
								tool.tap(155,  200 )
								tool.tap(155,  200 )
								mSleep(1000)
								for i=10,1,-1 do
									closeDh(flag)
								end
							end

							--点击石灯3
							if (isColor( 148,  252, 0xbd7e4d, 85) and 
								isColor( 132,  249, 0xe5b249, 85) and 
								isColor( 141,  246, 0xba7f48, 85) and 
								isColor( 151,  256, 0xd48b62, 85) and 
								isColor( 137,  252, 0xa67049, 85) and 
								isColor( 148,  250, 0xc87f50, 85) and  d3==0) then
								tool.tap(145,  246 )
								tool.tap(145,  246 )
								mSleep(1000)
								for i=10,1,-1 do
									closeDh(flag)
								end

							end


						end	

						--点击石灯灭电量状态
					end

				end

			elseif(istgg==1) then
				mSleep(5000)
			else


				mSleep(10000)
			end




		else
			--dialog("没找到正传", 1)

			x, y = tsFindText(index萍水相逢任务, "萍水相逢",    151,  164,    337,  213, "77B0C8 , 374B39", 90)
			if(x~=-1 and y ~=-1) then

				tool.tap(  x, y )
				mSleep(1000)

			end


			x, y = tsFindText(index神机营, "神机营", 151,  164,    337,  213, "77B0C8 , 374B39", 90)
			if(x~=-1 and y ~=-1) then

				tool.tap(  x, y )
				mSleep(1000)

				--点击立刻前往

			else
				--没找到【灵兽】萍水相逢
				--dialog("没找到【灵兽】萍水相逢", 1)
			end


			x, y = tsFindText(index兰若古刹, "天工阁", 132,  156,    348,  443, "70A8BD , 3C5143", 80)
			if(x~=-1 and y ~=-1) then
				tool.tap(  x, y )
			end 
			if (isColor(1008,  660, 0x81b9ff, 85) and 
				isColor(1025,  657, 0x7eb7ff, 85) and 
				isColor(1040,  654, 0x5378b9, 85) and 
				isColor(1019,  648, 0x84bbfe, 85) and 
				isColor( 992,  650, 0x81b8fe, 85) and 
				isColor( 981,  652, 0x1e2b62, 85)) then
				tool.tap(   1024,  655 )
				mSleep(10000)
			end

		end

		--点击锻造提示
		if (isColor(1233,  248, 0xc2e4f7, 85) and 
			isColor(1236,  248, 0xc1d8fa, 85) and 
			isColor(1237,  245, 0xa5b2d9, 85) and 
			isColor(1237,  244, 0x9ea9d0, 85) and 
			isColor(1237,  242, 0x9096c0, 85)) then

			-- 1286,  290
			tool.tap( 1286,  290)
			mSleep(1000)
		end

		--点击强化提示
		if (isColor(1165,  263, 0xc2e0f5, 85) and 
			isColor(1165,  260, 0xc4dff9, 85) and 
			isColor(1167,  260, 0xb9d1f9, 85) and 
			isColor(1168,  257, 0x98abd5, 85) and 
			isColor(1163,  262, 0x96ceee, 85)) then
			tool.tap(  1233,  312)
			mSleep(1000)
		end



		--点击待强化手套
		if (isColor( 643,  144, 0xf8f8f8, 85) and 
			isColor( 617,  109, 0xffffff, 85) and 
			isColor( 553,  107, 0xffffff, 85) and 
			isColor( 549,  119, 0xbcbcbc, 85) and 
			isColor( 558,  129, 0xf0f1f1, 85) and 
			isColor( 793,  113, 0xebebeb, 85)) then
			tool.tap(    188,  554)
			mSleep(1000)
		end

		if (isColor( 675,  112, 0xd4d4d4, 85) and 
			isColor( 649,  146, 0xbdbdbd, 85) and 
			isColor( 645,  144, 0xffffff, 85) and 
			isColor( 641,  144, 0xfdfdfd, 85) and 
			isColor( 640,  138, 0xdddddd, 85) and 
			isColor( 635,  125, 0xffffff, 85)) then
			tool.tap(      178,  130)
		end



		--点击强化
		if (isColor( 864,  577, 0xafc9e3, 85) and 
			isColor( 865,  575, 0xbdd4ef, 85) and 
			isColor( 865,  573, 0xc2ddf7, 85) and 
			isColor( 867,  569, 0x98a8d3, 85) and 
			isColor( 866,  573, 0xc5e2ff, 85)) then
			tool.tap(      976,  653)
			mSleep(1000)

		end


		--点击强化2
		if (isColor( 845,  646, 0xd6d6d7, 85) and 
			isColor( 840,  646, 0xcccccd, 85) and 
			isColor( 861,  660, 0xfcfcfc, 85) and 
			isColor(1057,  664, 0x86baff, 85) and 
			isColor(1021,  658, 0x7eb7ff, 85)) then
			tool.tap( 1030,  655)
			mSleep(1000)
		end

		--自动进入金陵
		if (isColor( 593,  626, 0x2d5683, 85) and 
			isColor( 611,  627, 0x7db7ff, 85) and 
			isColor( 640,  627, 0x7db7ff, 85) and 
			isColor( 667,  632, 0x7fb7ff, 85) and 
			isColor( 688,  623, 0x3d6999, 85) and 
			isColor( 713,  624, 0x103558, 85)) then

			tool.tap( 640,  627)
			mSleep(1000)
		end

		--正传放榜日
		if (isColor(1048,  203, 0x457616, 85) and 
			isColor(1047,  203, 0x304e3d, 85) and 
			isColor(1048,  199, 0x9eff1d, 85) and 
			isColor(1042,  199, 0x8bed0c, 85) and 
			isColor(1071,  202, 0x7cb6ff, 85) and 
			isColor(1079,  194, 0x84bbfe, 85) and 
			isColor(1099,  203, 0x5d87c1, 85)) then
			tool.tap(  1178,  204)
			mSleep(1000)

		end
		--拒绝垃圾组队
		if (isColor(1308,  195, 0x284354, 85) and 
			isColor(1305,  188, 0xeaf7fd, 85) and 
			isColor(1304,  187, 0xb6c7d1, 85) and 
			isColor(1310,  185, 0xeaf7fd, 85) and 
			isColor(1311,  182, 0xe6f4fa, 85) and 
			isColor(1268,  339, 0xffcd54, 85) and 
			isColor(1086,  356, 0x9fc4fe, 85)) then
			-- 1311,  185
			tool.tap(  1311,  185)
			mSleep(1000)


		end

		--关闭地图提示
		if (isColor(1180,  550, 0xb2c9ec, 85) and 
			isColor(1183,  548, 0xc4e4fa, 85) and 
			isColor(1183,  544, 0xb5d4f3, 85) and 
			isColor(1186,  540, 0x818bb9, 85) and 
			isColor(1179,  547, 0xc2e1f2, 85)) then
			tool.tap(   1265,   37)
			mSleep(1000)
		end

		--每次升级的师傅提示
		if (isColor( 423,  423, 0x90538b, 85) and 
			isColor( 423,  416, 0x915191, 85) and 
			isColor( 482,  440, 0x7eb7ff, 85) and 
			isColor( 518,  440, 0x213365, 85) and 
			isColor( 563,  432, 0x82baff, 85) and 
			isColor( 584,  451, 0x6d8fc9, 85)) then

			--  542,  366
			tool.tap(    542,  366)  --不再提示
			mSleep(1000)
			tool.tap(    552,  442)  --不需要师傅
			mSleep(1000)
		end


	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end


function useSkill(flag)
	if( flag == "7" ) then

		tool.tap(    1075,  566)
		mSleep(1000)	
		tool.tap(    1166,  481)
		mSleep(1000)	 
		tool.tap(    1287,  475)
		mSleep(1000)	
		tool.tap(   1201,  603)
		mSleep(1000)
		tool.tap(   1069,  687)
		mSleep(1000)
	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end




function zhuxianRenwu(flag)
	for i=6,1,-1 do
		closeDh(flag)
	end


	if (isColor( 584,  378, 0x71d0f7, 85) and 
		isColor( 587,  379, 0x4595c2, 85) and 
		isColor( 588,  373, 0x4188b2, 85) and 
		isColor( 587,  369, 0xcaf0ff, 85) and 
		isColor( 577,  382, 0x305677, 85) and 
		isColor( 588,  367, 0xbee9ff, 85)) then
		tool.tap(  587,  377)
	end


	--点击进入游戏
	if (isColor( 667,  631, 0x4d98f2, 85) and 
		isColor( 709,  626, 0x4287cf, 85) and 
		isColor( 690,  621, 0x74b5f4, 85) and 
		isColor( 646,  623, 0x4587d8, 85) and 
		isColor( 638,  625, 0xffffff, 85) and 
		isColor( 699,  618, 0xe5f1fd, 85)) then
		tool.tap( 646,  623)
		mSleep(1000)
	end

	--点击进入游戏
	if (isColor(1180,  666, 0x36689b, 85) and 
		isColor(1193,  662, 0x356ba0, 85) and 
		isColor(1231,  664, 0xa3beda, 85) and 
		isColor(1180,  662, 0x3873a0, 85) and 
		isColor(1158,  667, 0xb0c9dd, 85) and 
		isColor(1209,  666, 0xf6f8fb, 85) and 
		isColor(1233,  666, 0x3d74b1, 85)) then
		tool.tap( 1196,  663)
		mSleep(1000)
	end

	--实名认证
	if (isColor( 813,   51, 0x6aa8e7, 85) and 
		isColor( 814,   46, 0x62a8e5, 85) and 
		isColor( 813,   44, 0x5b86b5, 85) and 
		isColor( 656,  661, 0xf2f7fa, 85) and 
		isColor(1159,  267, 0x349acf, 85) and 
		isColor(1143,  267, 0xe3fbfd, 85) and 
		isColor(1150,  505, 0x3fb5e1, 85)) then
		num = math.random(1, 50)
		data = strSplit(shimingtable[num],",",3)  --data = {1,2,3}
		num = math.random(1, 50)
		data = strSplit(shimingtable[num],",",3)  --data = {1,2,3}


		touchDown(    344,  263)
		mSleep(300)
		touchUp(    344,  263)
		tool.tap(  344,  263,1)
		mSleep(2000)
		inputText(data[3]);
		mSleep(2000)
		tool.tap( 1077,  303)
		mSleep(2000)
		tool.tap( 537,  395,1)
		touchDown(     537,  395)
		mSleep(300)
		touchUp(      537,  395)
		mSleep(2000)
		inputText(data[2]);
		mSleep(2000)
		tool.tap( 1077,  303,1)
		mSleep(2000)
		touchDown(       344,  512)
		mSleep(300)
		touchUp(        344,  512)
		tool.tap(  408,  514,1)
		mSleep(2000)
		inputText("23"..data[1]);
		mSleep(2000)
		tool.tap( 1077,  303,1)
		mSleep(2000)

		tool.tap(  670,  657)
	end



	--离开按钮，在副本内
	if (isColor(1124,  146, 0x2894c8, 85) and 
		isColor(1124,  136, 0x201f2d, 85) and 
		isColor(1120,  131, 0x193c5f, 85) and 
		isColor(1114,  119, 0xf7ed95, 85) and 
		isColor(1133,  123, 0x1f1725, 85) and 
		isColor(1144,  126, 0xa2f13e, 85)) then


		--x, y = tsFindText(index正传, "湖心岛", 1194,0,  1304,   31, "6691A9 , 42412F", 80)

		--点击障眼法
		if (isColor(1175,  362, 0xa7bd58, 85) and 
			isColor(1185,  352, 0x526a1c, 85) and 
			isColor(1191,  347, 0xf5fae2, 85) and 
			isColor(1201,  348, 0xf3fda5, 85) and 
			isColor(1190,  337, 0xcfe46e, 85) and 
			isColor(1177,  338, 0x2a400d, 85)) then

			tool.tap(1190,  337)
		end

		--在湖心岛 点击地图
		if (isColor(1219,   24, 0xa9d4df, 85) and 
			isColor(1227,   19, 0xa1c9d4, 85) and 
			isColor(1236,   19, 0xa1c9d4, 85) and 
			isColor(1246,   24, 0xa0cbd8, 85) and 
			isColor(1278,   27, 0xadd6de, 85)) then


			x1, y1 = tsFindText(index正传, "一唱三叹",  122,  292,    225,  318,  "9C9E98 , 5B5A60 # 9C9E98 , 5B5A60 # A0A29C , 5F5E64",80)
			if( x1~=-1 and y1~=-1) then

				-- 1228,   79
				tool.tap(  1228,   79 )
				mSleep(2000)
				tool.tap(    850,  201 )
				mSleep(1000)

				tool.tap( 1264,   37)
			end


			if (isColor( 132,  213, 0xbc9403, 85) and 
				isColor( 134,  212, 0xf1c004, 85) and 
				isColor( 137,  213, 0xbc9403, 85) and 
				isColor( 162,  221, 0xfac601, 85) and 
				isColor( 158,  224, 0x434d1f, 85) and 
				isColor( 152,  230, 0xb0920a, 85)) then
				-- 1228,   79
				tool.tap(  1228,   79 )
				mSleep(2000)
				tool.tap(    850,  201 )

			end

		end
		--点击湖心岛目的地
		if (isColor( 846,  209, 0x953d4e, 85) and 
			isColor( 855,  205, 0xa64654, 85) and 
			isColor( 850,  195, 0xba4c55, 85) and 
			isColor( 856,  195, 0xa75c5a, 85) and 
			isColor( 851,  191, 0xc7555e, 85) and 
			isColor( 856,  191, 0xc7b093, 85)) then
			tool.tap(    854,  197 )
			mSleep(1000)
		end

		--湖心岛任务水莽 切换目标致怪
		if (isColor( 966,  618, 0xc7f3ff, 85) and 
			isColor( 969,  613, 0xd0f5ff, 85) and 
			isColor( 956,  598, 0xa2f5b3, 85) and 
			isColor( 967,  595, 0xa0f7a6, 85) and 
			isColor( 977,  597, 0xb8fbb9, 85)) then
			tool.tap(     963,  608 )
		end
		--boss 放技能
		if (isColor( 484,   83, 0xccfaff, 85) and 
			isColor( 494,   94, 0xc7f4f9, 85) and 
			isColor( 502,   97, 0xb7dfeb, 85) and 
			isColor( 518,   96, 0xbce5f0, 85) and 
			isColor( 523,   97, 0xc9f6fc, 85)) then

			for i=6,1,-1 do
				useSkill(flag)
			end

		end


		--兰若寺幻境
		if (isColor(1208,   11, 0xa8d2db, 85) and 
			isColor(1227,   16, 0x6f8fa0, 85) and 
			isColor(1246,   25, 0x8caab3, 85) and 
			isColor(1267,   23, 0xa7d3de, 85) and 
			isColor(1283,   23, 0xa2c7cf, 85) and 
			isColor(1291,   23, 0xaed8e0, 85)) then
			--点击地图
			tool.tap( 1248,   99)
			mSleep(1000)
			--点击放大镜
			if (isColor( 142,   69, 0xaa9fd6, 85) and 
				isColor( 140,   73, 0xa296cc, 85) and 
				isColor( 161,   80, 0xddb940, 85) and 
				isColor( 161,   75, 0xe2c666, 85) and 
				isColor( 143,   99, 0x3e7fb3, 85)) then

				tool.tap(   156,   76)
				mSleep(2000)
				--关闭地图

				--index兰若古刹
				x, y = tsFindText(index兰若古刹, "玫瑰花",   117,  116,   160,  417, "A92732 , 522331", 70)
				if(x==-1 and y ==-1) then
					x, y = tsFindText(index兰若古刹, "仙鹤",   117,  116,   160,  417, "D2AC8A , 243B41",70)
					if(x==-1 and y ==-1) then
						--找不到花关闭地图
						tool.tap( 1264,   35)
						mSleep(1000)

					else

						local startTime=os.time();
						while (true) do
							if (isColor(1138,  682, 0xd7ae5d, 85) and 
								isColor(1150,  682, 0xdca951, 85) and 
								isColor(1158,  671, 0xe5a152, 85) and 
								isColor(1169,   98, 0xeaf7fd, 85) and 
								isColor(1180,   88, 0xeaf7fd, 85) and 
								isColor(1172,  166, 0xc5c8aa, 85)) then
								tool.tap(  1174,   92 )
								break
							end
							local endTime=os.time();
							if(endTime-startTime>55) then
								if (isColor(1240,   29, 0x506b95, 85) and 
									isColor(1269,   18, 0x5ca7a2, 85) and 
									isColor(1276,   35, 0x52a39b, 85) and 
									isColor(1269,   50, 0x4c9592, 85) and 
									isColor(1261,   38, 0xf6feff, 85) and 
									isColor(1267,   34, 0xffffff, 85)) then
									tool.tap(  1263,   37 )
								end

								break;
							end
							tool.tap(  197,  133)
							mSleep(2000)
							closeDh(flag)
							tool.tap(    193,  193)
							mSleep(2000)
							closeDh(flag)
							tool.tap(      192,  244)
							mSleep(2000)
							closeDh(flag)
							tool.tap(   197,  293)
							mSleep(2000)
							closeDh(flag)
							tool.tap(    195,  349)
							mSleep(2000)
							closeDh(flag)
							tool.tap(     187,  399)
							closeDh(flag)
							moveTo(     192,  415  ,190, 50 ,{["step"] = 30,["ms"] = 50,["index"] = 1,["stop"] = true}) 
							mSleep(2000)

						end
					end


				else

					local startTime=os.time();
					while (true) do
						if (isColor(1138,  682, 0xd7ae5d, 85) and 
							isColor(1150,  682, 0xdca951, 85) and 
							isColor(1158,  671, 0xe5a152, 85) and 
							isColor(1169,   98, 0xeaf7fd, 85) and 
							isColor(1180,   88, 0xeaf7fd, 85) and 
							isColor(1172,  166, 0xc5c8aa, 85)) then
							tool.tap(  1174,   92 )
							break
						end
						local endTime=os.time();
						if(endTime-startTime>55) then
							if (isColor(1240,   29, 0x506b95, 85) and 
								isColor(1269,   18, 0x5ca7a2, 85) and 
								isColor(1276,   35, 0x52a39b, 85) and 
								isColor(1269,   50, 0x4c9592, 85) and 
								isColor(1261,   38, 0xf6feff, 85) and 
								isColor(1267,   34, 0xffffff, 85)) then
								tool.tap(  1263,   37 )
							end

							break;
						end
						tool.tap(  197,  133)
						mSleep(2000)
						closeDh(flag)
						tool.tap(    193,  193)
						mSleep(2000)
						closeDh(flag)
						tool.tap(      192,  244)
						mSleep(2000)
						closeDh(flag)
						tool.tap(   197,  293)
						mSleep(2000)
						closeDh(flag)
						tool.tap(    195,  349)
						mSleep(2000)
						closeDh(flag)
						tool.tap(     187,  399)
						closeDh(flag)
						moveTo(     192,  415  ,190, 50 ,{["step"] = 30,["ms"] = 50,["index"] = 1,["stop"] = true}) 
						mSleep(2000)

					end
				end



				--仙鹤
			end
		end



		--点击使用河灯
		if (isColor(1037,  488, 0x7db6ff, 85) and 
			isColor(1027,  499, 0x91bfff, 85) and 
			isColor(1046,  483, 0x80b8fe, 85) and 
			isColor(1052,  487, 0x7db6ff, 85) and 
			isColor(1062,  481, 0x82b9ff, 85)) then
			tool.tap( 1052,  487 )
			mSleep(1000)
		end

	end


	--点击使用河灯
	if (isColor(1037,  488, 0x7db6ff, 85) and 
		isColor(1027,  499, 0x91bfff, 85) and 
		isColor(1046,  483, 0x80b8fe, 85) and 
		isColor(1052,  487, 0x7db6ff, 85) and 
		isColor(1062,  481, 0x82b9ff, 85)) then
		tool.tap( 1052,  487 )
		mSleep(1000)
	end

	--正传浦水古村
	if (isColor( 301,  364, 0xc9e7ff, 85) and 
		isColor( 308,  362, 0x7a8079, 85) and 
		isColor( 302,  360, 0x3f4c44, 85) and 
		isColor( 307,  358, 0x9ec6e4, 85) and 
		isColor( 299,  361, 0xb5cdf0, 85)) then
		tool.tap(   115,  288 )
		mSleep(1000)
	end

	--正传浦水古村
	if (isColor( 301,  364, 0xc9e7ff, 85) and 
		isColor( 308,  362, 0x7a8079, 85) and 
		isColor( 302,  360, 0x3f4c44, 85) and 
		isColor( 307,  358, 0x9ec6e4, 85) and 
		isColor( 299,  361, 0xb5cdf0, 85)) then
		tool.click( 94,  268 )
		mSleep(1000)
	end

	if (isColor( 513,   43, 0x593833, 85) and 
		isColor( 506,   46, 0x605551, 85) and 
		isColor( 502,   46, 0x532c28, 85) and 
		isColor( 511,   36, 0x675e5a, 85) and 
		isColor( 502,   54, 0x412923, 85) and 
		isColor( 528,   36, 0x030406, 85)) then
		tool.tap(     144,  327 )

		mSleep(1000)
	end


	--包裹提示
	if (isColor(1156,  177, 0xbfd4f9, 85) and 
		isColor(1156,  176, 0xc8ddfe, 85) and 
		isColor(1156,  174, 0xffffff, 85) and 
		isColor(1158,  174, 0xffffff, 85) and 
		isColor(1209,  221, 0xff9745, 85) and 
		isColor(1211,  221, 0xff9845, 85)) then

		tool.tap(   1215,  224 )
		mSleep(1000)
	end

	--装备提示
	if (isColor( 881,  157, 0xf2e3e1, 85) and 
		isColor( 885,  151, 0x955a46, 85) and 
		isColor( 885,  145, 0xdd4810, 85) and 
		isColor( 893,  149, 0x8a4c3a, 85) and 
		isColor( 703,  164, 0xffffff, 85) and 
		isColor( 713,  167, 0xc8c8c8, 85)) then
		--  916,  181
		x = x + math.random(-2, 2)
		y = y + math.random(-2, 2)
		touchDown(  914,  187)
		mSleep(30)
		touchUp(  914,  187)
		mSleep(1000)  

	end
	--点击装备
	if (isColor(1052,  111, 0x81b9ff, 85) and 
		isColor(1075,  111, 0x0e3245, 85) and 
		isColor(1104,  111, 0x80b8fd, 85) and 
		isColor(1077,  104, 0x7eb6fe, 85) and 
		isColor(1093,  104, 0x6ea4e4, 85) and 
		isColor(1064,  101, 0x82baff, 85) and 
		isColor( 891,   84, 0xffffff, 85) and 
		isColor( 896,   84, 0xffffff, 85)) then
		-- 1055,  124
		tool.tap(  1055,  124 )
		x = x + math.random(-2, 2)
		y = y + math.random(-2, 2)
		touchDown( 1055,  124)
		mSleep(30)
		touchUp( 1055,  124)
		mSleep(1000) 
	end	

	--点击装备
	if (isColor(1051,  133, 0x73a2e7, 85) and 
		isColor(1048,  135, 0x39658c, 85) and 
		isColor(1060,  136, 0x18415a, 85) and 
		isColor(1047,  138, 0x10384a, 85) and 
		isColor(1041,  140, 0x639ade, 85) and 
		isColor(1055,  145, 0x84baff, 85)) then

		tool.tap(   1055,  130 )
		x = x + math.random(-2, 2)
		y = y + math.random(-2, 2)
		touchDown(  1055,  130)
		mSleep(30)
		touchUp(  1055,  130)
		mSleep(1000) 
	end


	if (isColor(1064,  149, 0x264d68, 85) and 
		isColor(1033,  139, 0x7db7ff, 85) and 
		isColor(1052,  130, 0x85bafe, 85) and 
		isColor(1073,  130, 0x85bafe, 85) and 
		isColor(1027,  136, 0x80b8fe, 85) and 
		isColor( 736,  151, 0xffffff, 85) and 
		isColor( 914,  100, 0x74a4bf, 85)) then
		-- 1055,  124
		tool.tap(  1055,  124 )
		x = x + math.random(-2, 2)
		y = y + math.random(-2, 2)
		touchDown( 1055,  124)
		mSleep(30)
		touchUp( 1055,  124)
		mSleep(1000) 
	end
	--点击关闭背包
	if (isColor(1231,   71, 0xd9e9f3, 85) and 
		isColor(1236,   66, 0xe9f6fd, 85) and 
		isColor(1233,   65, 0xeaf7fd, 85) and 
		isColor(1230,   69, 0xeaf7fd, 85) and 
		isColor(1237,   60, 0xdaeaf3, 85)) then
		tool.tap(1233,   65 )
		mSleep(1000) 
	end


	--这还有些药品
	if (isColor( 455,  159, 0xa6a6a6, 85) and 
		isColor( 458,  159, 0xb4b4b4, 85) and 
		isColor( 461,  159, 0xa8a8a8, 85) and 
		isColor( 460,  157, 0xeaeaea, 85) and 
		isColor( 460,  160, 0xe5e5e5, 85) and 
		isColor( 459,  159, 0xf6f6f6, 85)) then
		tool.tap(   717,  181 )
		x = x + math.random(-2, 2)
		y = y + math.random(-2, 2)
		touchDown(    717,  181)
		mSleep(30)
		touchUp(  717,  181)	

		if (isColor( 819,  185, 0x5d3930, 85) and 
			isColor( 810,  185, 0xde6564, 85) and 
			isColor( 813,  177, 0xfe6c92, 85) and 
			isColor( 820,  177, 0x75384e, 85) and 
			isColor( 805,  183, 0xf75b4d, 85)) then
			touchDown(      816,  181)
			mSleep(30)
			touchUp(   816,  181)
		end

	end



	--药品装备提示
	if (isColor( 710,  184, 0x814a40, 85) and 
		isColor( 716,  182, 0xcd5b60, 85) and 
		isColor( 718,  180, 0x82444a, 85) and 
		isColor( 707,  175, 0x96b1c1, 85) and 
		isColor( 690,  192, 0xdfe9e7, 85) and 
		isColor( 580,  166, 0xc1c3c8, 85) and 
		isColor( 582,  166, 0xd5d5d5, 85)) then
		tool.tap(  717,  181)
		x = x + math.random(-2, 2)
		y = y + math.random(-2, 2)
		touchDown( 717,  181)
		mSleep(30)
		touchUp(717,  181)
		mSleep(1000) 

		if (isColor( 819,  185, 0x5d3930, 85) and 
			isColor( 810,  185, 0xde6564, 85) and 
			isColor( 813,  177, 0xfe6c92, 85) and 
			isColor( 820,  177, 0x75384e, 85) and 
			isColor( 805,  183, 0xf75b4d, 85)) then
			touchDown(      816,  181)
			mSleep(30)
			touchUp(   816,  181)
		end
	end	
	--药品装备提示
	if (isColor( 812,  286, 0xd65100, 85) and 
		isColor( 823,  290, 0xef6121, 85) and 
		isColor( 826,  285, 0xff7521, 85) and 
		isColor( 798,  291, 0xc66129, 85) and 
		isColor( 832,  296, 0xc63400, 85) and 
		isColor( 801,  277, 0xff7131, 85)) then
		tool.tap(    817,  279)
		tool.click(     817,  279)
	end
	--点击装备药品
	if (isColor( 533,  334, 0x80b8ff, 85) and 
		isColor( 559,  334, 0x254e6b, 85) and 
		isColor( 564,  331, 0x7cb5fd, 85) and 
		isColor( 547,  331, 0x7cb6ff, 85) and 
		isColor( 352,  308, 0xe1e1e3, 85) and 
		isColor( 362,  318, 0xb9b9b9, 85) and 
		isColor( 368,  317, 0xffffff, 85)) then
		tool.tap(   557,  328)
		tool.click(   557,  328)
		mSleep(1000) 
	end
	--选择路畅   840,  333
	if (isColor( 561,  258, 0x315783, 85) and 
		isColor( 562,  252, 0x2f5583, 85) and 
		isColor( 565,  252, 0x5c7491, 85) and 
		isColor( 574,  252, 0x4b738a, 85) and 
		isColor( 574,  250, 0x608ea2, 85) and 
		isColor( 573,  251, 0xabf6fe, 85)) then
		--  665,  448
		tool.tap(  840,  333)
		mSleep(1000) 
		tool.tap(  665,  448)
		mSleep(1000) 
	end
	--点击阿初眼睛
	if (isColor(1189,  350, 0xfcffec, 85) and 
		isColor(1161,  349, 0x24320e, 85) and 
		isColor(1163,  342, 0x253b09, 85) and 
		isColor(1166,  337, 0x354705, 85) and 
		isColor(1183,  328, 0x4e7002, 85) and 
		isColor(1190,  343, 0x1e3503, 85) and 
		isColor(1197,  358, 0xe1f293, 85)) then
		-- 1190,  349
		tool.tap( 1190,  349)
		mSleep(1000)
	end

	--轻抚玉佩飞行
	if (isColor(1198,  356, 0xa3b97a, 85) and 
		isColor(1203,  359, 0xa7c184, 85) and 
		isColor(1192,  357, 0xa2b975, 85) and 
		isColor(1196,  355, 0xa8ba82, 85) and 
		isColor(1206,  346, 0xda0c05, 85) and 
		isColor(1207,  348, 0xda1008, 85)) then
		local startTime=os.time();
		while (		true) do
			local endTime=os.time();
			if(endTime-startTime>10) then
				break;
			end
			tool.tap(  1190,  354)
			mSleep(1000)


		end
	end

	--选择小鸡	
	if (isColor( 512,  368, 0x3b2923, 85) and 
		isColor( 515,  360, 0xca9050, 85) and 
		isColor( 502,  358, 0xfaedac, 85) and 
		isColor( 503,  346, 0xeee4a7, 85) and 
		isColor( 525,  310, 0x91d181, 85) and 
		isColor( 516,  304, 0x7ebd72, 85) and 
		isColor( 500,  299, 0x6aa86e, 85)) then
		tool.click(   498,  408)
		mSleep(1000)
	end
	--这是灵兽元神
	if (isColor( 720,  294, 0xfff7e7, 85) and 
		isColor( 713,  294, 0xfff3ce, 85) and 
		isColor( 716,  288, 0xdea642, 85) and 
		isColor( 727,  283, 0xffdb7b, 85) and 
		isColor( 719,  266, 0x8cfb4a, 85)) then
		tool.tap(723,  295)
		tool.click(723,  295)
	end

	--点击小鸡
	if (isColor( 749,  238, 0xc9e9ff, 85) and 
		isColor( 748,  235, 0xc7efff, 85) and 
		isColor( 753,  235, 0xbbdbff, 85) and 
		isColor( 751,  235, 0xd5ffff, 85) and 
		isColor( 752,  241, 0x90a6cc, 85)) then
		--  818,  288
		tool.click(    818,  288)
		mSleep(1000)
	end
	--点击小鸡
	if (isColor( 484,  257, 0xdcdcdc, 85) and 
		isColor( 483,  264, 0xeeeeee, 85) and 
		isColor( 689,  275, 0xf4f4f4, 85) and 
		isColor( 808,  292, 0xe7b951, 85) and 
		isColor( 815,  288, 0xe6b853, 85) and 
		isColor( 809,  263, 0x80ee4c, 85)) then
		tool.click(   815,  283)
		mSleep(1000)
	end

	--点击小鸡
	if (isColor( 813,  302, 0xe8ba4d, 85) and 
		isColor( 819,  293, 0x988d7c, 85) and 
		isColor( 826,  294, 0xfcd65e, 85) and 
		isColor( 815,  292, 0x0f0e0b, 85) and 
		isColor( 796,  273, 0x8df84a, 85)) then
		tool.click(796,  273)
	end


	--召唤灵兽
	if (isColor( 653,  321, 0xc2d3f2, 85) and 
		isColor( 653,  320, 0xc3d5f6, 85) and 
		isColor( 655,  320, 0xc6dffa, 85) and 
		isColor( 654,  318, 0xc9defe, 85) and 
		isColor( 652,  317, 0xb3c0f0, 85) and 
		isColor( 656,  318, 0xb1e0fa, 85)) then
		tool.tap(   550,  268)
		mSleep(1000)
	end
	--点击药
	if (isColor( 848,  237, 0x9ad7fa, 85) and 
		isColor( 851,  237, 0xc8e9ff, 85) and 
		isColor( 852,  236, 0xd2f4ff, 85) and 
		isColor( 852,  231, 0x90a2cd, 85) and 
		isColor( 848,  235, 0xd4fcff, 85)) then
		--  913,  291
		tool.tap( 913,  291)
		tool.click(913,  291)
		mSleep(1000)
	end
	--点击自动配药按钮
	if (isColor( 655,  406, 0xb0ddf7, 85) and 
		isColor( 655,  407, 0xa3d9f5, 85) and 
		isColor( 654,  407, 0xbfdff9, 85) and 
		isColor( 651,  407, 0xbcd1fd, 85) and 
		isColor( 650,  400, 0x8087c0, 85)) then
		tool.tap(552,  357)
		tool.click(552,  357)
		mSleep(1000)
	end

	--自动药品
	if (isColor( 785,  259, 0xffffff, 85) and 
		isColor( 786,  263, 0x929292, 85) and 
		isColor( 750,  260, 0x717171, 85) and 
		isColor( 731,  260, 0xf5f5f5, 85) and 
		isColor( 700,  267, 0xabacaf, 85) and 
		isColor( 690,  263, 0x776a66, 85) and 
		isColor( 549,  301, 0xbabbbe, 85)) then
		tool.tap( 914,  279)
		tool.click(914,  279)
		mSleep(1000)
	end


	--点击
	if (isColor( 511,  334, 0xbbd6f8, 85) and 
		isColor( 514,  335, 0xc6e3fb, 85) and 
		isColor( 516,  335, 0x8fabc5, 85) and 
		isColor( 514,  335, 0xc6e3fb, 85) and 
		isColor( 511,  331, 0xa1b1dc, 85)) then
		--  444,  288
		tool.tap(444,  288)
		mSleep(1000)
	end

	--点击一品豆腐
	if (isColor( 417,  264, 0xcce8fd, 85) and 
		isColor( 416,  265, 0xffffff, 85) and 
		isColor( 420,  267, 0xadd2ee, 85) and 
		isColor( 420,  263, 0xb9d6e6, 85) and 
		isColor( 417,  264, 0xcce8fd, 85) and 
		isColor( 416,  268, 0xc5e2f5, 85)) then
		--  127,  236
		tool.tap(127,  236)
		tool.click(127,  236)
		mSleep(1000)
	end

	--点击自动发力
	if (isColor( 515,  524, 0xcdebfe, 85) and 
		isColor( 514,  521, 0xc1d7f8, 85) and 
		isColor( 511,  520, 0x9eb0db, 85) and 
		isColor( 513,  520, 0xafc2ea, 85) and 
		isColor( 520,  522, 0x9ed5f2, 85)) then
		tool.tap(  450,  479)
		tool.click(450,  479)
		mSleep(1000)
	end
	--关闭药品配置
	if (isColor( 964,  172, 0xa2b0cb, 85) and 
		isColor( 975,  166, 0x2d496a, 85) and 
		isColor( 979,  153, 0x96aab4, 85) and 
		isColor( 986,  147, 0x92a6b2, 85) and 
		isColor( 992,  142, 0xb2c1c9, 85) and 
		isColor( 983,  147, 0xeaf7fd, 85)) then
		tool.tap(    984,  151)
		mSleep(1000)
	end
	--点击推门
	if (isColor( 645,  309, 0xfff8ef, 85) and 
		isColor( 637,  319, 0xfff7ef, 85) and 
		isColor( 633,  336, 0xfff8ee, 85) and 
		isColor( 634,  353, 0xfef9ea, 85) and 
		isColor( 680,  343, 0x5f524b, 85)) then

		tool.tap(     680,  343)
		mSleep(1000)
	end
	--离开副本是否继续按钮
	if (isColor( 796,  446, 0xf2cc73, 85) and 
		isColor( 802,  446, 0x573b16, 85) and 
		isColor( 814,  448, 0x402508, 85) and 
		isColor( 827,  441, 0x735628, 85) and 
		isColor( 833,  440, 0x3e2407, 85) and 
		isColor( 848,  439, 0xfeda84, 85)) then
		tool.tap(   814,  448)
		mSleep(1000)
	end

	--纸鸢奇迹
	if (isColor(1042,  444, 0xa3f647, 85) and 
		isColor(1052,  443, 0xbcfa9d, 85) and 
		isColor(1051,  438, 0xcafc94, 85) and 
		isColor(1042,  437, 0x83e014, 85) and 
		isColor(1069,  442, 0x7eb7ff, 85) and 
		isColor(1085,  442, 0x7eb7ff, 85)) then

		tool.tap(   1085,  442)
		mSleep(1000)
	end

	--该账号已在线点击确定
	if (isColor( 796,  449, 0x391c00, 85) and 
		isColor( 821,  447, 0xffd77b, 85) and 
		isColor( 852,  437, 0xffdb84, 85) and 
		isColor( 790,  433, 0xffdb8c, 85) and 
		isColor( 778,  452, 0xffdb7b, 85)) then
		tool.tap(   852,  437)
		mSleep(1000)
	end

	--点阿初
	x, y = tsFindText(index阿初, "阿初",   937,  414,  1104,  466, "AEAFB4 , 52504B", 90)

	if(x~=-1 and y ~=-1) then

		tool.tap(  x, y )
		mSleep(1000)
	end


	--点击幻境手
	if (isColor( 579,  405, 0xe5c69a, 85) and 
		isColor( 585,  397, 0xf8ecca, 85) and 
		isColor( 662,  422, 0xb1a524, 85) and 
		isColor( 653,  419, 0xc1b31f, 85) and 
		isColor( 599,  383, 0xf7f3e3, 85)) then
		tool.tap(   665,  378 )
		mSleep(1000)
	end

	--点击正传
	if (isColor(1042,  384, 0x9ff53f, 85) and 
		isColor(1040,  385, 0x92fb0f, 85) and 
		isColor(1044,  386, 0x98dd56, 85) and 
		isColor(1045,  383, 0x7ebce9, 85) and 
		isColor(1050,  381, 0x93fe08, 85) and 
		isColor(1050,  387, 0x9ffe24, 85)) then
		tool.tap( 1176,  379 )
		mSleep(1000)
	end

	--麦克风权限
	if (isColor( 793,  478, 0x007aff, 85) and 
		isColor( 796,  472, 0x007aff, 85) and 
		isColor( 792,  463, 0x007aff, 85) and 
		isColor( 809,  468, 0x007aff, 85) and 
		isColor( 804,  485, 0x007aff, 85)) then
		tool.tap(  798,  472 )
		mSleep(1000 )
	end


	--暂时忽悠白蝶
	if (isColor( 500,  479, 0x0f3456, 85) and 
		isColor( 469,  476, 0x4b7bb1, 85) and 
		isColor( 487,  472, 0x81b9fe, 85) and 
		isColor( 511,  471, 0x79afef, 85) and 
		isColor( 527,  481, 0x7fb8ff, 85) and 
		isColor( 495,  483, 0x315b88, 85)) then
		tool.tap( 511,  471 )
		mSleep( 202)
	end

	--麦克风震动
	if (isColor( 679,  523, 0xe9ea9a, 85) and 
		isColor( 661,  518, 0xeef4f6, 85) and 
		isColor( 663,  520, 0xdeeaf0, 85) and 
		isColor( 651,  516, 0xb8c323, 85) and 
		isColor( 664,  502, 0xdce9ee, 85) and 
		isColor( 668,  490, 0xfdfefe, 85)) then

		for var = 1,5 do
			vibrator();                --振动
			mSleep(1000);            --延迟 1 秒
		end
	end

	--丹青答题
	if (isColor( 555,  140, 0x5180b4, 85) and 
		isColor( 573,  144, 0x466b99, 85) and 
		isColor( 554,  147, 0x55779f, 85) and 
		isColor( 664,  141, 0xedeff1, 85) and 
		isColor( 721,  143, 0x496e9b, 85) and 
		isColor( 743,  145, 0xa5b7ce, 85) and 
		isColor( 788,  145, 0x6f92bb, 85) and 
		isColor( 774,  141, 0x6e97c1, 85)) then
		x, y = tsFindText(index丹青谜题, "乌黑长发",   496,  169,   591,  203, "889DAB , 5A5E56", 80)
		if(x~=-1 and y ~=-1) then
			--  392,  414    483,  461
			--    695,  420     773,  465
			--  389,  494   458,  535
			--  701,  494      769,  531

			x1, y1 = tsFindText(index丹青谜题, "础石",392,  414  ,  483,  461, "6BAFCB , 3D4631", 80)
			if(x1~=-1 and y1 ~=-1) then  
				tool.tap(x1,y1)
			end
			x1, y1 = tsFindText(index丹青谜题, "础石", 695,  420   ,  773,  465, "6BAFCB , 3D4631", 80)
			if(x1~=-1 and y1 ~=-1) then  
				tool.tap(x1,y1)
			end

			x1, y1 = tsFindText(index丹青谜题, "础石",389,  494 ,  458,  535, "6BAFCB , 3D4631", 80)
			if(x1~=-1 and y1 ~=-1) then  
				tool.tap(x1,y1)
			end

			x1, y1 = tsFindText(index丹青谜题, "础石",701,  494  ,    769,  531, "6BAFCB , 3D4631", 80)
			if(x1~=-1 and y1 ~=-1) then  
				tool.tap(x1,y1)
			end
		else
			x, y = tsFindText(index丹青谜题, "脸颊",    756,  174,    805,  200, "889DAB , 5A5E56", 80)
			if(x~=-1 and y ~=-1) then
				--  392,  414    483,  461
				--    695,  420     773,  465
				--  389,  494   458,  535
				--  701,  494      769,  531

				x1, y1 = tsFindText(index丹青谜题, "胭脂",392,  414  ,  483,  461, "6BAFCB , 3D4631", 80)
				if(x1~=-1 and y1 ~=-1) then  
					tool.tap(x1,y1)
				end
				x1, y1 = tsFindText(index丹青谜题, "胭脂", 695,  420   ,  773,  465, "6BAFCB , 3D4631", 80)
				if(x1~=-1 and y1 ~=-1) then  
					tool.tap(x1,y1)
				end

				x1, y1 = tsFindText(index丹青谜题, "胭脂",389,  494 ,  458,  535, "6BAFCB , 3D4631", 80)
				if(x1~=-1 and y1 ~=-1) then  
					tool.tap(x1,y1)
				end

				x1, y1 = tsFindText(index丹青谜题, "胭脂",701,  494  ,    769,  531, "6BAFCB , 3D4631", 80)
				if(x1~=-1 and y1 ~=-1) then  
					tool.tap(x1,y1)
				end
			else

			end
		end

	end


	--修复画像
	if (isColor(1273,   50, 0xffffff, 85) and 
		isColor(1279,   41, 0xffffff, 85) and 
		isColor( 964,   15, 0x49a691, 85) and 
		isColor( 958,   11, 0x63c4b5, 85) and 
		isColor( 348,   14, 0x65bbb0, 85) and 
		isColor( 354,   14, 0x72c2bb, 85) and 
		isColor( 354,  723, 0x78c6c0, 85) and 
		isColor( 965,  524, 0x4c6084, 85)) then
		math.randomseed(getRndNum())  


		for i=23,1,-1 do
			numx1 = math.random(  371,   944)
			numy1 = math.random(29, 712)
			numx2 = math.random(  371,   944)
			numy2 = math.random(29, 712)
			moveTo(numx1,numy1,numx2,numy2,{["step"] = 20,["ms"] = 70,["index"] = 1,["stop"] = true})  
			mSleep(200)
		end
	end
	--点击显示画面
	if (isColor(1127,  636, 0x4476b6, 85) and 
		isColor(1136,  640, 0xe0f8ff, 85) and 
		isColor(1193,  646, 0x4c7fbf, 85) and 
		isColor(1192,  634, 0xd3edf9, 85) and 
		isColor(1184,  642, 0x4b7fbc, 85)) then
		tool.tap(  1165,  643)
		mSleep( 202)
	end

	--点击进入 天王殿
	if (isColor(1250,  502, 0x7eb7ff, 85) and 
		isColor(1272,  498, 0x7db7ff, 85) and 
		isColor(1062,  502, 0x7eb7ff, 85) and 
		isColor(1080,  499, 0x7eb7ff, 85) and 
		isColor(1085,  514, 0x9bc3fe, 85)) then
		tool.tap(   1166,  497)
		mSleep( 202)
	end

	--点击好感度
	if (isColor( 190,   38, 0xffffff, 85) and 
		isColor( 207,   39, 0xc4bfc0, 85) and 
		isColor( 213,   50, 0xe0e0e1, 85) and 
		isColor( 222,   41, 0xf7f7f7, 85) and 
		isColor( 137,   50, 0xa6f9ff, 85)) then
		tool.tap(     68,   52)
		mSleep( 202)
	end

	--点击角色成就
	if (isColor(1127,  452, 0xdbdcdc, 85) and 
		isColor(1132,  452, 0xf1f1f2, 85) and 
		isColor(1125,  435, 0xffffff, 85) and 
		isColor(1130,  419, 0x76a7c8, 85) and 
		isColor(1132,  414, 0x86bddb, 85)) then
		-- 1233,  442
		tool.tap(1233,  442)
		mSleep( 202)
	end

	--点击好感度灯笼
	if (isColor( 167,  545, 0xf9f9f9, 85) and 
		isColor( 170,  543, 0xeeeeee, 85) and 
		isColor( 217,  543, 0xffffff, 85) and 
		isColor( 154,  575, 0xffffff, 85) and 
		isColor(  47,  586, 0xf7b97c, 85) and 
		isColor(  64,  580, 0xf5b77c, 85)) then
		tool.tap(   54,  570)
		mSleep( 202)
	end

	--点击头像切换阿初

	if (isColor( 224,  318, 0xf5f5f6, 85) and 
		isColor( 224,  327, 0xafafaf, 85) and 
		isColor( 234,  328, 0xa8a8a8, 85) and 
		isColor( 279,  339, 0xcdcdcd, 85) and 
		isColor( 380,  329, 0xffffff, 85) and 
		isColor( 450,  319, 0xfcfcfc, 85) and 
		isColor( 449,  319, 0x979a9d, 85)) then
		tool.tap(    109,  333)
		mSleep( 202)
	end

	--阿初个人档案
	if (isColor( 997,  248, 0xf9f9f9, 85) and 
		isColor(1028,  226, 0xbebfc1, 85) and 
		isColor(1033,  228, 0xeeeeee, 85) and 
		isColor(1086,  227, 0xdbdbdb, 85) and 
		isColor(1152,  223, 0xfdfdfd, 85)) then
		tool.tap(  1281,  246)
		mSleep( 202)
	end

	--赠送阿初礼物
	if (isColor(1056,  486, 0xffffff, 85) and 
		isColor(1059,  486, 0xbabbbd, 85) and 
		isColor(1073,  505, 0xffffff, 85) and 
		isColor(1086,  528, 0xdddddd, 85) and 
		isColor(1069,  528, 0x454a55, 85) and 
		isColor(1071,  523, 0xf0f0f0, 85)) then
		tool.tap(   1280,  517)
		mSleep( 202)
	end
	--好感度详细说明
	if (isColor( 227,   40, 0xffffff, 85) and 
		isColor( 265,   55, 0xffffff, 85) and 
		isColor( 289,   76, 0x8b8c8d, 85) and 
		isColor( 290,   78, 0xffffff, 85) and 
		isColor( 291,   84, 0x707070, 85) and 
		isColor( 278,   85, 0xffffff, 85)) then
		tool.tap(    144,   15)
		mSleep( 202)
	end

	--关闭好感度界面
	if (isColor(  76,   16, 0xe3f6fb, 85) and 
		isColor( 101,   16, 0xa1adcd, 85) and 
		isColor(  71,   12, 0x594a6d, 85) and 
		isColor(  46,   11, 0xf3e4f0, 85) and 
		isColor(1095,  622, 0xde871b, 85) and 
		isColor(1281,   19, 0xfeffff, 85) and 
		isColor(1287,   18, 0xffffff, 85)) then

		tool.tap(   1283,   20)
		mSleep( 202)
	end 


	--烤小猪提示
	if (isColor( 164,  223, 0xffffff, 85) and 
		isColor( 158,  232, 0x939393, 85) and 
		isColor(  43,  212, 0xfefefe, 85) and 
		isColor(  55,  215, 0xffffff, 85) and 
		isColor( 308,  182, 0xe6a950, 85)) then

		tool.tap(   312,  196)
		mSleep( 202)
	end

	--烤猪挨个点
	if (isColor( 867,  523, 0xac975e, 85) and 
		isColor( 849,  511, 0xd2c482, 85) and 
		isColor( 838,  500, 0xddca87, 85) and 
		isColor( 859,  497, 0x9f3414, 85) and 
		isColor( 876,  498, 0x972e0d, 85)) then


		local startTime=os.time();
		while (		true) do
			local endTime=os.time();
			if(endTime-startTime>15) then
				break;
			end
			x,y = findMultiColorInRegionFuzzy( 0xb6b9be, "10|-3|0xb6b9be,-5|-60|0xb6b9be,2|-56|0x53427d,7|-56|0xaeaebb", 90, 0, 0, 1333, 749)
			if(x~=-1 and y ~=-1) then

				touchDown( x, y );    
				mSleep(30);

				touchUp( x, y );
			else
				x,y = findMultiColorInRegionFuzzy( 0x8b78a3, "0|3|0xa089c0,-2|3|0x71569d,-2|2|0xb8a6d0", 90, 0, 0, 1333, 749)
				if(x~=-1 and y ~=-1) then

					touchDown( x, y );    
					mSleep(30);

					touchUp( x, y );

				end
			end

			x,y = findMultiColorInRegionFuzzy( 0xeec810, "20|-11|0xe1ba0e,31|-8|0xeecd11,15|-7|0xf7d60c", 90, 0, 0, 1333, 749)
			if(x~=-1 and y ~=-1) then

				touchDown( x, y );    
				mSleep(30);

				touchUp( x, y );

			end
		end

	end



	getWhichRenwu(flag);
end


function guaji(flag)
	if( flag == "7" ) then
		--兰若寺 x 36 ,y 23   x 60 y 18   x58,y49
	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end


--活动
local tab活动 = {
	"000020001f7fff87ff804667f4667f466634666347fe347fe3466637e6637e67f00600000001ffe03ffe0000010000100001fffff00000000000000000e000fc0000000fffff080000e000068002180024bff24bff24a4824a4824a48ffa48ffa4825a4824a4924a4924bff24bff24800008000000000000080010c0012c0096dfc96d2c96d2496d2496d2496d2496d2d97ffff6d2d94d2494d2494d249cd249cd249cdfc90dfc90c0090c0010000000000000000300181007c181ec0c78600e120001000ff7f9ffffd81ccd81ccdffccdffccd81ccd81ccdffccde3ccd81ffd817f9ff0000300001$剧情重温$725$20$93",
	"004001e4001860010680106c010670106381061810600d0601f0601306011060113fff13fff1060010600106001e6001e600004000000000000000007ffe17ffe36000e600fc6ffe0600186000e7ffe3000010400c0c0180c0700c0e00c3c10c7010fc01ffffffffff0c0000c000040000000000000040010438107fc37f8c6fc07c04038041f807fcc07e0400001300033e0033fc0630f8c301f8300f8301fc30f8e3fc073e00300001$守财奴$432$20$68",
	"0060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000020000000000000030002201062430c6460c6461865c3c450fec40f6841338c131bff338c03384036c403c4583864c10646006470024300200002000000000000000000200102003020060200c02038021f007fc3ffc0266006020040200c03fff0203b42071620e1321c11a30102601024010200702006$一条龙$292$20$69",
	"0000200303603066c3066730c63b186033860370603e0783c05ffff47fffc03c0c03e0c0330c1b38c3b1cce30c9c306003060030300000000000000020860218c023180263ff24e0020d01fbd3f20d3c20d202fd2020d2220d3e23d0e6018df87812ffc3248fe2083c209f620f8320801$采薇$328$20$45",
	"1ffc1000030000f000fcffff0000000000063ffc63ffc6200062000620007ffff7ffff62000620086200c63ff863ff86000000000000000000007fff07fffc00007000038000000000000040000400004000040000400004000040000400014000140001600017ffff7ffff0000000000000000100001000c100261fff31ffe0000c0001b00093ff886ffc8cccc98cccb0ccce0ffffffffffccde0cccb0ccc98ffc8cff88600083000000000000000000030700303c0300f83003830000300003fffff00003000030000300003ffffffffff00003001c30078301e03078030600300003$师门课业$568$20$91",
	"030066181e6183c30cf0300c00300033000331ff331fe23186231867ff867ff866318663186e31fec31fe430fe03000000000000006002060060600e0601c06038060f0067c0fff80ff80006000060020600206002060020600e06ffe07ff8060000000000000000000000000000000000000001fc007ff01f7f81c61c30c0c30c0e30c0c3873c187f8103f00000003fc00fff81e0783800c3000c3000c3800c1f07c0fff803fc000000000030003f000f800fe007e003f00078000000000000003fe00fff81c63c3840c30c0c30c0c30e0c387fc187f8000000000007fe01fff81c03c3000c3000e3000c3c01c1fff80fff0$活力60$615$20$97",

}
local index活动 = addTSOcrDictEx(tab活动)


--识别活动
function findhuodong(flag,huodong)
	if( flag == "7" ) then

		x, y = tsFindText(index活动, huodong,  382,  116,   1218,  640, "BEC4CF , 463F34", 80)

		return x,y
	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end


--日常任务
local tab日常任务 = {
	"7ffff7ffff6030360303603036030360303603036030360303603036030360303603037ffff7ffff000000000000000000000000000000000000f8001f83fdc03ffc0307df301df301d9301d9301d930fd9fffd9fffd9ff1d9301d9301d9313df31fdf31dc03f1c03f1f8000f80000000000000060000f0001e0003c000ffff1ffff7c000f0300d830118301183011030130301303013ffff3ffff3ffff703016030160301603016030100301003000000000000003000230007760066610c6611c6613c66376667f3c7eb3cfc31df031de031c6033c6033c60366603e6603c6633867f1067f0070000600$日常任务$717$20$94",
}
local index日常任务 = addTSOcrDictEx(tab日常任务)


--入门仪式
local tab入门仪式 = {
	"7ffff4000040000400000000000000080c0181801830098700f8fff7be001f3000c180000001ffe01ffe018c4018c4018c40ffffffffff18c4018c4018c401ffe01ffe00000000000000000c0700c1e00c7800fc00ffffffffff0dc000c6010c3070001e7fff87ffc0600004000040000400007ffff7ffff00001000010001f00000000000000023c0027c002603f2603f26fb3fefb3fe9b3269b3269b3269b3269b3269b3269b3fe9b3fedb366fb326fb32603f27c0027c002000000000000004000040000400007ffff000000000000000000000000100003000070000e0001c0003840070601e070f801fe000f8000780001e0000780003e0000f0000380001c0000e00007000030000000000000000ffff0ffffc0000e0000300001000000000c0000c0000c0000c0000c0000c0000c0000c0001c0001c0001c0001ffffffffff00000000000000000c0003800070001ffff3fffff000080001000037c0033f80603e060078cc01f8700703c0f8081dc0078e03e063f8037c003000010000000000000000c0030c6030c6030c6020c6060c7fe0c7fe0c6040c60c0c60c0c60c0c00cffc00fffc00c3f88c03ecc0076c0037c0012c00f0c01f$入门仪式$1066$20$177",
}
local index入门仪式 = addTSOcrDictEx(tab入门仪式)





--内容已复制到剪贴板!
local tab任务合集 = {
	"3ffff7ffff60000600006000000000000000c0600c0c00c1c06c3ff7c7ff3ff800f9c00f0c0000400fff80fff80c6700c6700c670fffff7ffff0c6700c6700c6700fff00fff000000000000001006038060f0067c007f00fffff7ffff06e0006781061870001f3fffe3ffe0300003000030000300003ffff3ffff00000000010000f0000c000000000033e0033e003301f3301f337d97f7d97f6d9336d9336d9336d9336d9336d9336d97f6d9ff6d9337d9337df3301f33e1f33e001000000000200006000060000700007ffff000000000000000000000c0010c0070ffff0fff87ff007c6001c6000c7ff0c7ff0c30004f0103e033fe03fff867e3fe0607c061fe06fc707f0307001060010400000000000006000060000600006000060000600006000060000600006000060000600007fe007fff801ffe03e1f077030e3011c181181df0009f00000000000000c001fc007f000780000000000001fff21fff7000138000180000e0000e00007000020010000f0001f00e0c00f80003f0000f80001800000000000000f3ffff7fffc600036006f6fecc6ffc06d78f6d76f6d6607d6787d7fc7d7ce6d6066d6006d7836d7c36fedc6fe6e60047$放飞心愿$1285$20$177",
	"3ffff7ffff60000600006000000000000000c0600c0c00c1c06c3ff7c7ff3ff800f9c00f0c0000400fff80fff80c6700c6700c670fffff7ffff0c6700c6700c6700fff00fff000000000000001006038060f0067c007f00fffff7ffff06e0006781061870001f3fffe3ffe0300003000030000300003ffff3ffff00000000010000f0000c000000000033e0033e003301f3301f337d97f7d97f6d9336d9336d9336d9336d9336d9336d97f6d9ff6d9337d9337df3301f33e1f33e001000000000200006000060000700007ffff0000000000000000000018cc618cde1fcf81fcc078fff78fff39fff1fcd01fcfc18cce18cc70007f3fffe30c0030c0030c0020c0060fff60fff60c0000c0000c0000000000000ffff0ffff0c3063c306fc3066c3060c3060fffe0fffe01c0003c001f2007c7007c3c10c1e10c0610c0210c0070ffff0fffc00000000000000000803189ff189fc1881e19807fffff19fff188c1188c1188c10084120fe160ff960ff960c1960c1960c1960c197fc197fcf9000f9000010000000000000000000300fef01fee01fe001860018640186f018677f860ff860198601986f19867198601986019fe819fee1800718003$新的起点$1385$20$177",
	"3ffff7ffff60000600006000000000000000c0600c0c00c1c06c3ff7c7ff3ff800f9c00f0c0000400fff80fff80c6700c6700c670fffff7ffff0c6700c6700c6700fff00fff000000000000001006038060f0067c007f00fffff7ffff06e0006781061870001f3fffe3ffe0300003000030000300003ffff3ffff00000000010000f0000c000000000033e0033e003301f3301f337d97f7d97f6d9336d9336d9336d9336d9336d9336d97f6d9ff6d9337d9337df3301f33e1f33e001000000000200006000060000700007ffff$神机营$663$20$82",
	"0ff81fff1c63dc206c3036181b0e0dc3fe61fe0000000003ff07ffe3807b000d8007c00378039fff87ff8$60活力$155$17$20",

}
local index任务合集 = addTSOcrDictEx(tab任务合集)


--师门任务仁爱
local tab仁爱 = {
	"01000030000300006000060000ffff1ffff300006000000030000300102001020010200102001020010200102001020010200102001020010200002000020000000000000000000000000003e0003c06030060300c122183a2304e260422e3427e242ea67be944229cc2298c26fcca6e41a6c602606020070300303e030000300001$仁爱$219$20$52",
}
local index仁爱 = addTSOcrDictEx(tab仁爱)



--师门
local tab师门 = {
	"7ffff7ffff7ffff70000700000000000000000001ffe01ffe1000070007fffffeffff8200007000073ffe73ffe73000730007ffff7ffff7ffff7300c7300e73ffe73ffc73ffc0000000000000000000007fffe7ffff00007c0001c0000800070000700007000070000700007000070000700007000070000700007ffff7ffff00000000000000070000700007ffff7ffff7ffff$师门$478$20$59",
    "180001800018000187ff187ff1860618606186063860638606386063860618606387fe387fe38000380003800038000380003ffff3ffff380003800038000100000000000000000000000000000000001ffff1ffff00001000010000100003000031c0060e0060780003c0000c000000000001000070003f001ff3ffe13fe0030000000000000000000000000000000000002040060c0060c06618066380e6700e6681e7c83e7983671967e19c7e31462330666306666066462670c3678c3e7c01c6e00c6710e631076180361c0060c0060c$可以参加新活动$473$20$84",

}
local index师门 = addTSOcrDictEx(tab师门)

--上交按钮
local tab上交 = {
	"0000000000000000000000000000000000000000000000000000000fffff00400004000040000400004000040000400004000040000400004000000000000000000000000000080000818008100082000860008c000980009180080600803188009c8006780060800f0801908060091c0090000880008c0008600083000818008000$上交$108$20$52",
}
local index上交 = addTSOcrDictEx(tab上交)




smCount=0;

--师门任务
function shimen(flag)
	if( flag == "7" ) then
		--学分达到30
		if (isColor( 633,  300, 0xd0e8f3, 85) and 
			isColor( 636,  304, 0xbed7e5, 85) and 
			isColor( 629,  318, 0xcde6f0, 85) and 
			isColor( 638,  434, 0x84bbfe, 85) and 
			isColor( 663,  437, 0x80b8fe, 85) and 
			isColor( 665,  437, 0x80b8fe, 85) and 
			isColor( 665,  437, 0x80b8fe, 85)) then
			tool.tap(   672,  442 )
			mSleep(1000)
			nowStatus="主线任务"
			return true;
		end


		for i=10,1,-1 do
			closeDh(flag)

		end





		if(smCount>10) then
			--离开副本
			tool.tap(   1130,  130 ) 
			mSleep(1000)

			--确定离开
			if (isColor( 831,  446, 0x351b01, 85) and 
				isColor( 809,  449, 0xd5b162, 85) and 
				isColor( 863,  449, 0xffd87b, 85) and 
				isColor( 812,  449, 0xd5b162, 85) and 
				isColor( 789,  451, 0xffd87b, 85) and 
				isColor( 799,  435, 0xffdb86, 85)) then
				tool.tap(  863,  449 )
				mSleep(1000)
			end
			smCount=0;
		end

		--离开按钮，在副本内
		if (isColor(1148,  127, 0xa8f443, 85) and 
			isColor(1142,  133, 0x8ee92c, 85) and 
			isColor(1128,  134, 0x539b16, 85) and 
			isColor(1123,  133, 0x1e3c52, 85) and 
			isColor(1123,  117, 0x201725, 85) and 
			isColor(1115,  132, 0x1f1725, 85)) then

			--  磕头表情
			if (isColor( 492,  584, 0x4c9658, 85) and 
				isColor( 501,  579, 0xe0ece2, 85) and 
				isColor( 507,  581, 0x232830, 85) and 
				isColor( 493,  581, 0x58af5c, 85) and 
				isColor( 488,  588, 0x234852, 85) and 
				isColor( 487,  594, 0xf9fcf8, 85)) then
				tool.tap(  512,  599 )
				mSleep(1000)
			end


			--师门心愿灯
			if (isColor(1090,  486, 0x4f7fb7, 85) and 
				isColor(1108,  490, 0x7fb7ff, 85) and 
				isColor(1103,  489, 0x7bb4fb, 85) and 
				isColor(1084,  484, 0x7bb3fa, 85) and 
				isColor(1081,  377, 0xf7c611, 85) and 
				isColor(1093,  368, 0xd9642f, 85) and 
				isColor(1096,  351, 0xdedba1, 85)) then
				tool.tap(   1087,  491 )--  师门许愿灯
				mSleep(5000)
			end

			--填写许愿内容
			if (isColor( 638,  505, 0xffda7e, 85) and 
				isColor( 657,  501, 0xffd87b, 85) and 
				isColor( 671,  501, 0xb18f4c, 85) and 
				isColor( 616,  251, 0xd8bd9f, 85) and 
				isColor( 653,  250, 0xd9bd9e, 85) and 
				isColor( 720,  249, 0xdabe9f, 85)) then
				--    823,  390点击输入框
				touchDown(  823,  390);       
				mSleep(30)
				touchUp(  823,  390);
				mSleep(1000) 
				local str1 ="asdfsa爱江山1234567890在去我饿人他也uibckefghijklmnopqrst机离开"
				local options = {
					["tstab"] = 1, 
					--随机生成 20 位字符串
					["num"] = 20,
				}
				str2 = getRndStr(str1,options)
				num = getStrNum(str2); 
				--dialog(str2, 1)
				inputText(str2);

				mSleep(5000)
			end

			--点击输入完成
			if (isColor(1057,  264, 0x007aff, 85) and 
				isColor(1062,  265, 0x007aff, 85) and 
				isColor(1062,  272, 0x057cfd, 85) and 
				isColor(1053,  284, 0x007aff, 85) and 
				isColor(1051,  284, 0x5a9ce5, 85)) then
				tool.tap(   1074,  270)
				mSleep(1000)
			end

			if (isColor( 658,  493, 0x402608, 85) and 
				isColor( 660,  507, 0x735627, 85) and 
				isColor( 664,  502, 0x3d2306, 85) and 
				isColor( 676,  502, 0xffd87b, 85) and 
				isColor( 673,  517, 0xfff196, 85) and 
				isColor( 655,  513, 0xfde888, 85) and 
				isColor( 649,  488, 0xfeda84, 85)) then
				--  674,  498点击许愿按钮
			end


			smCount=smCount+1;


		else

			--点击拍照确定并出现叉号 关闭拍照照片
			if (isColor(1217,  648, 0x6bbaef, 85) and 
				isColor(1214,  639, 0x8cd7f7, 85) and 
				isColor(1229,  613, 0x39618c, 85) and 
				isColor(1197,  618, 0x42658c, 85) and 
				isColor(1247,  643, 0x213c5a, 85) and 
				isColor(1242,  630, 0x29456b, 85) and 
				isColor(1292,   45, 0xffffff, 85) and 
				isColor(1290,   44, 0xffffff, 85) and 
				isColor(1293,   38, 0xffffff, 85)) then
				tool.tap( 1293,   38 )
				mSleep(1000)
			end

			--相机拍照
			if (isColor(1210,  635, 0x9adffa, 85) and 
				isColor(1233,  629, 0x6383a0, 85) and 
				isColor(1230,  640, 0x354f71, 85) and 
				isColor(1240,  634, 0x5885a9, 85) and 
				isColor(1232,  605, 0x3e6390, 85) and 
				isColor(1203,  638, 0x83d5f7, 85) and 
				isColor(1204,  628, 0x385375, 85)) then
				tool.tap(  1232,  605 )
				mSleep(2000)
			end

			--点击拍照提示 好
			if (isColor( 792,  481, 0x007aff, 85) and 
				isColor( 787,  495, 0xa5c9ee, 85) and 
				isColor( 795,  511, 0xeaeae7, 85) and 
				isColor( 795,  499, 0x007aff, 85) and 
				isColor( 807,  508, 0x007aff, 85) and 
				isColor( 802,  506, 0x60a8f5, 85)) then
				tool.tap(  795,  499 )
			end

			--点击拍照提示确定
			if (isColor( 620,  302, 0x000000, 85) and 
				isColor( 647,  309, 0x000000, 85) and 
				isColor( 678,  445, 0x007aff, 85) and 
				isColor( 650,  307, 0x121211, 85) and 
				isColor( 647,  305, 0x51514d, 85) and 
				isColor( 683,  441, 0x007aff, 85) and 
				isColor( 677,  445, 0x007aff, 85) and 
				isColor( 677,  445, 0x007aff, 85)) then
				tool.tap( 638,  460 )
				mSleep(1500)

				tool.tap(   1249,   68 )
				mSleep(1000)
			end 
			--点击拍照确定并出现叉号
			if (isColor( 276,  660, 0x37677a, 85) and 
				isColor( 284,  654, 0x4e7787, 85) and 
				isColor( 276,  649, 0xcccccc, 85) and 
				isColor( 303,  650, 0x2a5f73, 85) and 
				isColor( 266,  642, 0x2a5f74, 85) and 
				isColor( 278,  628, 0x2a5f73, 85)) then
				tool.tap(   655,  458 )

			end

			--关闭拍照照片
			if (isColor(1219,  623, 0xcbf4fe, 85) and 
				isColor(1227,  642, 0x324c6d, 85) and 
				isColor(1247,  636, 0x2b4568, 85) and 
				isColor(1194,  655, 0x30577e, 85) and 
				isColor(1216,  633, 0xb2e9fb, 85) and 
				isColor(1289,   44, 0xffffff, 85) and 
				isColor(1294,   37, 0xfeffff, 85) and 
				isColor(1299,   35, 0xffffff, 85)) then
				tool.tap(  1290,   44 )
				mSleep(1000)
			end






			--点击任务
			if (isColor(1202,  230, 0xd9682a, 85) and 
				isColor(1204,  225, 0xfa8d3e, 85) and 
				isColor(1221,  229, 0xd96027, 85) and 
				isColor(1210,  219, 0xffa04b, 85) and 
				isColor(1228,  222, 0xe0642a, 85) and 
				isColor(1207,  212, 0xfefff8, 85)) then
				tool.tap(   61,  167)
				mSleep(1000)
			end

			--任务界面
			if (isColor( 182,   40, 0x3d5b75, 85) and 
				isColor( 180,   39, 0x496883, 85) and 
				isColor( 183,   33, 0x7797a8, 85) and 
				isColor( 130,   38, 0xdbd6c4, 85) and 
				isColor( 130,   32, 0xddd8c6, 85)) then
				tool.tap( 1233,  170 )  --点击已接
				mSleep(1000)   
			end
			x, y = tsFindText(index日常任务, "日常任务",   144,   87,   321,  487, "81BED5 , 293829 # 82C0D6 , 2A3A2A", 80)

			if(x~=-1 and y ~=-1) then

				tool.tap(  x, y )
				mSleep(1500)

				x1, y1 = tsFindText(index任务合集, "神机营",  144,   87,   321,  487, "82C0D6 , 2A3A2A", 80)
				if(x1~=-1 and y1 ~=-1)then
					tool.tap(  x1, y1 )
					mSleep(1500)

					--点击立刻前往
					if (isColor(1008,  660, 0x81b9ff, 85) and 
						isColor(1025,  657, 0x7eb7ff, 85) and 
						isColor(1040,  654, 0x5378b9, 85) and 
						isColor(1019,  648, 0x84bbfe, 85) and 
						isColor( 992,  650, 0x81b8fe, 85) and 
						isColor( 981,  652, 0x1e2b62, 85)) then
						tool.tap(   1024,  655 )
						mSleep(10000)
					end
				end

				x2, y2 = tsFindText(index师门, "师门", 144,   87,   321,  487, "70A7C1 , 3D523E", 80)

				if(x2~=-1 and y2 ~=-1)then
					tool.tap(  x2, y2 )
					mSleep(1500)

					--点击立刻前往
					if (isColor(1008,  660, 0x81b9ff, 85) and 
						isColor(1025,  657, 0x7eb7ff, 85) and 
						isColor(1040,  654, 0x5378b9, 85) and 
						isColor(1019,  648, 0x84bbfe, 85) and 
						isColor( 992,  650, 0x81b8fe, 85) and 
						isColor( 981,  652, 0x1e2b62, 85)) then
						tool.tap(   1024,  655 )
						mSleep(10000)
					end
				end

			end


			--	金陵药铺
			if (isColor(1138,  447, 0x66befa, 85) and 
				isColor(1158,  446, 0x64bffa, 85) and 
				isColor(1103,  437, 0x5dc3f8, 85) and 
				isColor(1104,  430, 0x6cd9fb, 85) and 
				isColor(1161,  429, 0x6fdefc, 85) and 
				isColor(1210,  443, 0x1b2b49, 85)) then
				tool.tap(1104,  430)
				mSleep(1000)
			end  


			--点击使用	
			if (isColor(1082,  500, 0x96c1ff, 85) and 
				isColor(1095,  494, 0x78abec, 85) and 
				isColor(1061,  483, 0x80b8fe, 85) and 
				isColor(1159,  498, 0x8dbdff, 85) and 
				isColor(1134,  494, 0x85baff, 85) and 
				isColor(1053,  486, 0x7eb7ff, 85)) then
				tool.tap(  1087,  487 )
				mSleep(1000)
			end
			--点击使用锄头
			if (isColor(1077,  488, 0x28507b, 85) and 
				isColor(1091,  492, 0x81b9ff, 85) and 
				isColor(1105,  491, 0x183e63, 85) and 
				isColor(1049,  491, 0x80b8ff, 85) and 
				isColor(1097,  503, 0xa5c7ff, 85) and 
				isColor(1117,  485, 0x7db7ff, 85)) then
				tool.tap( 1078,  491)
			end



			--			xsj, ysj = tsFindText(index上交, "上交",   313,  496,   498,  616, "EDF1F6 , 0E0C0A # F0F3F7 , 110E0B", 90)
			--			if(xsj ~=-1 and ysj ~=-1) then

			--				tool.tap( xsj, ysj )
			--				mSleep(1000)
			--			end

			--金陵杂货
			if (isColor(1092,  497, 0x5dc2f8, 85) and 
				isColor(1111,  509, 0x6dc0f8, 85) and 
				isColor(1130,  505, 0x62bdfa, 85) and 
				isColor(1136,  497, 0x17233f, 85) and 
				isColor(1145,  497, 0x2f5a7f, 85) and 
				isColor(1161,  507, 0x16203c, 85) and 
				isColor(1177,  501, 0x5ab8f4, 85)) then
				tool.clickTap( 1124,  496 )
				mSleep(1000)
			end




			--购买任务丹参丸
			if (isColor( 143,  111, 0x81ca74, 85) and 
				isColor( 153,  106, 0xd1dfcc, 85) and 
				isColor( 158,   96, 0x94c394, 85) and 
				isColor( 164,   93, 0x7bb780, 85) and 
				isColor( 180,  114, 0xd6dab2, 85) and 
				isColor( 989,  650, 0xffd87b, 85) and 
				isColor(1027,  650, 0xffd87b, 85)) then

				tool.tap(1027,  650)
				mSleep(1000)
				tool.tap( 1234,   64)
				mSleep(1000)

			end

			--点击购买爪子
			if (isColor( 156,   91, 0x60b963, 85) and 
				isColor( 172,   83, 0x4a9c51, 85) and 
				isColor( 160,   92, 0x55ab5a, 85) and 
				isColor( 190,  119, 0xa65928, 85) and 
				isColor(1002,  646, 0xfed97f, 85) and 
				isColor(1011,  648, 0xffd87d, 85)) then
				dialog(userPath(), 1)
				tool.clickTap( 1011,  648 )
				mSleep(1000)

			end


			--填写许愿内容
			if (isColor( 638,  505, 0xffda7e, 85) and 
				isColor( 657,  501, 0xffd87b, 85) and 
				isColor( 671,  501, 0xb18f4c, 85) and 
				isColor( 616,  251, 0xd8bd9f, 85) and 
				isColor( 653,  250, 0xd9bd9e, 85) and 
				isColor( 720,  249, 0xdabe9f, 85)) then
				--    823,  390点击输入框
				touchDown(  823,  390);       
				mSleep(30)
				touchUp(  823,  390);
				mSleep(1000) 
				local str1 ="asdfsa爱江山1234567890在去我饿人他也uibckefghijklmnopqrst机离开"
				local options = {
					["tstab"] = 1, 
					--随机生成 20 位字符串
					["num"] = 20,
				}
				str2 = getRndStr(str1,options)
				num = getStrNum(str2); 
				--dialog(str2, 1)
				if(getOSType()=="android") then
					switchTSInputMethod(true) 
					mSleep(1000)
					inputText(str2)
					mSleep(5000)
					if (isColor( 631,  496, 0xffdb7b, 85) and 
						isColor( 660,  498, 0xffdb7b, 85) and 
						isColor( 676,  506, 0xffdb7b, 85) and 
						isColor( 698,  507, 0xffd77b, 85) and 
						isColor( 669,  502, 0x311c00, 85) and 
						isColor( 674,  488, 0xffdb84, 85)) then
						tool.tap( 1255,  648)
						tool.tap(   678,  497)
					end
				else
					inputText(str2);
				end
				mSleep(2000)
			end

			--点击输入完成
			if (isColor(1057,  264, 0x007aff, 85) and 
				isColor(1062,  265, 0x007aff, 85) and 
				isColor(1062,  272, 0x057cfd, 85) and 
				isColor(1053,  284, 0x007aff, 85) and 
				isColor(1051,  284, 0x5a9ce5, 85)) then
				tool.tap(   1074,  270)
				mSleep(30)
				tool.tap(    1062,  277)
				mSleep(3000)

				touchDown( 679,  495);       
				mSleep(300)
				touchUp( 679,  495);
			end

			--背包
			if (isColor(1128,   55, 0x8b380a, 85) and 
				isColor(1140,   46, 0x53170b, 85) and 
				isColor(1127,   35, 0xefb32b, 85) and 
				isColor(1123,   31, 0xf8cd3d, 85) and 
				isColor(1131,   19, 0xfdf179, 85) and 
				isColor(1115,   46, 0x6c0302, 85)) then

				--   62,  170点击任务
				tool.tap(62,  170 )
				mSleep(1000)

			end



			--关闭任务窗口
			if (isColor(1234,   63, 0xeaf7fd, 85) and 
				isColor(1241,   60, 0xeaf7fd, 85) and 
				isColor(1243,   56, 0xebf8fd, 85) and 
				isColor(1213,   58, 0x1f355c, 85) and 
				isColor(1238,   45, 0x273f65, 85) and 
				isColor(1226,   87, 0x274471, 85) and 
				isColor(1255,   66, 0x2e4c7a, 85)) then
				-- 1233,   65
				tool.tap(  1233,   65 )
			end
			
			
			
			
			x, y = tsFindText(index师门, "可以参加新活动",  675,   17,   792,   58, "BDBDC1 , 42423F", 90)
			
			if(x~=-1 and y~=-1) then
				
				tool.tap( 1053,   44)
				mSleep(2000)
				xdl,ydl=findhuodong(flag,"师门课业");
				if(xdl ~=-1 and ydl ~=-1) then

					tool.tap(   xdl+300,  ydl+35 )
					mSleep(1000)
					--点了已接出任务描述了
					if (isColor( 285,  156, 0x5164a9, 85) and 
						isColor( 283,  160, 0x7c8abc, 85) and 
						isColor( 306,  156, 0x9aa2c4, 85) and 
						isColor( 286,  584, 0x8797c1, 85) and 
						isColor( 298,  586, 0xccd0de, 85) and 
						isColor( 391,  587, 0x858ab3, 85) and 
						isColor( 403,  581, 0xb3bade, 85)) then

						-- 1277,   35 关闭任务
						tool.tap( 1277,   35 )
						mSleep(50)
						tool.tap( 1277,   35 )

					end
				else
					-- 1277,   35 关闭任务
					tool.tap( 1277,   35 )
					mSleep(50)
					nowStatus="主线任务"
				end
			end
			
			
			--点击活动图标
			if (isColor(1041,   55, 0xe5b130, 85) and 
				isColor(1049,   51, 0xf97b54, 85) and 
				isColor(1062,   45, 0xd09a22, 85) and 
				isColor(1060,   61, 0xfffcd2, 85) and 
				isColor(1068,   44, 0xae7a1c, 85) and 
				isColor(1057,   35, 0xf8dc4c, 85)) then
				tool.tap( 1060,   61 )
				mSleep(2500)

				closeDh(flag)

				if (isColor( 497,  160, 0xcecfd6, 85) and 
					isColor( 498,  161, 0xffffff, 85) and 
					isColor( 498,  165, 0xffffff, 85) and 
					isColor( 506,  170, 0xefefef, 85) and 
					isColor( 522,  170, 0xffffff, 85) and 
					isColor( 683,  162, 0x84baff, 85) and 
					isColor( 664,  178, 0x5a8ece, 85)) then
					tool.tap(    685,  168 )
					mSleep(1000)
					--点了已接出任务描述了
					if (isColor( 285,  156, 0x5164a9, 85) and 
						isColor( 283,  160, 0x7c8abc, 85) and 
						isColor( 306,  156, 0x9aa2c4, 85) and 
						isColor( 286,  584, 0x8797c1, 85) and 
						isColor( 298,  586, 0xccd0de, 85) and 
						isColor( 391,  587, 0x858ab3, 85) and 
						isColor( 403,  581, 0xb3bade, 85)) then

						-- 1277,   35 关闭任务
						tool.tap( 1277,   35 )
						mSleep(50)
						tool.tap( 1277,   35 )

					end

					return false;
				end

				xdl,ydl=findhuodong(flag,"师门课业");
				if(xdl ~=-1 and ydl ~=-1) then

					tool.tap(   xdl+300,  ydl+35 )
					mSleep(1000)
					--点了已接出任务描述了
					if (isColor( 285,  156, 0x5164a9, 85) and 
						isColor( 283,  160, 0x7c8abc, 85) and 
						isColor( 306,  156, 0x9aa2c4, 85) and 
						isColor( 286,  584, 0x8797c1, 85) and 
						isColor( 298,  586, 0xccd0de, 85) and 
						isColor( 391,  587, 0x858ab3, 85) and 
						isColor( 403,  581, 0xb3bade, 85)) then

						-- 1277,   35 关闭任务
						tool.tap( 1277,   35 )
						mSleep(50)
						tool.tap( 1277,   35 )

					end
				else
					-- 1277,   35 关闭任务
					tool.tap( 1277,   35 )
					mSleep(50)
					nowStatus="主线任务"
				end

			end

			--点击活动图标
			if (isColor( 945,   37, 0xbab3b5, 85) and 
				isColor( 889,   33, 0xf2f1f1, 85) and 
				isColor( 818,   39, 0xdfdcd5, 85) and 
				isColor(1052,   47, 0xfb7d55, 85) and 
				isColor(1065,   39, 0xc59123, 85) and 
				isColor(1048,   32, 0x652a2f, 85)) then
				-- 1052,   47
				tool.tap( 1052,   47 )
			end





			--师门任务提示
			if (isColor( 612,  171, 0x396e9f, 85) and 
				isColor( 617,  171, 0x5bade1, 85) and 
				isColor( 617,  175, 0x61b4e8, 85) and 
				isColor( 619,  175, 0x4e91c0, 85) and 
				isColor( 618,  171, 0x60b7e9, 85)) then
				tool.tap(   682,  169 )
			end




			--x, y = tsFindText(index仁爱, "仁爱", 0, 0, 0, 0, "766B53 , 0C203D", 90)
			--寻找仁爱
			if (isColor( 633,  648, 0x61451d, 85) and 
				isColor( 659,  650, 0xf0cc77, 85) and 
				isColor( 702,  652, 0xceaa5f, 85) and 
				isColor( 377,  311, 0x96b3de, 85) and 
				isColor( 664,  307, 0x94b2db, 85) and 
				isColor( 943,  309, 0x95b2dd, 85)) then

				--左一位置
				xz1, yz1 = tsFindText(index仁爱, "仁爱",  347,  260,   419,  300, "766B53 , 0C203D", 90)
				if(xz1 ~=-1 and yz1 ~=-1) then

					tool.tap(    382,  388 )
				else	

					--左二位置
					xz2, yz2 = tsFindText(index仁爱, "仁爱",    631,  263,    699,  293, "766B53 , 0C203D", 90)
					if(xz2 ~=-1 and yz2 ~=-1) then

						tool.tap(   660,  394 )
					else
						--左三位置
						xz3, yz3 = tsFindText(index仁爱, "仁爱",    916,  265,    985,  300, "766B53 , 0C203D", 90)
						if(xz3 ~=-1 and yz3 ~=-1) then

							tool.tap(     950,  382 )
						end
					end



				end

				--点击确认选择
				if (isColor( 659,  649, 0x705226, 85) and 
					isColor( 710,  652, 0xffd87d, 85) and 
					isColor( 659,  650, 0xf0cc77, 85) and 
					isColor( 634,  649, 0x715427, 85) and 
					isColor( 638,  649, 0xfbd67f, 85) and 
					isColor( 737,  650, 0xfed980, 85)) then
					tool.tap( 634,  649 )
					mSleep(1000)
				end

			end

		end
	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end


--内容已复制到剪贴板!
local tab活力60 = {
	"030066181e6183c30cf0300c00300033000331ff331fe23186231867ff867ff866318663186e31fec31fe430fe03000000000000006002060060600e0601c06038060f0067c0fff80ff80006000060020600206002060020600e06ffe07ff8060000000000000000000000000000000000000001fc007ff01f7f81c61c30c0c30c0e30c0c3873c187f8103f00000003fc00fff81e0783800c3000c3000c3800c1f07c0fff803fc000000000030003f000f800fe007e003f00078000000000000003fe00fff81c63c3840c30c0c30c0c30e0c387fc187f8000000000007fe01fff81c03c3000c3000e3000c3c01c1fff80fff0$活力60$615$20$97",
}
local index活力60 = addTSOcrDictEx(tab活力60)


function yitiaolong(flag)

	if( flag == "7" ) then

		--关闭新手好礼
		if (isColor(1166,  638, 0xffffdd, 85) and 
			isColor(1186,  618, 0xffffd9, 85) and 
			isColor(1181,  604, 0xffffd3, 85) and 
			isColor(1191,  589, 0xd9aa5d, 85) and 
			isColor(1171,  585, 0xfce7ae, 85) and 
			isColor(1200,  576, 0xebda9a, 85)) then
			tool.tap(    1247,   61 )
			mSleep(1000)
		end


		--关闭白蝶弹窗
		if (isColor(1277,   33, 0xeaf7fd, 85) and 
			isColor(1270,   41, 0xeaf7fd, 85) and 
			isColor(1004,  303, 0xa2bee7, 85) and 
			isColor( 935,  300, 0x3b7bd6, 85) and 
			isColor( 954,  281, 0x3e70c1, 85) and 
			isColor(1059,  279, 0x8b89ad, 85) and 
			isColor(1080,  311, 0xb87772, 85)) then
			-- 1276,   36
			tool.tap(   1276,   36 )
			mSleep(1000)
		end


		--关闭签到
		if (isColor(1220,  124, 0xeaf7fd, 85) and 
			isColor(1216,  131, 0xeaf7fd, 85) and 
			isColor(1197,  119, 0xcc9252, 85) and 
			isColor(1143,   99, 0xf8d5c2, 85) and 
			isColor(1176,  145, 0xc88d4f, 85) and 
			isColor(1246,  147, 0xfdd4e6, 85)) then
			tool.tap( 1219,  127)
		end


		--关闭任务窗口
		if (isColor(1234,   63, 0xeaf7fd, 85) and 
			isColor(1241,   60, 0xeaf7fd, 85) and 
			isColor(1243,   56, 0xebf8fd, 85) and 
			isColor(1213,   58, 0x1f355c, 85) and 
			isColor(1238,   45, 0x273f65, 85) and 
			isColor(1226,   87, 0x274471, 85) and 
			isColor(1255,   66, 0x2e4c7a, 85)) then
			-- 1233,   65
			tool.tap(  1233,   65 )
		end
		--点击活动图标
		if (isColor(1041,   55, 0xe5b130, 85) and 
			isColor(1049,   51, 0xf97b54, 85) and 
			isColor(1062,   45, 0xd09a22, 85) and 
			isColor(1060,   61, 0xfffcd2, 85) and 
			isColor(1068,   44, 0xae7a1c, 85) and 
			isColor(1057,   35, 0xf8dc4c, 85)) then
			tool.tap( 1060,   61 )
		end


		--点龙太子
		if (isColor( 108,  474, 0xb78071, 85) and 
			isColor( 116,  481, 0xc4a49e, 85) and 
			isColor(  76,  552, 0x822b51, 85) and 
			isColor( 125,  470, 0xf8f4fc, 85) and 
			isColor(  87,  484, 0xd5cce0, 85) and 
			isColor( 123,  505, 0x683331, 85)) then
			tool.tap( 125,  470 )
		end




		if (isColor(1275,  709, 0x899fad, 85) and 
			isColor(1289,  707, 0xd5e2ea, 85) and 
			isColor(1168,  708, 0x6699d6, 85) and 
			isColor( 352,  709, 0xe1ba67, 85) and 
			isColor( 254,  714, 0x6aded7, 85)) then
			xdl,ydl=findhuodong(flag,"一条龙");
			if(xdl ~=-1 and ydl ~=-1) then

				tool.tap(   xdl+300,  ydl+35 )
				mSleep(1000)
				--点了已接出任务描述了
				if (isColor( 285,  156, 0x5164a9, 85) and 
					isColor( 283,  160, 0x7c8abc, 85) and 
					isColor( 306,  156, 0x9aa2c4, 85) and 
					isColor( 286,  584, 0x8797c1, 85) and 
					isColor( 298,  586, 0xccd0de, 85) and 
					isColor( 391,  587, 0x858ab3, 85) and 
					isColor( 403,  581, 0xb3bade, 85)) then

					-- 1277,   35 关闭任务
					tool.tap( 1277,   35 )
					mSleep(50)
					tool.tap( 1277,   35 )

				end
			else
				-- 1277,   35 关闭任务
				tool.tap( 1277,   35 )
				mSleep(50)
				--randomStatus(flag)
			end
		end


		----关闭新手+龙太子页面
		if (isColor(1045,  388, 0x263146, 85) and 
			isColor(1048,  377, 0x28354b, 85) and 
			isColor(1049,  379, 0x30c6d5, 85) and 
			isColor( 680,  102, 0xc3aa72, 85) and 
			isColor( 638,   89, 0xe3d8a6, 85) and 
			isColor( 725,   82, 0xac8c30, 85) and 
			isColor(1244,   61, 0xe8f5fb, 85)) then
			tool.tap(1244,   61)
		end



		--点击便捷组队
		if (isColor(1131,  439, 0x7eb7ff, 85) and 
			isColor(1154,  440, 0x192340, 85) and 
			isColor(1175,  443, 0x7fb7ff, 85) and 
			isColor(1189,  443, 0x5b83bc, 85) and 
			isColor(1208,  442, 0x111731, 85) and 
			isColor(1210,  437, 0x7fb7fe, 85)) then
			tool.tap(   1168,  441 )
		end


		--点击自动匹配
		if (isColor(1074,  650, 0x5071ae, 85) and 
			isColor(1103,  656, 0x1f2c63, 85) and 
			isColor(1127,  662, 0x24336b, 85) and 
			isColor(1133,  663, 0x2a3c75, 85) and 
			isColor(1160,  667, 0x5c7ebb, 85) and 
			isColor(1150,  664, 0x435f9b, 85)) then
			-- 1109,  659
			tool.tap(  1109,  659 )
			mSleep(3000)



			--关闭组队页
			if (isColor(1077,  665, 0x587ebf, 85) and 
				isColor(1081,  660, 0x7eb7ff, 85) and 
				isColor(1100,  659, 0x7fb7fe, 85) and 
				isColor(1234,   63, 0xeaf7fd, 85) and 
				isColor(1241,   57, 0xeaf7fd, 85) and 
				isColor(1232,   65, 0xeaf7fd, 85)) then
				-- 1233,   67
				tool.tap(1233,   67) 
				mSleep(1000)
			end
			--关闭团
			if (isColor( 157,   49, 0x1f3e60, 85) and 
				isColor( 175,   45, 0x3e74a6, 85) and 
				isColor( 159,   35, 0xc4c1b3, 85) and 
				isColor( 162,   24, 0xdcd7c5, 85) and 
				isColor( 182,   36, 0x5e859a, 85) and 
				isColor( 116,   20, 0x8f8f87, 85) and 
				isColor(1234,   63, 0xeaf7fd, 85)) then
				tool.tap(1234,   63) 
				mSleep(1000)
			end
			--默认位置复活
			if (isColor( 598,  470, 0x263a6d, 85) and 
				isColor( 598,  472, 0x719cda, 85) and 
				isColor( 610,  470, 0x5c83c1, 85) and 
				isColor( 624,  465, 0x172555, 85) and 
				isColor( 611,  463, 0x192858, 85) and 
				isColor( 631,  474, 0x3c568b, 85) and 
				isColor( 639,  461, 0x7db7ff, 85)) then
				tool.tap(639,  461) 
				mSleep(1000)
			end
			--确定离开队伍
			if (isColor( 804,  444, 0x391f03, 85) and 
				isColor( 804,  444, 0x391f03, 85) and 
				isColor( 809,  444, 0x361c02, 85) and 
				isColor( 834,  434, 0xffdb89, 85) and 
				isColor( 833,  447, 0xffd87b, 85) and 
				isColor( 822,  454, 0xf3d076, 85) and 
				isColor( 809,  455, 0xfeda7d, 85)) then
				tool.tap(  819,  447) 
				mSleep(1000)
			end

			local startTime=os.time();
			local startTimeCheckImg=os.time();
			local startTimeCheckHL=os.time();

			snapshot(userPath() .."/res/check1.png",  826,  329,  888,  383) 
			mSleep(30)
			snapshot(userPath() .."/res/check2.png",1,1,155,155) 
			mSleep(30)
			snapshot(userPath() .."/res/check4.png",355,355,655,655) 
			mSleep(30)
			sameCount=0;

			while (	true) do
				local endTime=os.time();
				if(endTime-startTime>3*60*60) then
					--退出一条龙

					--关闭组队页
					if (isColor(1077,  665, 0x587ebf, 85) and 
						isColor(1081,  660, 0x7eb7ff, 85) and 
						isColor(1100,  659, 0x7fb7fe, 85) and 
						isColor(1234,   63, 0xeaf7fd, 85) and 
						isColor(1241,   57, 0xeaf7fd, 85) and 
						isColor(1232,   65, 0xeaf7fd, 85)) then
						-- 1233,   67
						tool.tap(1233,   67) 
						mSleep(1000)
					end
					-- 1276,   34 关闭窗口
					tool.tap( 1276,   34 )
					mSleep(2500)

					if (isColor( 152,  164, 0xdaf4fc, 85) and 
						isColor( 149,  170, 0xa7cce9, 85) and 
						isColor( 160,  173, 0xa4c9e5, 85) and 
						isColor( 176,  167, 0xa4c9e9, 85) and 
						isColor( 168,  157, 0x82aad6, 85) and 
						isColor( 158,  180, 0x5a8ec8, 85)) then
						--点击队伍2次
						tool.tap(  186,  168 )
						mSleep(30)
						tool.tap(  186,  168 )

					end
					--点击队伍一次
					if (isColor( 175,  169, 0x09468f, 85) and 
						isColor( 190,  159, 0x79a6d4, 85) and 
						isColor( 214,  167, 0xbbdbff, 85) and 
						isColor( 211,  177, 0x8ec3ff, 85) and 
						isColor( 188,  176, 0x8cc1fc, 85)) then
						tool.tap(  186,  168 )
					end
					--离开队伍
					if (isColor( 226,  660, 0x7db7ff, 85) and 
						isColor( 186,  665, 0x7fb8ff, 85) and 
						isColor( 210,  662, 0x7db6ff, 85) and 
						isColor( 220,  661, 0x5982c3, 85) and 
						isColor( 243,  662, 0x4a6cab, 85)) then
						tool.tap(  243,  662 )
					end


					--确定离开队伍

					if (isColor( 804,  444, 0x391f03, 85) and 
						isColor( 804,  444, 0x391f03, 85) and 
						isColor( 809,  444, 0x361c02, 85) and 
						isColor( 834,  434, 0xffdb89, 85) and 
						isColor( 833,  447, 0xffd87b, 85) and 
						isColor( 822,  454, 0xf3d076, 85) and 
						isColor( 809,  455, 0xfeda7d, 85)) then
						tool.tap(  819,  447) 
						mSleep(1000)
					end

					break;
				end

				--关闭团
				if (isColor( 157,   49, 0x1f3e60, 85) and 
					isColor( 175,   45, 0x3e74a6, 85) and 
					isColor( 159,   35, 0xc4c1b3, 85) and 
					isColor( 162,   24, 0xdcd7c5, 85) and 
					isColor( 182,   36, 0x5e859a, 85) and 
					isColor( 116,   20, 0x8f8f87, 85) and 
					isColor(1234,   63, 0xeaf7fd, 85)) then
					tool.tap(1234,   63) 
					mSleep(1000)
				end

				--关闭新手+龙太子页面
				if (isColor(1045,  388, 0x263146, 85) and 
					isColor(1048,  377, 0x28354b, 85) and 
					isColor(1049,  379, 0x30c6d5, 85) and 
					isColor( 680,  102, 0xc3aa72, 85) and 
					isColor( 638,   89, 0xe3d8a6, 85) and 
					isColor( 725,   82, 0xac8c30, 85) and 
					isColor(1244,   61, 0xe8f5fb, 85)) then
					tool.tap(1244,   61)
				end


				--默认位置复活
				if (isColor( 598,  470, 0x263a6d, 85) and 
					isColor( 598,  472, 0x719cda, 85) and 
					isColor( 610,  470, 0x5c83c1, 85) and 
					isColor( 624,  465, 0x172555, 85) and 
					isColor( 611,  463, 0x192858, 85) and 
					isColor( 631,  474, 0x3c568b, 85) and 
					isColor( 639,  461, 0x7db7ff, 85)) then
					tool.tap(639,  461) 
					mSleep(1000)
				end

				--关闭空队伍
				if (isColor(1138,  113, 0xf6e89d, 85) and 
					isColor(1120,  106, 0xfbf5d3, 85) and 
					isColor(1133,   91, 0xffffff, 85) and 
					isColor(1142,   88, 0xf0c06b, 85) and 
					isColor(1234,   67, 0xeaf7fd, 85) and 
					isColor(1236,   62, 0xeaf7fd, 85) and 
					isColor(1233,   64, 0xeaf7fd, 85)) then
					tool.tap(639,  461) 
					mSleep(1000)
				end

				--关闭新手好礼
				if (isColor(1166,  638, 0xffffdd, 85) and 
					isColor(1186,  618, 0xffffd9, 85) and 
					isColor(1181,  604, 0xffffd3, 85) and 
					isColor(1191,  589, 0xd9aa5d, 85) and 
					isColor(1171,  585, 0xfce7ae, 85) and 
					isColor(1200,  576, 0xebda9a, 85)) then
					tool.tap(    1247,   61 )
					mSleep(1000)
				end


				--关闭白蝶弹窗
				if (isColor(1277,   33, 0xeaf7fd, 85) and 
					isColor(1270,   41, 0xeaf7fd, 85) and 
					isColor(1004,  303, 0xa2bee7, 85) and 
					isColor( 935,  300, 0x3b7bd6, 85) and 
					isColor( 954,  281, 0x3e70c1, 85) and 
					isColor(1059,  279, 0x8b89ad, 85) and 
					isColor(1080,  311, 0xb87772, 85)) then
					-- 1276,   36
					tool.tap(   1276,   36 )
					mSleep(1000)
				end


				--关闭签到
				if (isColor(1220,  124, 0xeaf7fd, 85) and 
					isColor(1216,  131, 0xeaf7fd, 85) and 
					isColor(1197,  119, 0xcc9252, 85) and 
					isColor(1143,   99, 0xf8d5c2, 85) and 
					isColor(1176,  145, 0xc88d4f, 85) and 
					isColor(1246,  147, 0xfdd4e6, 85)) then
					tool.tap( 1219,  127)
				end


				--关闭任务窗口
				if (isColor(1234,   63, 0xeaf7fd, 85) and 
					isColor(1241,   60, 0xeaf7fd, 85) and 
					isColor(1243,   56, 0xebf8fd, 85) and 
					isColor(1213,   58, 0x1f355c, 85) and 
					isColor(1238,   45, 0x273f65, 85) and 
					isColor(1226,   87, 0x274471, 85) and 
					isColor(1255,   66, 0x2e4c7a, 85)) then
					-- 1233,   65
					tool.tap(  1233,   65 )
				end

				--点龙太子
				if (isColor( 108,  474, 0xb78071, 85) and 
					isColor( 116,  481, 0xc4a49e, 85) and 
					isColor(  76,  552, 0x822b51, 85) and 
					isColor( 125,  470, 0xf8f4fc, 85) and 
					isColor(  87,  484, 0xd5cce0, 85) and 
					isColor( 123,  505, 0x683331, 85)) then
					tool.tap( 125,  470 )
				end


				if(sameCount>5) then
					toast("找到了之前截图将重启游戏",5) 
					sameCount=0;

				end

				if(os.time()-startTimeCheckImg>200) then
					x, y = findImage(userPath() .."/res/check1.png", 0, 0, w-1, h-1,40000000);
					x1, y1 = findImage(userPath() .."/res/check2.png", 0, 0, w-1, h-1,40000000);
					x2, y2 = findImage(userPath() .."/res/check3.png", 0, 0, w-1, h-1,40000000);
					if x ~= -1 and y ~= -1 and x1 ~= -1 and y1 ~= -1 and x2 ~= -1 and y2 ~= -1 then  
						sameCount=sameCount+1;
						toast("sameCount!"..sameCount,5);
					else
						sameCount=0;
					end
					startTimeCheckImg=os.time();
					snapshot(userPath() .."/res/check1.png",  826,  329,  888,  383) 
					mSleep(30)
					snapshot(userPath() .."/res/check2.png",1,1,155,155) 
					mSleep(30)
					mSleep(30)
					snapshot(userPath() .."/res/check3.png",  973,  619, 1136,  662)
				end
			end
		end

	elseif( flag == "note3" ) then  
	elseif( flag == "xr" ) then  

		xrfunction.doLogin()
	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end	

end



--main函数
function main()

	local startTime=os.time();




	flag=tool.getflag(w,h);

	if(flag=="note3") then
		--com.netease.l10
		tool.runApp("com.netease.l10")
	else
		os_type = getOSType();
		if os_type == "android" then --返回值为纯小写字母
			tool.runApp("com.netease.l10")
		else  
			tool.runApp("com.netease.qnyh")
		end

	end


	while true do
		if(os.time()-startTime>60*60) then 
			os_type = getOSType();
			if os_type == "android" then --返回值为纯小写字母
				closeApp("com.netease.l10");
			else  
				closeApp("com.netease.qnyh");
			end

			mSleep(2000)
			nowpalyer=1
			nowStatus="主线任务" 
			mSleep(5000)
			reboot()
			startTime=os.time();

		end

		--角色操作状态
		if(nowStatus=="一条龙") then
			yitiaolong(flag)
		elseif(nowStatus=="开场动画") then

			kaiChangDh(flag)
		elseif(nowStatus=="登录游戏") then
			Login(flag)
		elseif(nowStatus=="主线任务") then
			zhuxianRenwu(flag)

		elseif(nowStatus=="师门任务") then
			shimen(flag)
		elseif(nowStatus=="挂机") then


		elseif(nowStatus=="升级刷指定图") then
			doCalledMap(flag,choosedMap);
		elseif(nowStatus=="创建角色") then
			createRole(flag)
		elseif(nowStatus=="新手引导") then
			if(newPlayerTeach(flag)) then
				nowStatus="副本操作"
			end 
		elseif(nowStatus=="清理背包") then
			dealBackPack(flag)
		elseif(nowStatus=="清理邮件") then
			if(not dealEmail(flag)) then
				nowStatus="清理背包"
			end
		elseif(nowStatus=="日常玩法") then
			dealRiChang(flag)
		elseif(nowStatus=="上架垫子") then
			ShangJiaDianzi(flag)
		elseif(nowStatus=="签到") then
			QianDao(flag)
		elseif(nowStatus=="日常任务") then
			getRiChangRenWu(flag)
		elseif(nowStatus=="好友送礼") then
			SendFriend(flag)
		elseif(nowStatus=="购买垫子") then
			QiangHua(flag)
		elseif(nowStatus=="切换角色") then
			ChangePlayer(flag)
		elseif(nowStatus=="关宁校场") then
			DoQiangHua(flag)		
		elseif(nowStatus=="守财奴") then

		else
			toast("111",1)
			mSleep(1000)
			--doActtackMap(flag,"港口郊外")
		end
	end
end
main()


