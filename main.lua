init(1)
require("TSLib")
local tool= require("tool")
require("iphoneXR")
createGobalTable("var")
--runThread("Log")


--------变量初始化 start----
nowStatus="" 
flag=var["flag"]
w,h = getScreenSize()
local flag=tool.getflag();
var["flag"]=flag;

nowpalyer=0;
loginType="";

--------变量初始化 end----










--------登录界面 start--------
local ts = require("ts")
local cjson = ts.json
w,h = getScreenSize();
MyTable = {
	["style"]  = "default",
	["rettype"] = "table",
	["width"] = w,
	["height"] = h,
	["orient"] = "1",
	["bgcolor"] = "255,255,255",
	["btnbkcolor"] = "255,255,255",
	["config"] = "",
	["pagetype"] = "multi",
	["selpage"] = "1",
	["pagenumtype"] = "dot",
	["titles"] = "第1页",
	["timer"] = "200",
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
				["text"] = "选择角色",
			},
			{
				["type"] = "CheckBoxGroup",
				["id"] = "checkbox0",
				["list"] = "角色1,角色2,角色3,角色4",
			},
			{
				["type"] = "Label",
				["color"] = "38,38,38",
				["size"] = "10",
				["align"] = "left",
				["text"] = "登录方式",
			},
			{
				["type"] = "RadioGroup",
				["select"] = "0",
				["id"] = "radio1",
				["list"] = "微信登录,QQ登录",
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
	end 

	local radio1 =  values.radio1 
	--loginType
	if  rg == "0" then
		loginType="微信登录"
	elseif rg == "1" then
		loginType="QQ登录"
	end

end

--------登录界面 end--------







function loginAcion(flag)
	if( flag == "7" ) then


	elseif( flag == "xr" ) then  
		loginTapXR()	

	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end
end





--main函数
function main()
	--var["msg"]="当前处于未知状态"
	tool.runApp("com.tencent.YiRen")
	tool.alert("启动游戏中....",flag)
	mSleep(12000)
	tool.alert("点击屏幕等待登录窗口....",flag)
	if( flag == "7" ) then


	elseif( flag == "xr" ) then  
		loginTapXR()	

	elseif( flag == "air3" ) then

	else      
		dialog("未找到符合条件的坐标！",0);
		return false	
	end



	while true do
		--角色操作状态
		if(nowStatus=="登录游戏操作") then

		elseif(nowStatus=="旅馆中") then
			room(flag)
		elseif(nowStatus=="副本操作") then
			if(attack(flag)) then
				nowStatus="翻牌操作"
			end
		elseif(nowStatus=="刷指定图") then
			doCalledMap(flag);
		elseif(nowStatus=="创建角色") then

			if(createPlayer(flag)) then
				nowStatus="新手引导"
			end

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
			toast("执行购买垫子",1)	
			QiangHua(flag)
		elseif(nowStatus=="切换角色") then
			ChangePlayer(flag)
		elseif(nowStatus=="强化垫子") then
			DoQiangHua(flag)		
		elseif(nowStatus=="站街") then
			DoZhanJie(flag)
		else
			tool.alert("当前状态为未知",flag);
			mSleep(5000)
		end
	end
end
main()


