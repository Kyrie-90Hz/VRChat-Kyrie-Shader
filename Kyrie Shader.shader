// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "90Hz/Kyrie Shader"
{
	Properties
	{
	    [Header(Join my Discord         vvgrnqS)]

	    [Space(50)]

		[Header(Main Settings)]
		_MainColor("Main Color", Color) = (0.4705883,0.4705883,0.4705883,0)
		[Space(5)]
		_MainTexture("Main Texture", 2D) = "white" {}

		[Space(50)]

		[Header(Overlay Settings)]
		_OverlayAlpha("Overlay Alpha", Range( -1 , 1)) = 0
		[Space(5)]
		_OverlayTextureColor("Overlay Texture Color", Color) = (1,1,1,0)
		[Space(5)]
		[Toggle(_INVERTDIRECTION1_ON)] _InvertDirection1("Invert Direction", Float) = 1
		[Space(5)]
		[SingleLineTexture]_OverlayTexture("Overlay Texture", 2D) = "white" {}
		[Space(5)]
		[Toggle]_ToggleOverlayAlphaTexture("Toggle Overlay Alpha Texture", Range( 0 , 1)) = 0
		[Space(5)]
		_LerpOverlayTexturetoMeshed("Lerp Overlay Texture to Meshed", Range( 0 , 1)) = 0
		[Space(5)]
		_OverlayTextureTiling("Overlay Texture Tiling", Vector) = (0,0,0,0)
		[Space(5)]
		_OverlayTextureSpeed("Overlay Texture Speed", Vector) = (0,0,0,0)

		[Space(50)]

		[Header(Flow Effect Settings)]
		[Toggle]_ToggleFloweffect("Toggle Flow effect", Range( 0 , 1)) = 0
		[Space(5)]
		_Size("Size", Range( 0 , 10)) = 1
		[Space(5)]
		_FlowStrength("Flow Strength", Range( -1 , 1)) = 0
		[Space(5)]
		_FlowSpeed("Flow Speed", Range( -5 , 5)) = 0
		[Space(5)]
		_FlowDirection("Flow Direction", Vector) = (0,0,0,0)

		[Space(50)]

		[Toggle][Header(Metallic Settings)]_ToggleMetallic("Toggle Metallic", Range( 0 , 1)) = 0
		[Space(5)]
		_MetallicStrength("Metallic Strength", Range( -10 , 10)) = 0
		[Header(Metallic Texture Settings)]
		_LerpMetallicTexture("Lerp Metallic Texture", Range( 0 , 1)) = 0
		[Space(5)]
		_MetallicTexture("Metallic Texture", 2D) = "white" {}
		[Space(5)]
		_MetallicTextureStrength("Metallic Texture Strength", Range( -10 , 10)) = 0

		[Space(50)]

		[Header(Smoothness Settings)]
		[Toggle]_ToggleSmoothness("Toggle Smoothness", Range( 0 , 1)) = 0
		[Space(5)]
		_SmoothnessStrength("Smoothness Strength", Range( -10 , 10)) = 0
		[Header(Smoothness Texture Settings)]
		_LerpSmoothnessTexture("Lerp Smoothness Texture", Range( 0 , 1)) = 0
		[Space(5)]
		_SmoothnessTexture("Smoothness Texture", 2D) = "white" {}
		[Space(5)]
		_SmoothnessTextureStrength("Smoothness Texture Strength", Range( -10 , 10)) = 0

		[Space(50)]

		[Header(Glitter Settings)]
		_LerpGlitterAlpha("Lerp Glitter Alpha", Range( 0 , 1)) = 0
		[Space(5)]
		_SparkleColor1("Glitter Color", Color) = (1,1,1,0)
		[Space(5)]
		_SparklesBrightness1("Glitter Brightness", Float) = 1.27
		[Space(5)]
		_SparkleFresnel1("Glitter Fresnel Bias, Scale, Power", Vector) = (0,0,0,0)
		[Space(5)]
		_GlitterScreenContribution("Glitter Screen Contribution", Range( 0 , 1)) = 0.2
		[Space(5)]
		[NoScaleOffset][SingleLineTexture]_GlitterNoise("Glitter Noise", 2D) = "white" {}
		[Space(5)]
		[HideInInspector]_GlitterNormalTexture("Glitter Normal Texture", 2D) = "bump" {}
		[Space(5)]
		_GlitterSpeed("Glitter Speed", Range( 0 , 0.1)) = 0
		[Space(5)]
		_GlitterFrequency("Glitter Frequency", Range( 0 , 100)) = 20.69276
		[Space(5)]
		_GlitterThreshold("Glitter Threshold", Range( 0 , 1)) = 0.5
		[Space(5)]
		_GlitterRange("Glitter Range", Range( 0 , 1)) = 0

		[Space(50)]

		[Header(Glow Settings)]
		_GlowAlpha("Glow Alpha", Range( -1 , 1)) = 0
		[Space(5)]
		[HDR][Gamma]_GlowColor("Glow Color", Color) = (0,0,0,0)
		[Space(5)]
		_GlowScale("Glow Scale", Float) = 4.11
		[Space(5)]
		_GlowPower("Glow Power", Float) = 14.12
		[Space(5)]
		[Toggle]_ToggleGlowEffects("Toggle Glow Effects", Range( 0 , 1)) = 0
		[Space(5)]
		_LerpGlowEffectTextureAlpha("Lerp Glow Effect Texture Alpha", Range( 0 , 1)) = 0
		[Space(5)]
		_GlowEffectTexture("Glow Effect Texture", 2D) = "white" {}
		[Space(5)]
		_GlowSpeed("Glow Speed", Float) = 0

		[Space(50)]

		[Header(Scanline Settings)]
		_LerpScanlineAlpha("Lerp Scanline Alpha", Range( -3 , 3)) = 0
		[Space(5)]
		_GlintColor1("Scanline Color", Color) = (0,0,0,0)
		[Space(5)]
		_ScanlineTexture("Scanline Texture", 2D) = "white" {}
		[Space(5)]
		[KeywordEnum(X,Y,Z)] _ScanlineDirection("Scanline Direction", Float) = 1
		[Space(5)]
		_ScanlineOptions("Scanline Options", Vector) = (1,1,1,0)

		[Space(50)]

		[Header(Opacity Settings)]
		[Toggle]_ToggleOpacity("Toggle Opacity", Range( 0 , 1)) = 0
		[Space(5)]
		_OpacityStrength("Opacity Strength", Range( -10 , 10)) = 1
		[Space(5)]
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

		[Space(50)]

		[Header(Outline Settings)]
		_OutlineColor("Outline Color", Color) = (0,0,0,0)
		[Space(5)]
		_OutlineWidth("Outline Width", Float) = 0

		[Header(Outline Effect Settings)]
		[Toggle]_ToggleOutlineEffects("Toggle Outline Effects", Range( 0 , 1)) = 0
		[Space(5)]
		_OutlineHueHue("Outline Hue Hue", Float) = 0
		[Space(5)]
		_OutlineHueValue("Outline Hue Value", Range( 0 , 1)) = 0
		[Space(5)]
		_OutlineHueSaturation("Outline Hue Saturation", Float) = 0
		[Space(5)]
		_LerpOutlineHuetoTex("Lerp Outline Hue to Tex", Range( 0 , 1)) = 0
		[Space(5)]
		[Toggle]_ToggleOutlineTexwithHue("Toggle Outline Tex with Hue", Range( 0 , 1)) = 0
		[Space(5)]
		[SingleLineTexture]_OutlineTex("Outline Tex", 2D) = "white" {}
		[Space(5)]
		[Toggle]_ToggleOutlineAlphaTexture("Toggle Outline Alpha Texture", Range( 0 , 1)) = 0
		[Space(5)]
		_OutlineTexTiling("Outline Tex Tiling", Vector) = (0,0,0,0)
		[Space(5)]
		_OutlineTexSpeed("Outline Tex Speed", Vector) = (0,0,0,0)
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ }
		Cull Front
		CGPROGRAM
		#pragma target 3.0
		#pragma surface outlineSurf Outline nofog  keepalpha noshadow noambient novertexlights nolightmap nodynlightmap nodirlightmap nometa noforwardadd vertex:outlineVertexDataFunc 
		void outlineVertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float outlineVar = ( _OutlineWidth * 0.01 );
			v.vertex.xyz += ( v.normal * outlineVar );
		}
		inline half4 LightingOutline( SurfaceOutput s, half3 lightDir, half atten ) { return half4 ( 0,0,0, s.Alpha); }
		void outlineSurf( Input i, inout SurfaceOutput o )
		{
			float mulTime50 = _Time.y * _OutlineHueHue;
			float3 hsvTorgb31 = HSVToRGB( float3(mulTime50,_OutlineHueSaturation,_OutlineHueValue) );
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float clampDepth56 = Linear01Depth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm.xy ));
			float4 lerpResult55 = lerp( ase_screenPosNorm , float4( i.uv_texcoord, 0.0 , 0.0 ) , clampDepth56);
			float4 tex2DNode34 = tex2D( _OutlineTex, ( float4( _OutlineTexTiling, 0.0 , 0.0 ) * ( lerpResult55 + float4( ( _OutlineTexSpeed * _Time.y ), 0.0 , 0.0 ) ) ).xy );
			float4 temp_cast_5 = (tex2DNode34.a).xxxx;
			float4 lerpResult53 = lerp( tex2DNode34 , temp_cast_5 , _ToggleOutlineAlphaTexture);
			float4 lerpResult45 = lerp( lerpResult53 , ( lerpResult53 * float4( hsvTorgb31 , 0.0 ) ) , _ToggleOutlineTexwithHue);
			float4 lerpResult33 = lerp( float4( hsvTorgb31 , 0.0 ) , lerpResult45 , _LerpOutlineHuetoTex);
			float4 lerpResult32 = lerp( _OutlineColor , lerpResult33 , _ToggleOutlineEffects);
			o.Emission = lerpResult32.rgb;
		}
		ENDCG
		

		Tags{ "RenderType" = "Overlay"  "Queue" = "Overlay+0" "IsEmissive" = "true"  }
		Cull Back
		CGINCLUDE
		#include "UnityShaderVariables.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 3.0
		#pragma shader_feature _INVERTDIRECTION1_ON
		#pragma shader_feature _SCANLINEDIRECTION_X _SCANLINEDIRECTION_Y _SCANLINEDIRECTION_Z
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float2 uv_texcoord;
			float4 screenPos;
			float3 worldPos;
			float3 worldNormal;
			INTERNAL_DATA
		};

		uniform sampler2D _MainTexture;
		uniform float4 _MainTexture_ST;
		uniform float4 _MainColor;
		uniform sampler2D _OverlayTexture;
		uniform float2 _OverlayTextureTiling;
		uniform float _LerpOverlayTexturetoMeshed;
		uniform float2 _OverlayTextureSpeed;
		uniform float _ToggleOverlayAlphaTexture;
		uniform float4 _OverlayTextureColor;
		uniform float _Size;
		uniform float2 _FlowDirection;
		uniform float _FlowStrength;
		uniform float _FlowSpeed;
		uniform float _ToggleFloweffect;
		uniform float _OverlayAlpha;
		uniform float _GlowScale;
		uniform float _GlowPower;
		uniform float4 _GlowColor;
		uniform float _GlowSpeed;
		uniform sampler2D _GlowEffectTexture;
		uniform float _LerpGlowEffectTextureAlpha;
		uniform float _ToggleGlowEffects;
		uniform float _GlowAlpha;
		uniform float4 _SparkleColor1;
		uniform float _GlitterThreshold;
		uniform float _GlitterRange;
		uniform sampler2D _GlitterNoise;
		uniform float _GlitterScreenContribution;
		uniform float4 _GlitterNoise_ST;
		uniform float _GlitterFrequency;
		uniform float _GlitterSpeed;
		uniform float _SparklesBrightness1;
		uniform sampler2D _GlitterNormalTexture;
		uniform float4 _GlitterNormalTexture_ST;
		uniform float3 _SparkleFresnel1;
		uniform float _LerpGlitterAlpha;
		uniform float4 _GlintColor1;
		uniform float3 _ScanlineOptions;
		uniform sampler2D _ScanlineTexture;
		uniform float4 _ScanlineTexture_ST;
		uniform float _LerpScanlineAlpha;
		uniform float _MetallicStrength;
		uniform sampler2D _MetallicTexture;
		uniform float4 _MetallicTexture_ST;
		uniform float _MetallicTextureStrength;
		uniform float _LerpMetallicTexture;
		uniform float _ToggleMetallic;
		uniform float _SmoothnessStrength;
		uniform sampler2D _SmoothnessTexture;
		uniform float4 _SmoothnessTexture_ST;
		uniform float _SmoothnessTextureStrength;
		uniform float _LerpSmoothnessTexture;
		uniform float _ToggleSmoothness;
		uniform float _OpacityStrength;
		uniform float _ToggleOpacity;
		uniform float _OutlineWidth;
		uniform float4 _OutlineColor;
		uniform float _OutlineHueHue;
		uniform float _OutlineHueSaturation;
		uniform float _OutlineHueValue;
		uniform sampler2D _OutlineTex;
		uniform float2 _OutlineTexTiling;
		UNITY_DECLARE_DEPTH_TEXTURE( _CameraDepthTexture );
		uniform float4 _CameraDepthTexture_TexelSize;
		uniform float2 _OutlineTexSpeed;
		uniform float _ToggleOutlineAlphaTexture;
		uniform float _ToggleOutlineTexwithHue;
		uniform float _LerpOutlineHuetoTex;
		uniform float _ToggleOutlineEffects;


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float4 ASE_ComputeGrabScreenPos( float4 pos )
		{
			#if UNITY_UV_STARTS_AT_TOP
			float scale = -1.0;
			#else
			float scale = 1.0;
			#endif
			float4 o = pos;
			o.y = pos.w * 0.5f;
			o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
			return o;
		}


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			v.vertex.xyz += 0;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			o.Normal = float3(0,0,1);
			float2 uv_MainTexture = i.uv_texcoord * _MainTexture_ST.xy + _MainTexture_ST.zw;
			float4 temp_cast_0 = (0.0).xxxx;
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float4 lerpResult82 = lerp( ase_screenPosNorm , float4( i.uv_texcoord, 0.0 , 0.0 ) , _LerpOverlayTexturetoMeshed);
			float4 temp_output_81_0 = ( float4( _OverlayTextureTiling, 0.0 , 0.0 ) * ( lerpResult82 + float4( ( _OverlayTextureSpeed * _Time.y ), 0.0 , 0.0 ) ) );
			float4 tex2DNode71 = tex2D( _OverlayTexture, temp_output_81_0.xy );
			float4 temp_cast_5 = (tex2DNode71.a).xxxx;
			float4 lerpResult97 = lerp( tex2DNode71 , temp_cast_5 , _ToggleOverlayAlphaTexture);
			float2 temp_output_4_0_g4 = (( temp_output_81_0.xy / _Size )).xy;
			float2 temp_output_41_0_g4 = ( _FlowDirection + 0.5 );
			float2 temp_cast_9 = (_FlowStrength).xx;
			float2 temp_output_17_0_g4 = temp_cast_9;
			float mulTime22_g4 = _Time.y * _FlowSpeed;
			float temp_output_27_0_g4 = frac( mulTime22_g4 );
			float2 temp_output_11_0_g4 = ( temp_output_4_0_g4 + ( temp_output_41_0_g4 * temp_output_17_0_g4 * temp_output_27_0_g4 ) );
			float2 temp_output_12_0_g4 = ( temp_output_4_0_g4 + ( temp_output_41_0_g4 * temp_output_17_0_g4 * frac( ( mulTime22_g4 + 0.5 ) ) ) );
			float3 lerpResult9_g4 = lerp( UnpackNormal( tex2D( _OverlayTexture, temp_output_11_0_g4 ) ) , UnpackNormal( tex2D( _OverlayTexture, temp_output_12_0_g4 ) ) , ( abs( ( temp_output_27_0_g4 - 0.5 ) ) / 0.5 ));
			float4 lerpResult73 = lerp( ( lerpResult97 * _OverlayTextureColor ) , ( float4( lerpResult9_g4 , 0.0 ) * _OverlayTextureColor ) , _ToggleFloweffect);
			float4 lerpResult88 = lerp( temp_cast_0 , lerpResult73 , _OverlayAlpha);
			float4 temp_output_70_0 = ( ( tex2D( _MainTexture, uv_MainTexture ) * _MainColor ) + lerpResult88 );
			float4 temp_cast_11 = (0.0).xxxx;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float fresnelNdotV325 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode325 = ( 0.0 + _GlowScale * pow( 1.0 - fresnelNdotV325, _GlowPower ) );
			float mulTime339 = _Time.y * _GlowSpeed;
			float3 hsvTorgb3_g16 = HSVToRGB( float3(mulTime339,1.0,1.0) );
			float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( ase_screenPos );
			float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
			float4 lerpResult345 = lerp( float4( i.uv_texcoord, 0.0 , 0.0 ) , ase_grabScreenPosNorm , _ScreenParams);
			float4 tex2DNode336 = tex2D( _GlowEffectTexture, lerpResult345.xy );
			float4 temp_cast_15 = (tex2DNode336.a).xxxx;
			float4 lerpResult342 = lerp( tex2DNode336 , temp_cast_15 , _LerpGlowEffectTextureAlpha);
			float4 lerpResult334 = lerp( _GlowColor , ( float4( hsvTorgb3_g16 , 0.0 ) + lerpResult342 ) , _ToggleGlowEffects);
			float4 lerpResult329 = lerp( temp_cast_11 , ( fresnelNode325 * lerpResult334 ) , _GlowAlpha);
			float4 temp_cast_16 = (0.0).xxxx;
			float2 uv0_GlitterNoise = i.uv_texcoord * _GlitterNoise_ST.xy + _GlitterNoise_ST.zw;
			float2 temp_output_427_0 = ( uv0_GlitterNoise * _GlitterFrequency );
			float mulTime425 = _Time.y * _GlitterSpeed;
			float smoothstepResult445 = smoothstep( _GlitterThreshold , ( _GlitterThreshold + _GlitterRange ) , ( tex2D( _GlitterNoise, ( ( (ase_screenPosNorm).xy * _GlitterScreenContribution ) + temp_output_427_0 + mulTime425 ) ).g * tex2D( _GlitterNoise, ( ( temp_output_427_0 * 1.1 ) + -mulTime425 ) ).g ));
			float2 uv_GlitterNormalTexture = i.uv_texcoord * _GlitterNormalTexture_ST.xy + _GlitterNormalTexture_ST.zw;
			float fresnelNdotV443 = dot( (WorldNormalVector( i , UnpackNormal( tex2D( _GlitterNormalTexture, uv_GlitterNormalTexture ) ) )), ase_worldViewDir );
			float fresnelNode443 = ( _SparkleFresnel1.x + _SparkleFresnel1.y * pow( max( 1.0 - fresnelNdotV443 , 0.0001 ), _SparkleFresnel1.z ) );
			float4 lerpResult449 = lerp( temp_cast_16 , ( _SparkleColor1 * smoothstepResult445 * _SparklesBrightness1 * fresnelNode443 ) , _LerpGlitterAlpha);
			float4 temp_cast_17 = (0.0).xxxx;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			#if defined(_SCANLINEDIRECTION_X)
				float staticSwitch381 = ase_vertex3Pos.x;
			#elif defined(_SCANLINEDIRECTION_Y)
				float staticSwitch381 = ase_vertex3Pos.y;
			#elif defined(_SCANLINEDIRECTION_Z)
				float staticSwitch381 = ase_vertex3Pos.z;
			#else
				float staticSwitch381 = ase_vertex3Pos.y;
			#endif
			#ifdef _INVERTDIRECTION1_ON
				float staticSwitch385 = -staticSwitch381;
			#else
				float staticSwitch385 = staticSwitch381;
			#endif
			float temp_output_384_0 = ( _ScanlineOptions.x * _ScanlineOptions.y );
			float mulTime386 = _Time.y * temp_output_384_0;
			float temp_output_396_0 = ( fmod( ( ( staticSwitch385 * _ScanlineOptions.x ) + mulTime386 ) , ( ( temp_output_384_0 + 1.0 ) * _ScanlineOptions.z ) ) + ( 0.5 - 1.0 ) );
			float saferPower404 = max( ( 1.0 - ( saturate( ( temp_output_396_0 * ( -1.0 / ( 1.0 - 0.5 ) ) ) ) + saturate( ( temp_output_396_0 * ( 1.0 / 0.5 ) ) ) ) ) , 0.0001 );
			float2 uv_ScanlineTexture = i.uv_texcoord * _ScanlineTexture_ST.xy + _ScanlineTexture_ST.zw;
			float4 lerpResult406 = lerp( temp_cast_17 , ( _GlintColor1 * pow( saferPower404 , 5.0 ) * tex2D( _ScanlineTexture, uv_ScanlineTexture ) ) , _LerpScanlineAlpha);
			o.Albedo = ( temp_output_70_0 + lerpResult329 + lerpResult449 + lerpResult406 ).rgb;
			o.Emission = ( temp_output_70_0 + lerpResult329 + lerpResult406 + lerpResult449 ).rgb;
			float4 temp_cast_20 = (0.0).xxxx;
			float4 temp_cast_21 = (_MetallicStrength).xxxx;
			float2 uv_MetallicTexture = i.uv_texcoord * _MetallicTexture_ST.xy + _MetallicTexture_ST.zw;
			float4 lerpResult105 = lerp( temp_cast_21 , ( tex2D( _MetallicTexture, uv_MetallicTexture ) * _MetallicTextureStrength ) , _LerpMetallicTexture);
			float4 lerpResult102 = lerp( temp_cast_20 , lerpResult105 , _ToggleMetallic);
			o.Metallic = lerpResult102.r;
			float4 temp_cast_23 = (0.0).xxxx;
			float4 temp_cast_24 = (_SmoothnessStrength).xxxx;
			float2 uv_SmoothnessTexture = i.uv_texcoord * _SmoothnessTexture_ST.xy + _SmoothnessTexture_ST.zw;
			float4 lerpResult120 = lerp( temp_cast_24 , ( tex2D( _SmoothnessTexture, uv_SmoothnessTexture ) * _SmoothnessTextureStrength ) , _LerpSmoothnessTexture);
			float4 lerpResult122 = lerp( temp_cast_23 , lerpResult120 , _ToggleSmoothness);
			o.Smoothness = lerpResult122.r;
			float lerpResult126 = lerp( 0.0 , _OpacityStrength , _ToggleOpacity);
			o.Alpha = lerpResult126;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf Standard keepalpha fullforwardshadows exclude_path:deferred vertex:vertexDataFunc 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 screenPos : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v, customInputData );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				o.screenPos = ComputeScreenPos( o.pos );
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				surfIN.screenPos = IN.screenPos;
				SurfaceOutputStandard o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandard, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				half alphaRef = tex3D( _DitherMaskLOD, float3( vpos.xy * 0.25, o.Alpha * 0.9375 ) ).a;
				clip( alphaRef - 0.01 );
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
