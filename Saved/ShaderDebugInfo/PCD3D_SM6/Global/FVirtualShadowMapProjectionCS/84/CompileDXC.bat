@ECHO OFF
SET DXC="H:\UnrealEngine-5.5.0-release\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "H:\UnrealEngine-5.5.0-release\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T cs_6_6 -E VirtualShadowMapProjection -Fc VirtualShadowMapProjection.d3dasm -Fo VirtualShadowMapProjection.dxil VirtualShadowMapProjection.usf
:END
PAUSE
