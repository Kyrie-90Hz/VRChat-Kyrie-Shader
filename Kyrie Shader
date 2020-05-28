// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "90Hz/Kyrîe Shader"
{
	Properties
	{
		[Header(Main Settings)]
		_MainColor("Main Color", Color) = (0.4705883,0.4705883,0.4705883,0)
		[Space(5)]
		_MainTexture("Main Texture", 2D) = "white" {}

		[Space(20)]

		[Header(Overlay Settings)]
		_OverlayAlpha("Overlay Alpha", Range( 0 , 1)) = 0
		[Space(5)]
		_OverlayTextureColor("Overlay Texture Color", Color) = (1,1,1,0)
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

		[Space(20)]

		[Header(Metallic Settings)]
		[Toggle]_ToggleMetallic("Toggle Metallic", Range( 0 , 1)) = 0
		[Space(5)]
		_MetallicStrength("Metallic Strength", Range( -10 , 10)) = 0
		[Header(Metallic Texture Settings)]
		_LerpMetallicTexture("Lerp Metallic Texture", Range( 0 , 1)) = 0
		[Space(5)]
		_MetallicTexture("Metallic Texture", 2D) = "white" {}
		[Space(5)]
		_MetallicTextureStrength("Metallic Texture Strength", Range( -10 , 10)) = 0

		[Space(20)]

		[Header(Smoothness Settings)]
		[Toggle]_ToggleSmoothness("Toggle Smoothness", Range( 0 , 1)) = 0
		[Space(5)]
		_SmoothnessStrength("Smoothness Strength", Range( -10 , 10)) = 0
		[Header(Smoothness Texture Settings)]_LerpSmoothnessTexture("Lerp Smoothness Texture", Range( 0 , 1)) = 0
		[Space(5)]
		_SmoothnessTexture("Smoothness Texture", 2D) = "white" {}
		[Space(5)]
		_SmoothnessTextureStrength("Smoothness Texture Strength", Range( -10 , 10)) = 0
        
		[Space(20)]

		[Header(Opacity Settings)]
		[Toggle]_ToggleOpacity("Toggle Opacity", Range( 0 , 1)) = 0
		[Space(5)]
		_OpacityStrength("Opacity Strength", Range( -10 , 10)) = 1

		[Space(20)]

		[Header(Outline Settings)]
		_OutlineColor("Outline Color", Color) = (0,0,0,0)
		[Space(5)]
		_OutlineWidth("Outline Width", Float) = 0
		[Space(5)]
		[Toggle][Header(Outline Effect Settings)]_ToggleOutlineEffects("Toggle Outline Effects", Range( 0 , 1)) = 0
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
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
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
		struct Input
		{
			float2 uv_texcoord;
			float4 screenPos;
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


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			v.vertex.xyz += 0;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
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
			o.Albedo = temp_output_70_0.rgb;
			o.Emission = temp_output_70_0.rgb;
			float4 temp_cast_13 = (0.0).xxxx;
			float4 temp_cast_14 = (_MetallicStrength).xxxx;
			float2 uv_MetallicTexture = i.uv_texcoord * _MetallicTexture_ST.xy + _MetallicTexture_ST.zw;
			float4 lerpResult105 = lerp( temp_cast_14 , ( tex2D( _MetallicTexture, uv_MetallicTexture ) * _MetallicTextureStrength ) , _LerpMetallicTexture);
			float4 lerpResult102 = lerp( temp_cast_13 , lerpResult105 , _ToggleMetallic);
			o.Metallic = lerpResult102.r;
			float4 temp_cast_16 = (0.0).xxxx;
			float4 temp_cast_17 = (_SmoothnessStrength).xxxx;
			float2 uv_SmoothnessTexture = i.uv_texcoord * _SmoothnessTexture_ST.xy + _SmoothnessTexture_ST.zw;
			float4 lerpResult120 = lerp( temp_cast_17 , ( tex2D( _SmoothnessTexture, uv_SmoothnessTexture ) * _SmoothnessTextureStrength ) , _LerpSmoothnessTexture);
			float4 lerpResult122 = lerp( temp_cast_16 , lerpResult120 , _ToggleSmoothness);
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
				float3 worldPos : TEXCOORD2;
				float4 screenPos : TEXCOORD3;
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
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				o.worldPos = worldPos;
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
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
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
