; ModuleID = 'obj\Release\90\android\typemaps.armeabi-v7a.ll'
source_filename = "obj\Release\90\android\typemaps.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.TypeMapJava = type {
	i32,; uint32_t module_index
	i32,; uint32_t type_token_id
	i32; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8],; uint8_t module_uuid[16]
	i32,; uint32_t entry_count
	i32,; uint32_t duplicate_count
	%struct.TypeMapModuleEntry*,; TypeMapModuleEntry* map
	%struct.TypeMapModuleEntry*,; TypeMapModuleEntry* duplicate_map
	i8*,; char* assembly_name
	%struct.MonoImage*,; MonoImage* image
	i32,; uint32_t java_name_width
	i8*; uint8_t* java_map
}

%struct.TypeMapModuleEntry = type {
	i32,; uint32_t type_token_id
	i32; uint32_t java_map_index
}

@map_module_count = local_unnamed_addr constant i32 19, align 4

@java_type_count = local_unnamed_addr constant i32 502, align 4

; Map modules data

; module0_managed_to_java
@module0_managed_to_java = internal constant [37 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554434, ; type_token_id
		i32 294; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554435, ; type_token_id
		i32 31; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 259; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 478; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554438, ; type_token_id
		i32 469; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554439, ; type_token_id
		i32 19; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554440, ; type_token_id
		i32 457; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554441, ; type_token_id
		i32 376; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554443, ; type_token_id
		i32 4; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554445, ; type_token_id
		i32 377; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554447, ; type_token_id
		i32 180; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554448, ; type_token_id
		i32 21; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554451, ; type_token_id
		i32 485; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554455, ; type_token_id
		i32 29; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554457, ; type_token_id
		i32 441; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554459, ; type_token_id
		i32 195; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554460, ; type_token_id
		i32 351; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554461, ; type_token_id
		i32 116; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554463, ; type_token_id
		i32 488; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554464, ; type_token_id
		i32 8; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554466, ; type_token_id
		i32 93; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554467, ; type_token_id
		i32 99; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554468, ; type_token_id
		i32 466; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554471, ; type_token_id
		i32 496; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554473, ; type_token_id
		i32 186; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554477, ; type_token_id
		i32 125; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554478, ; type_token_id
		i32 46; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554479, ; type_token_id
		i32 25; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554480, ; type_token_id
		i32 251; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554482, ; type_token_id
		i32 365; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554484, ; type_token_id
		i32 41; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554486, ; type_token_id
		i32 316; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554488, ; type_token_id
		i32 44; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554490, ; type_token_id
		i32 148; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554492, ; type_token_id
		i32 400; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554493, ; type_token_id
		i32 342; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554494, ; type_token_id
		i32 87; java_map_index
	}
], align 4; end of 'module0_managed_to_java' array


; module0_managed_to_java_duplicates
@module0_managed_to_java_duplicates = internal constant [4 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; type_token_id
		i32 21; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; type_token_id
		i32 457; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554462, ; type_token_id
		i32 116; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554483, ; type_token_id
		i32 251; java_map_index
	}
], align 4; end of 'module0_managed_to_java_duplicates' array


; module1_managed_to_java
@module1_managed_to_java = internal constant [2 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 398; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554441, ; type_token_id
		i32 220; java_map_index
	}
], align 4; end of 'module1_managed_to_java' array


; module2_managed_to_java
@module2_managed_to_java = internal constant [2 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554435, ; type_token_id
		i32 438; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 482; java_map_index
	}
], align 4; end of 'module2_managed_to_java' array


; module3_managed_to_java
@module3_managed_to_java = internal constant [2 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554457, ; type_token_id
		i32 114; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554458, ; type_token_id
		i32 54; java_map_index
	}
], align 4; end of 'module3_managed_to_java' array


; module4_managed_to_java
@module4_managed_to_java = internal constant [369 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554583, ; type_token_id
		i32 402; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554584, ; type_token_id
		i32 154; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554586, ; type_token_id
		i32 37; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554588, ; type_token_id
		i32 429; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554590, ; type_token_id
		i32 399; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554592, ; type_token_id
		i32 325; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554594, ; type_token_id
		i32 168; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554596, ; type_token_id
		i32 391; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554598, ; type_token_id
		i32 22; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554600, ; type_token_id
		i32 103; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554602, ; type_token_id
		i32 440; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554604, ; type_token_id
		i32 137; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554605, ; type_token_id
		i32 163; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554606, ; type_token_id
		i32 455; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554608, ; type_token_id
		i32 483; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554618, ; type_token_id
		i32 463; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554619, ; type_token_id
		i32 34; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554620, ; type_token_id
		i32 96; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554621, ; type_token_id
		i32 104; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554622, ; type_token_id
		i32 408; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554623, ; type_token_id
		i32 139; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554624, ; type_token_id
		i32 151; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554625, ; type_token_id
		i32 268; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554626, ; type_token_id
		i32 133; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554628, ; type_token_id
		i32 129; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554631, ; type_token_id
		i32 108; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554633, ; type_token_id
		i32 415; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554635, ; type_token_id
		i32 262; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554636, ; type_token_id
		i32 255; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554639, ; type_token_id
		i32 481; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554640, ; type_token_id
		i32 248; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554645, ; type_token_id
		i32 397; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554646, ; type_token_id
		i32 318; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554647, ; type_token_id
		i32 32; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554648, ; type_token_id
		i32 91; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554650, ; type_token_id
		i32 328; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554655, ; type_token_id
		i32 191; java_map_index
	}, 
	; 37
	%struct.TypeMapModuleEntry {
		i32 33554656, ; type_token_id
		i32 214; java_map_index
	}, 
	; 38
	%struct.TypeMapModuleEntry {
		i32 33554657, ; type_token_id
		i32 216; java_map_index
	}, 
	; 39
	%struct.TypeMapModuleEntry {
		i32 33554658, ; type_token_id
		i32 499; java_map_index
	}, 
	; 40
	%struct.TypeMapModuleEntry {
		i32 33554661, ; type_token_id
		i32 282; java_map_index
	}, 
	; 41
	%struct.TypeMapModuleEntry {
		i32 33554665, ; type_token_id
		i32 127; java_map_index
	}, 
	; 42
	%struct.TypeMapModuleEntry {
		i32 33554666, ; type_token_id
		i32 74; java_map_index
	}, 
	; 43
	%struct.TypeMapModuleEntry {
		i32 33554667, ; type_token_id
		i32 322; java_map_index
	}, 
	; 44
	%struct.TypeMapModuleEntry {
		i32 33554670, ; type_token_id
		i32 223; java_map_index
	}, 
	; 45
	%struct.TypeMapModuleEntry {
		i32 33554671, ; type_token_id
		i32 260; java_map_index
	}, 
	; 46
	%struct.TypeMapModuleEntry {
		i32 33554672, ; type_token_id
		i32 120; java_map_index
	}, 
	; 47
	%struct.TypeMapModuleEntry {
		i32 33554673, ; type_token_id
		i32 326; java_map_index
	}, 
	; 48
	%struct.TypeMapModuleEntry {
		i32 33554675, ; type_token_id
		i32 330; java_map_index
	}, 
	; 49
	%struct.TypeMapModuleEntry {
		i32 33554677, ; type_token_id
		i32 162; java_map_index
	}, 
	; 50
	%struct.TypeMapModuleEntry {
		i32 33554679, ; type_token_id
		i32 5; java_map_index
	}, 
	; 51
	%struct.TypeMapModuleEntry {
		i32 33554681, ; type_token_id
		i32 445; java_map_index
	}, 
	; 52
	%struct.TypeMapModuleEntry {
		i32 33554682, ; type_token_id
		i32 270; java_map_index
	}, 
	; 53
	%struct.TypeMapModuleEntry {
		i32 33554684, ; type_token_id
		i32 10; java_map_index
	}, 
	; 54
	%struct.TypeMapModuleEntry {
		i32 33554686, ; type_token_id
		i32 241; java_map_index
	}, 
	; 55
	%struct.TypeMapModuleEntry {
		i32 33554687, ; type_token_id
		i32 181; java_map_index
	}, 
	; 56
	%struct.TypeMapModuleEntry {
		i32 33554688, ; type_token_id
		i32 362; java_map_index
	}, 
	; 57
	%struct.TypeMapModuleEntry {
		i32 33554690, ; type_token_id
		i32 185; java_map_index
	}, 
	; 58
	%struct.TypeMapModuleEntry {
		i32 33554691, ; type_token_id
		i32 144; java_map_index
	}, 
	; 59
	%struct.TypeMapModuleEntry {
		i32 33554692, ; type_token_id
		i32 85; java_map_index
	}, 
	; 60
	%struct.TypeMapModuleEntry {
		i32 33554693, ; type_token_id
		i32 344; java_map_index
	}, 
	; 61
	%struct.TypeMapModuleEntry {
		i32 33554694, ; type_token_id
		i32 265; java_map_index
	}, 
	; 62
	%struct.TypeMapModuleEntry {
		i32 33554695, ; type_token_id
		i32 453; java_map_index
	}, 
	; 63
	%struct.TypeMapModuleEntry {
		i32 33554697, ; type_token_id
		i32 207; java_map_index
	}, 
	; 64
	%struct.TypeMapModuleEntry {
		i32 33554698, ; type_token_id
		i32 236; java_map_index
	}, 
	; 65
	%struct.TypeMapModuleEntry {
		i32 33554700, ; type_token_id
		i32 476; java_map_index
	}, 
	; 66
	%struct.TypeMapModuleEntry {
		i32 33554701, ; type_token_id
		i32 118; java_map_index
	}, 
	; 67
	%struct.TypeMapModuleEntry {
		i32 33554703, ; type_token_id
		i32 311; java_map_index
	}, 
	; 68
	%struct.TypeMapModuleEntry {
		i32 33554706, ; type_token_id
		i32 306; java_map_index
	}, 
	; 69
	%struct.TypeMapModuleEntry {
		i32 33554711, ; type_token_id
		i32 23; java_map_index
	}, 
	; 70
	%struct.TypeMapModuleEntry {
		i32 33554712, ; type_token_id
		i32 121; java_map_index
	}, 
	; 71
	%struct.TypeMapModuleEntry {
		i32 33554714, ; type_token_id
		i32 416; java_map_index
	}, 
	; 72
	%struct.TypeMapModuleEntry {
		i32 33554715, ; type_token_id
		i32 63; java_map_index
	}, 
	; 73
	%struct.TypeMapModuleEntry {
		i32 33554717, ; type_token_id
		i32 444; java_map_index
	}, 
	; 74
	%struct.TypeMapModuleEntry {
		i32 33554719, ; type_token_id
		i32 327; java_map_index
	}, 
	; 75
	%struct.TypeMapModuleEntry {
		i32 33554720, ; type_token_id
		i32 76; java_map_index
	}, 
	; 76
	%struct.TypeMapModuleEntry {
		i32 33554721, ; type_token_id
		i32 490; java_map_index
	}, 
	; 77
	%struct.TypeMapModuleEntry {
		i32 33554723, ; type_token_id
		i32 425; java_map_index
	}, 
	; 78
	%struct.TypeMapModuleEntry {
		i32 33554725, ; type_token_id
		i32 142; java_map_index
	}, 
	; 79
	%struct.TypeMapModuleEntry {
		i32 33554727, ; type_token_id
		i32 436; java_map_index
	}, 
	; 80
	%struct.TypeMapModuleEntry {
		i32 33554728, ; type_token_id
		i32 158; java_map_index
	}, 
	; 81
	%struct.TypeMapModuleEntry {
		i32 33554730, ; type_token_id
		i32 350; java_map_index
	}, 
	; 82
	%struct.TypeMapModuleEntry {
		i32 33554731, ; type_token_id
		i32 383; java_map_index
	}, 
	; 83
	%struct.TypeMapModuleEntry {
		i32 33554735, ; type_token_id
		i32 421; java_map_index
	}, 
	; 84
	%struct.TypeMapModuleEntry {
		i32 33554737, ; type_token_id
		i32 261; java_map_index
	}, 
	; 85
	%struct.TypeMapModuleEntry {
		i32 33554738, ; type_token_id
		i32 200; java_map_index
	}, 
	; 86
	%struct.TypeMapModuleEntry {
		i32 33554739, ; type_token_id
		i32 345; java_map_index
	}, 
	; 87
	%struct.TypeMapModuleEntry {
		i32 33554742, ; type_token_id
		i32 310; java_map_index
	}, 
	; 88
	%struct.TypeMapModuleEntry {
		i32 33554744, ; type_token_id
		i32 449; java_map_index
	}, 
	; 89
	%struct.TypeMapModuleEntry {
		i32 33554746, ; type_token_id
		i32 493; java_map_index
	}, 
	; 90
	%struct.TypeMapModuleEntry {
		i32 33554748, ; type_token_id
		i32 39; java_map_index
	}, 
	; 91
	%struct.TypeMapModuleEntry {
		i32 33554750, ; type_token_id
		i32 492; java_map_index
	}, 
	; 92
	%struct.TypeMapModuleEntry {
		i32 33554752, ; type_token_id
		i32 388; java_map_index
	}, 
	; 93
	%struct.TypeMapModuleEntry {
		i32 33554754, ; type_token_id
		i32 358; java_map_index
	}, 
	; 94
	%struct.TypeMapModuleEntry {
		i32 33554756, ; type_token_id
		i32 149; java_map_index
	}, 
	; 95
	%struct.TypeMapModuleEntry {
		i32 33554758, ; type_token_id
		i32 479; java_map_index
	}, 
	; 96
	%struct.TypeMapModuleEntry {
		i32 33554760, ; type_token_id
		i32 356; java_map_index
	}, 
	; 97
	%struct.TypeMapModuleEntry {
		i32 33554762, ; type_token_id
		i32 179; java_map_index
	}, 
	; 98
	%struct.TypeMapModuleEntry {
		i32 33554764, ; type_token_id
		i32 65; java_map_index
	}, 
	; 99
	%struct.TypeMapModuleEntry {
		i32 33554766, ; type_token_id
		i32 196; java_map_index
	}, 
	; 100
	%struct.TypeMapModuleEntry {
		i32 33554767, ; type_token_id
		i32 384; java_map_index
	}, 
	; 101
	%struct.TypeMapModuleEntry {
		i32 33554773, ; type_token_id
		i32 221; java_map_index
	}, 
	; 102
	%struct.TypeMapModuleEntry {
		i32 33554778, ; type_token_id
		i32 242; java_map_index
	}, 
	; 103
	%struct.TypeMapModuleEntry {
		i32 33554782, ; type_token_id
		i32 370; java_map_index
	}, 
	; 104
	%struct.TypeMapModuleEntry {
		i32 33554785, ; type_token_id
		i32 474; java_map_index
	}, 
	; 105
	%struct.TypeMapModuleEntry {
		i32 33554789, ; type_token_id
		i32 12; java_map_index
	}, 
	; 106
	%struct.TypeMapModuleEntry {
		i32 33554790, ; type_token_id
		i32 45; java_map_index
	}, 
	; 107
	%struct.TypeMapModuleEntry {
		i32 33554791, ; type_token_id
		i32 60; java_map_index
	}, 
	; 108
	%struct.TypeMapModuleEntry {
		i32 33554793, ; type_token_id
		i32 389; java_map_index
	}, 
	; 109
	%struct.TypeMapModuleEntry {
		i32 33554798, ; type_token_id
		i32 269; java_map_index
	}, 
	; 110
	%struct.TypeMapModuleEntry {
		i32 33554800, ; type_token_id
		i32 465; java_map_index
	}, 
	; 111
	%struct.TypeMapModuleEntry {
		i32 33554802, ; type_token_id
		i32 382; java_map_index
	}, 
	; 112
	%struct.TypeMapModuleEntry {
		i32 33554805, ; type_token_id
		i32 419; java_map_index
	}, 
	; 113
	%struct.TypeMapModuleEntry {
		i32 33554806, ; type_token_id
		i32 258; java_map_index
	}, 
	; 114
	%struct.TypeMapModuleEntry {
		i32 33554810, ; type_token_id
		i32 36; java_map_index
	}, 
	; 115
	%struct.TypeMapModuleEntry {
		i32 33554812, ; type_token_id
		i32 329; java_map_index
	}, 
	; 116
	%struct.TypeMapModuleEntry {
		i32 33554814, ; type_token_id
		i32 18; java_map_index
	}, 
	; 117
	%struct.TypeMapModuleEntry {
		i32 33554815, ; type_token_id
		i32 359; java_map_index
	}, 
	; 118
	%struct.TypeMapModuleEntry {
		i32 33554817, ; type_token_id
		i32 473; java_map_index
	}, 
	; 119
	%struct.TypeMapModuleEntry {
		i32 33554818, ; type_token_id
		i32 298; java_map_index
	}, 
	; 120
	%struct.TypeMapModuleEntry {
		i32 33554821, ; type_token_id
		i32 240; java_map_index
	}, 
	; 121
	%struct.TypeMapModuleEntry {
		i32 33554822, ; type_token_id
		i32 396; java_map_index
	}, 
	; 122
	%struct.TypeMapModuleEntry {
		i32 33554825, ; type_token_id
		i32 24; java_map_index
	}, 
	; 123
	%struct.TypeMapModuleEntry {
		i32 33554828, ; type_token_id
		i32 131; java_map_index
	}, 
	; 124
	%struct.TypeMapModuleEntry {
		i32 33554829, ; type_token_id
		i32 447; java_map_index
	}, 
	; 125
	%struct.TypeMapModuleEntry {
		i32 33554831, ; type_token_id
		i32 428; java_map_index
	}, 
	; 126
	%struct.TypeMapModuleEntry {
		i32 33554834, ; type_token_id
		i32 250; java_map_index
	}, 
	; 127
	%struct.TypeMapModuleEntry {
		i32 33554836, ; type_token_id
		i32 334; java_map_index
	}, 
	; 128
	%struct.TypeMapModuleEntry {
		i32 33554839, ; type_token_id
		i32 234; java_map_index
	}, 
	; 129
	%struct.TypeMapModuleEntry {
		i32 33554842, ; type_token_id
		i32 486; java_map_index
	}, 
	; 130
	%struct.TypeMapModuleEntry {
		i32 33554844, ; type_token_id
		i32 227; java_map_index
	}, 
	; 131
	%struct.TypeMapModuleEntry {
		i32 33554845, ; type_token_id
		i32 140; java_map_index
	}, 
	; 132
	%struct.TypeMapModuleEntry {
		i32 33554847, ; type_token_id
		i32 371; java_map_index
	}, 
	; 133
	%struct.TypeMapModuleEntry {
		i32 33554849, ; type_token_id
		i32 422; java_map_index
	}, 
	; 134
	%struct.TypeMapModuleEntry {
		i32 33554851, ; type_token_id
		i32 184; java_map_index
	}, 
	; 135
	%struct.TypeMapModuleEntry {
		i32 33554854, ; type_token_id
		i32 305; java_map_index
	}, 
	; 136
	%struct.TypeMapModuleEntry {
		i32 33554855, ; type_token_id
		i32 117; java_map_index
	}, 
	; 137
	%struct.TypeMapModuleEntry {
		i32 33554856, ; type_token_id
		i32 42; java_map_index
	}, 
	; 138
	%struct.TypeMapModuleEntry {
		i32 33554858, ; type_token_id
		i32 407; java_map_index
	}, 
	; 139
	%struct.TypeMapModuleEntry {
		i32 33554860, ; type_token_id
		i32 246; java_map_index
	}, 
	; 140
	%struct.TypeMapModuleEntry {
		i32 33554861, ; type_token_id
		i32 136; java_map_index
	}, 
	; 141
	%struct.TypeMapModuleEntry {
		i32 33554862, ; type_token_id
		i32 333; java_map_index
	}, 
	; 142
	%struct.TypeMapModuleEntry {
		i32 33554864, ; type_token_id
		i32 369; java_map_index
	}, 
	; 143
	%struct.TypeMapModuleEntry {
		i32 33554866, ; type_token_id
		i32 426; java_map_index
	}, 
	; 144
	%struct.TypeMapModuleEntry {
		i32 33554868, ; type_token_id
		i32 62; java_map_index
	}, 
	; 145
	%struct.TypeMapModuleEntry {
		i32 33554871, ; type_token_id
		i32 122; java_map_index
	}, 
	; 146
	%struct.TypeMapModuleEntry {
		i32 33554873, ; type_token_id
		i32 368; java_map_index
	}, 
	; 147
	%struct.TypeMapModuleEntry {
		i32 33554874, ; type_token_id
		i32 80; java_map_index
	}, 
	; 148
	%struct.TypeMapModuleEntry {
		i32 33554876, ; type_token_id
		i32 343; java_map_index
	}, 
	; 149
	%struct.TypeMapModuleEntry {
		i32 33554878, ; type_token_id
		i32 450; java_map_index
	}, 
	; 150
	%struct.TypeMapModuleEntry {
		i32 33554880, ; type_token_id
		i32 430; java_map_index
	}, 
	; 151
	%struct.TypeMapModuleEntry {
		i32 33554882, ; type_token_id
		i32 364; java_map_index
	}, 
	; 152
	%struct.TypeMapModuleEntry {
		i32 33554883, ; type_token_id
		i32 339; java_map_index
	}, 
	; 153
	%struct.TypeMapModuleEntry {
		i32 33554884, ; type_token_id
		i32 375; java_map_index
	}, 
	; 154
	%struct.TypeMapModuleEntry {
		i32 33554885, ; type_token_id
		i32 201; java_map_index
	}, 
	; 155
	%struct.TypeMapModuleEntry {
		i32 33554886, ; type_token_id
		i32 169; java_map_index
	}, 
	; 156
	%struct.TypeMapModuleEntry {
		i32 33554887, ; type_token_id
		i32 157; java_map_index
	}, 
	; 157
	%struct.TypeMapModuleEntry {
		i32 33554888, ; type_token_id
		i32 229; java_map_index
	}, 
	; 158
	%struct.TypeMapModuleEntry {
		i32 33554889, ; type_token_id
		i32 341; java_map_index
	}, 
	; 159
	%struct.TypeMapModuleEntry {
		i32 33554890, ; type_token_id
		i32 427; java_map_index
	}, 
	; 160
	%struct.TypeMapModuleEntry {
		i32 33554892, ; type_token_id
		i32 77; java_map_index
	}, 
	; 161
	%struct.TypeMapModuleEntry {
		i32 33554893, ; type_token_id
		i32 276; java_map_index
	}, 
	; 162
	%struct.TypeMapModuleEntry {
		i32 33554894, ; type_token_id
		i32 94; java_map_index
	}, 
	; 163
	%struct.TypeMapModuleEntry {
		i32 33554896, ; type_token_id
		i32 381; java_map_index
	}, 
	; 164
	%struct.TypeMapModuleEntry {
		i32 33554898, ; type_token_id
		i32 224; java_map_index
	}, 
	; 165
	%struct.TypeMapModuleEntry {
		i32 33554900, ; type_token_id
		i32 266; java_map_index
	}, 
	; 166
	%struct.TypeMapModuleEntry {
		i32 33554902, ; type_token_id
		i32 491; java_map_index
	}, 
	; 167
	%struct.TypeMapModuleEntry {
		i32 33554904, ; type_token_id
		i32 480; java_map_index
	}, 
	; 168
	%struct.TypeMapModuleEntry {
		i32 33554905, ; type_token_id
		i32 66; java_map_index
	}, 
	; 169
	%struct.TypeMapModuleEntry {
		i32 33554907, ; type_token_id
		i32 495; java_map_index
	}, 
	; 170
	%struct.TypeMapModuleEntry {
		i32 33554908, ; type_token_id
		i32 205; java_map_index
	}, 
	; 171
	%struct.TypeMapModuleEntry {
		i32 33554909, ; type_token_id
		i32 472; java_map_index
	}, 
	; 172
	%struct.TypeMapModuleEntry {
		i32 33554912, ; type_token_id
		i32 439; java_map_index
	}, 
	; 173
	%struct.TypeMapModuleEntry {
		i32 33554914, ; type_token_id
		i32 107; java_map_index
	}, 
	; 174
	%struct.TypeMapModuleEntry {
		i32 33554915, ; type_token_id
		i32 336; java_map_index
	}, 
	; 175
	%struct.TypeMapModuleEntry {
		i32 33554916, ; type_token_id
		i32 394; java_map_index
	}, 
	; 176
	%struct.TypeMapModuleEntry {
		i32 33554919, ; type_token_id
		i32 209; java_map_index
	}, 
	; 177
	%struct.TypeMapModuleEntry {
		i32 33554920, ; type_token_id
		i32 347; java_map_index
	}, 
	; 178
	%struct.TypeMapModuleEntry {
		i32 33554921, ; type_token_id
		i32 385; java_map_index
	}, 
	; 179
	%struct.TypeMapModuleEntry {
		i32 33554923, ; type_token_id
		i32 11; java_map_index
	}, 
	; 180
	%struct.TypeMapModuleEntry {
		i32 33554924, ; type_token_id
		i32 378; java_map_index
	}, 
	; 181
	%struct.TypeMapModuleEntry {
		i32 33554925, ; type_token_id
		i32 355; java_map_index
	}, 
	; 182
	%struct.TypeMapModuleEntry {
		i32 33554928, ; type_token_id
		i32 435; java_map_index
	}, 
	; 183
	%struct.TypeMapModuleEntry {
		i32 33554929, ; type_token_id
		i32 487; java_map_index
	}, 
	; 184
	%struct.TypeMapModuleEntry {
		i32 33554930, ; type_token_id
		i32 102; java_map_index
	}, 
	; 185
	%struct.TypeMapModuleEntry {
		i32 33554931, ; type_token_id
		i32 459; java_map_index
	}, 
	; 186
	%struct.TypeMapModuleEntry {
		i32 33554934, ; type_token_id
		i32 112; java_map_index
	}, 
	; 187
	%struct.TypeMapModuleEntry {
		i32 33554935, ; type_token_id
		i32 175; java_map_index
	}, 
	; 188
	%struct.TypeMapModuleEntry {
		i32 33554936, ; type_token_id
		i32 442; java_map_index
	}, 
	; 189
	%struct.TypeMapModuleEntry {
		i32 33554937, ; type_token_id
		i32 126; java_map_index
	}, 
	; 190
	%struct.TypeMapModuleEntry {
		i32 33554939, ; type_token_id
		i32 119; java_map_index
	}, 
	; 191
	%struct.TypeMapModuleEntry {
		i32 33554941, ; type_token_id
		i32 206; java_map_index
	}, 
	; 192
	%struct.TypeMapModuleEntry {
		i32 33554942, ; type_token_id
		i32 165; java_map_index
	}, 
	; 193
	%struct.TypeMapModuleEntry {
		i32 33554943, ; type_token_id
		i32 423; java_map_index
	}, 
	; 194
	%struct.TypeMapModuleEntry {
		i32 33554945, ; type_token_id
		i32 232; java_map_index
	}, 
	; 195
	%struct.TypeMapModuleEntry {
		i32 33554946, ; type_token_id
		i32 497; java_map_index
	}, 
	; 196
	%struct.TypeMapModuleEntry {
		i32 33554947, ; type_token_id
		i32 167; java_map_index
	}, 
	; 197
	%struct.TypeMapModuleEntry {
		i32 33554948, ; type_token_id
		i32 452; java_map_index
	}, 
	; 198
	%struct.TypeMapModuleEntry {
		i32 33554949, ; type_token_id
		i32 178; java_map_index
	}, 
	; 199
	%struct.TypeMapModuleEntry {
		i32 33554950, ; type_token_id
		i32 297; java_map_index
	}, 
	; 200
	%struct.TypeMapModuleEntry {
		i32 33554951, ; type_token_id
		i32 331; java_map_index
	}, 
	; 201
	%struct.TypeMapModuleEntry {
		i32 33554952, ; type_token_id
		i32 434; java_map_index
	}, 
	; 202
	%struct.TypeMapModuleEntry {
		i32 33554954, ; type_token_id
		i32 70; java_map_index
	}, 
	; 203
	%struct.TypeMapModuleEntry {
		i32 33554956, ; type_token_id
		i32 40; java_map_index
	}, 
	; 204
	%struct.TypeMapModuleEntry {
		i32 33554957, ; type_token_id
		i32 0; java_map_index
	}, 
	; 205
	%struct.TypeMapModuleEntry {
		i32 33554959, ; type_token_id
		i32 98; java_map_index
	}, 
	; 206
	%struct.TypeMapModuleEntry {
		i32 33554961, ; type_token_id
		i32 152; java_map_index
	}, 
	; 207
	%struct.TypeMapModuleEntry {
		i32 33554962, ; type_token_id
		i32 379; java_map_index
	}, 
	; 208
	%struct.TypeMapModuleEntry {
		i32 33554965, ; type_token_id
		i32 135; java_map_index
	}, 
	; 209
	%struct.TypeMapModuleEntry {
		i32 33554969, ; type_token_id
		i32 281; java_map_index
	}, 
	; 210
	%struct.TypeMapModuleEntry {
		i32 33554971, ; type_token_id
		i32 49; java_map_index
	}, 
	; 211
	%struct.TypeMapModuleEntry {
		i32 33554974, ; type_token_id
		i32 253; java_map_index
	}, 
	; 212
	%struct.TypeMapModuleEntry {
		i32 33554975, ; type_token_id
		i32 199; java_map_index
	}, 
	; 213
	%struct.TypeMapModuleEntry {
		i32 33554976, ; type_token_id
		i32 271; java_map_index
	}, 
	; 214
	%struct.TypeMapModuleEntry {
		i32 33554977, ; type_token_id
		i32 287; java_map_index
	}, 
	; 215
	%struct.TypeMapModuleEntry {
		i32 33554978, ; type_token_id
		i32 225; java_map_index
	}, 
	; 216
	%struct.TypeMapModuleEntry {
		i32 33554980, ; type_token_id
		i32 153; java_map_index
	}, 
	; 217
	%struct.TypeMapModuleEntry {
		i32 33554982, ; type_token_id
		i32 314; java_map_index
	}, 
	; 218
	%struct.TypeMapModuleEntry {
		i32 33554984, ; type_token_id
		i32 15; java_map_index
	}, 
	; 219
	%struct.TypeMapModuleEntry {
		i32 33554985, ; type_token_id
		i32 464; java_map_index
	}, 
	; 220
	%struct.TypeMapModuleEntry {
		i32 33554998, ; type_token_id
		i32 296; java_map_index
	}, 
	; 221
	%struct.TypeMapModuleEntry {
		i32 33555002, ; type_token_id
		i32 197; java_map_index
	}, 
	; 222
	%struct.TypeMapModuleEntry {
		i32 33555003, ; type_token_id
		i32 279; java_map_index
	}, 
	; 223
	%struct.TypeMapModuleEntry {
		i32 33555004, ; type_token_id
		i32 470; java_map_index
	}, 
	; 224
	%struct.TypeMapModuleEntry {
		i32 33555005, ; type_token_id
		i32 257; java_map_index
	}, 
	; 225
	%struct.TypeMapModuleEntry {
		i32 33555007, ; type_token_id
		i32 411; java_map_index
	}, 
	; 226
	%struct.TypeMapModuleEntry {
		i32 33555008, ; type_token_id
		i32 230; java_map_index
	}, 
	; 227
	%struct.TypeMapModuleEntry {
		i32 33555009, ; type_token_id
		i32 222; java_map_index
	}, 
	; 228
	%struct.TypeMapModuleEntry {
		i32 33555010, ; type_token_id
		i32 170; java_map_index
	}, 
	; 229
	%struct.TypeMapModuleEntry {
		i32 33555012, ; type_token_id
		i32 105; java_map_index
	}, 
	; 230
	%struct.TypeMapModuleEntry {
		i32 33555015, ; type_token_id
		i32 458; java_map_index
	}, 
	; 231
	%struct.TypeMapModuleEntry {
		i32 33555017, ; type_token_id
		i32 304; java_map_index
	}, 
	; 232
	%struct.TypeMapModuleEntry {
		i32 33555019, ; type_token_id
		i32 468; java_map_index
	}, 
	; 233
	%struct.TypeMapModuleEntry {
		i32 33555021, ; type_token_id
		i32 321; java_map_index
	}, 
	; 234
	%struct.TypeMapModuleEntry {
		i32 33555023, ; type_token_id
		i32 183; java_map_index
	}, 
	; 235
	%struct.TypeMapModuleEntry {
		i32 33555024, ; type_token_id
		i32 357; java_map_index
	}, 
	; 236
	%struct.TypeMapModuleEntry {
		i32 33555027, ; type_token_id
		i32 451; java_map_index
	}, 
	; 237
	%struct.TypeMapModuleEntry {
		i32 33555028, ; type_token_id
		i32 71; java_map_index
	}, 
	; 238
	%struct.TypeMapModuleEntry {
		i32 33555030, ; type_token_id
		i32 315; java_map_index
	}, 
	; 239
	%struct.TypeMapModuleEntry {
		i32 33555033, ; type_token_id
		i32 238; java_map_index
	}, 
	; 240
	%struct.TypeMapModuleEntry {
		i32 33555034, ; type_token_id
		i32 244; java_map_index
	}, 
	; 241
	%struct.TypeMapModuleEntry {
		i32 33555037, ; type_token_id
		i32 56; java_map_index
	}, 
	; 242
	%struct.TypeMapModuleEntry {
		i32 33555039, ; type_token_id
		i32 283; java_map_index
	}, 
	; 243
	%struct.TypeMapModuleEntry {
		i32 33555040, ; type_token_id
		i32 264; java_map_index
	}, 
	; 244
	%struct.TypeMapModuleEntry {
		i32 33555042, ; type_token_id
		i32 273; java_map_index
	}, 
	; 245
	%struct.TypeMapModuleEntry {
		i32 33555043, ; type_token_id
		i32 354; java_map_index
	}, 
	; 246
	%struct.TypeMapModuleEntry {
		i32 33555045, ; type_token_id
		i32 38; java_map_index
	}, 
	; 247
	%struct.TypeMapModuleEntry {
		i32 33555047, ; type_token_id
		i32 308; java_map_index
	}, 
	; 248
	%struct.TypeMapModuleEntry {
		i32 33555049, ; type_token_id
		i32 403; java_map_index
	}, 
	; 249
	%struct.TypeMapModuleEntry {
		i32 33555052, ; type_token_id
		i32 293; java_map_index
	}, 
	; 250
	%struct.TypeMapModuleEntry {
		i32 33555053, ; type_token_id
		i32 173; java_map_index
	}, 
	; 251
	%struct.TypeMapModuleEntry {
		i32 33555054, ; type_token_id
		i32 247; java_map_index
	}, 
	; 252
	%struct.TypeMapModuleEntry {
		i32 33555056, ; type_token_id
		i32 353; java_map_index
	}, 
	; 253
	%struct.TypeMapModuleEntry {
		i32 33555058, ; type_token_id
		i32 437; java_map_index
	}, 
	; 254
	%struct.TypeMapModuleEntry {
		i32 33555059, ; type_token_id
		i32 61; java_map_index
	}, 
	; 255
	%struct.TypeMapModuleEntry {
		i32 33555060, ; type_token_id
		i32 301; java_map_index
	}, 
	; 256
	%struct.TypeMapModuleEntry {
		i32 33555062, ; type_token_id
		i32 9; java_map_index
	}, 
	; 257
	%struct.TypeMapModuleEntry {
		i32 33555063, ; type_token_id
		i32 323; java_map_index
	}, 
	; 258
	%struct.TypeMapModuleEntry {
		i32 33555066, ; type_token_id
		i32 48; java_map_index
	}, 
	; 259
	%struct.TypeMapModuleEntry {
		i32 33555068, ; type_token_id
		i32 100; java_map_index
	}, 
	; 260
	%struct.TypeMapModuleEntry {
		i32 33555069, ; type_token_id
		i32 233; java_map_index
	}, 
	; 261
	%struct.TypeMapModuleEntry {
		i32 33555070, ; type_token_id
		i32 278; java_map_index
	}, 
	; 262
	%struct.TypeMapModuleEntry {
		i32 33555071, ; type_token_id
		i32 130; java_map_index
	}, 
	; 263
	%struct.TypeMapModuleEntry {
		i32 33555072, ; type_token_id
		i32 302; java_map_index
	}, 
	; 264
	%struct.TypeMapModuleEntry {
		i32 33555093, ; type_token_id
		i32 454; java_map_index
	}, 
	; 265
	%struct.TypeMapModuleEntry {
		i32 33555095, ; type_token_id
		i32 366; java_map_index
	}, 
	; 266
	%struct.TypeMapModuleEntry {
		i32 33555097, ; type_token_id
		i32 164; java_map_index
	}, 
	; 267
	%struct.TypeMapModuleEntry {
		i32 33555099, ; type_token_id
		i32 188; java_map_index
	}, 
	; 268
	%struct.TypeMapModuleEntry {
		i32 33555108, ; type_token_id
		i32 83; java_map_index
	}, 
	; 269
	%struct.TypeMapModuleEntry {
		i32 33555110, ; type_token_id
		i32 420; java_map_index
	}, 
	; 270
	%struct.TypeMapModuleEntry {
		i32 33555112, ; type_token_id
		i32 413; java_map_index
	}, 
	; 271
	%struct.TypeMapModuleEntry {
		i32 33555113, ; type_token_id
		i32 489; java_map_index
	}, 
	; 272
	%struct.TypeMapModuleEntry {
		i32 33555128, ; type_token_id
		i32 68; java_map_index
	}, 
	; 273
	%struct.TypeMapModuleEntry {
		i32 33555138, ; type_token_id
		i32 53; java_map_index
	}, 
	; 274
	%struct.TypeMapModuleEntry {
		i32 33555140, ; type_token_id
		i32 177; java_map_index
	}, 
	; 275
	%struct.TypeMapModuleEntry {
		i32 33555142, ; type_token_id
		i32 418; java_map_index
	}, 
	; 276
	%struct.TypeMapModuleEntry {
		i32 33555143, ; type_token_id
		i32 431; java_map_index
	}, 
	; 277
	%struct.TypeMapModuleEntry {
		i32 33555144, ; type_token_id
		i32 392; java_map_index
	}, 
	; 278
	%struct.TypeMapModuleEntry {
		i32 33555145, ; type_token_id
		i32 285; java_map_index
	}, 
	; 279
	%struct.TypeMapModuleEntry {
		i32 33555146, ; type_token_id
		i32 332; java_map_index
	}, 
	; 280
	%struct.TypeMapModuleEntry {
		i32 33555148, ; type_token_id
		i32 128; java_map_index
	}, 
	; 281
	%struct.TypeMapModuleEntry {
		i32 33555150, ; type_token_id
		i32 303; java_map_index
	}, 
	; 282
	%struct.TypeMapModuleEntry {
		i32 33555151, ; type_token_id
		i32 159; java_map_index
	}, 
	; 283
	%struct.TypeMapModuleEntry {
		i32 33555152, ; type_token_id
		i32 284; java_map_index
	}, 
	; 284
	%struct.TypeMapModuleEntry {
		i32 33555153, ; type_token_id
		i32 43; java_map_index
	}, 
	; 285
	%struct.TypeMapModuleEntry {
		i32 33555154, ; type_token_id
		i32 79; java_map_index
	}, 
	; 286
	%struct.TypeMapModuleEntry {
		i32 33555155, ; type_token_id
		i32 406; java_map_index
	}, 
	; 287
	%struct.TypeMapModuleEntry {
		i32 33555157, ; type_token_id
		i32 143; java_map_index
	}, 
	; 288
	%struct.TypeMapModuleEntry {
		i32 33555159, ; type_token_id
		i32 52; java_map_index
	}, 
	; 289
	%struct.TypeMapModuleEntry {
		i32 33555161, ; type_token_id
		i32 226; java_map_index
	}, 
	; 290
	%struct.TypeMapModuleEntry {
		i32 33555162, ; type_token_id
		i32 204; java_map_index
	}, 
	; 291
	%struct.TypeMapModuleEntry {
		i32 33555164, ; type_token_id
		i32 448; java_map_index
	}, 
	; 292
	%struct.TypeMapModuleEntry {
		i32 33555165, ; type_token_id
		i32 50; java_map_index
	}, 
	; 293
	%struct.TypeMapModuleEntry {
		i32 33555167, ; type_token_id
		i32 132; java_map_index
	}, 
	; 294
	%struct.TypeMapModuleEntry {
		i32 33555169, ; type_token_id
		i32 274; java_map_index
	}, 
	; 295
	%struct.TypeMapModuleEntry {
		i32 33555170, ; type_token_id
		i32 7; java_map_index
	}, 
	; 296
	%struct.TypeMapModuleEntry {
		i32 33555172, ; type_token_id
		i32 237; java_map_index
	}, 
	; 297
	%struct.TypeMapModuleEntry {
		i32 33555173, ; type_token_id
		i32 267; java_map_index
	}, 
	; 298
	%struct.TypeMapModuleEntry {
		i32 33555175, ; type_token_id
		i32 313; java_map_index
	}, 
	; 299
	%struct.TypeMapModuleEntry {
		i32 33555177, ; type_token_id
		i32 475; java_map_index
	}, 
	; 300
	%struct.TypeMapModuleEntry {
		i32 33555179, ; type_token_id
		i32 111; java_map_index
	}, 
	; 301
	%struct.TypeMapModuleEntry {
		i32 33555181, ; type_token_id
		i32 73; java_map_index
	}, 
	; 302
	%struct.TypeMapModuleEntry {
		i32 33555183, ; type_token_id
		i32 202; java_map_index
	}, 
	; 303
	%struct.TypeMapModuleEntry {
		i32 33555185, ; type_token_id
		i32 28; java_map_index
	}, 
	; 304
	%struct.TypeMapModuleEntry {
		i32 33555187, ; type_token_id
		i32 124; java_map_index
	}, 
	; 305
	%struct.TypeMapModuleEntry {
		i32 33555189, ; type_token_id
		i32 245; java_map_index
	}, 
	; 306
	%struct.TypeMapModuleEntry {
		i32 33555191, ; type_token_id
		i32 307; java_map_index
	}, 
	; 307
	%struct.TypeMapModuleEntry {
		i32 33555193, ; type_token_id
		i32 203; java_map_index
	}, 
	; 308
	%struct.TypeMapModuleEntry {
		i32 33555195, ; type_token_id
		i32 20; java_map_index
	}, 
	; 309
	%struct.TypeMapModuleEntry {
		i32 33555197, ; type_token_id
		i32 30; java_map_index
	}, 
	; 310
	%struct.TypeMapModuleEntry {
		i32 33555199, ; type_token_id
		i32 190; java_map_index
	}, 
	; 311
	%struct.TypeMapModuleEntry {
		i32 33555201, ; type_token_id
		i32 254; java_map_index
	}, 
	; 312
	%struct.TypeMapModuleEntry {
		i32 33555202, ; type_token_id
		i32 213; java_map_index
	}, 
	; 313
	%struct.TypeMapModuleEntry {
		i32 33555203, ; type_token_id
		i32 218; java_map_index
	}, 
	; 314
	%struct.TypeMapModuleEntry {
		i32 33555204, ; type_token_id
		i32 443; java_map_index
	}, 
	; 315
	%struct.TypeMapModuleEntry {
		i32 33555205, ; type_token_id
		i32 146; java_map_index
	}, 
	; 316
	%struct.TypeMapModuleEntry {
		i32 33555206, ; type_token_id
		i32 424; java_map_index
	}, 
	; 317
	%struct.TypeMapModuleEntry {
		i32 33555207, ; type_token_id
		i32 361; java_map_index
	}, 
	; 318
	%struct.TypeMapModuleEntry {
		i32 33555208, ; type_token_id
		i32 335; java_map_index
	}, 
	; 319
	%struct.TypeMapModuleEntry {
		i32 33555209, ; type_token_id
		i32 88; java_map_index
	}, 
	; 320
	%struct.TypeMapModuleEntry {
		i32 33555210, ; type_token_id
		i32 92; java_map_index
	}, 
	; 321
	%struct.TypeMapModuleEntry {
		i32 33555211, ; type_token_id
		i32 51; java_map_index
	}, 
	; 322
	%struct.TypeMapModuleEntry {
		i32 33555212, ; type_token_id
		i32 1; java_map_index
	}, 
	; 323
	%struct.TypeMapModuleEntry {
		i32 33555213, ; type_token_id
		i32 208; java_map_index
	}, 
	; 324
	%struct.TypeMapModuleEntry {
		i32 33555214, ; type_token_id
		i32 106; java_map_index
	}, 
	; 325
	%struct.TypeMapModuleEntry {
		i32 33555215, ; type_token_id
		i32 417; java_map_index
	}, 
	; 326
	%struct.TypeMapModuleEntry {
		i32 33555217, ; type_token_id
		i32 95; java_map_index
	}, 
	; 327
	%struct.TypeMapModuleEntry {
		i32 33555218, ; type_token_id
		i32 47; java_map_index
	}, 
	; 328
	%struct.TypeMapModuleEntry {
		i32 33555219, ; type_token_id
		i32 161; java_map_index
	}, 
	; 329
	%struct.TypeMapModuleEntry {
		i32 33555220, ; type_token_id
		i32 166; java_map_index
	}, 
	; 330
	%struct.TypeMapModuleEntry {
		i32 33555221, ; type_token_id
		i32 295; java_map_index
	}, 
	; 331
	%struct.TypeMapModuleEntry {
		i32 33555223, ; type_token_id
		i32 461; java_map_index
	}, 
	; 332
	%struct.TypeMapModuleEntry {
		i32 33555224, ; type_token_id
		i32 150; java_map_index
	}, 
	; 333
	%struct.TypeMapModuleEntry {
		i32 33555226, ; type_token_id
		i32 2; java_map_index
	}, 
	; 334
	%struct.TypeMapModuleEntry {
		i32 33555230, ; type_token_id
		i32 145; java_map_index
	}, 
	; 335
	%struct.TypeMapModuleEntry {
		i32 33555232, ; type_token_id
		i32 171; java_map_index
	}, 
	; 336
	%struct.TypeMapModuleEntry {
		i32 33555234, ; type_token_id
		i32 291; java_map_index
	}, 
	; 337
	%struct.TypeMapModuleEntry {
		i32 33555236, ; type_token_id
		i32 27; java_map_index
	}, 
	; 338
	%struct.TypeMapModuleEntry {
		i32 33555237, ; type_token_id
		i32 75; java_map_index
	}, 
	; 339
	%struct.TypeMapModuleEntry {
		i32 33555238, ; type_token_id
		i32 211; java_map_index
	}, 
	; 340
	%struct.TypeMapModuleEntry {
		i32 33555239, ; type_token_id
		i32 239; java_map_index
	}, 
	; 341
	%struct.TypeMapModuleEntry {
		i32 33555241, ; type_token_id
		i32 352; java_map_index
	}, 
	; 342
	%struct.TypeMapModuleEntry {
		i32 33555242, ; type_token_id
		i32 57; java_map_index
	}, 
	; 343
	%struct.TypeMapModuleEntry {
		i32 33555243, ; type_token_id
		i32 471; java_map_index
	}, 
	; 344
	%struct.TypeMapModuleEntry {
		i32 33555244, ; type_token_id
		i32 97; java_map_index
	}, 
	; 345
	%struct.TypeMapModuleEntry {
		i32 33555245, ; type_token_id
		i32 401; java_map_index
	}, 
	; 346
	%struct.TypeMapModuleEntry {
		i32 33555247, ; type_token_id
		i32 33; java_map_index
	}, 
	; 347
	%struct.TypeMapModuleEntry {
		i32 33555248, ; type_token_id
		i32 176; java_map_index
	}, 
	; 348
	%struct.TypeMapModuleEntry {
		i32 33555249, ; type_token_id
		i32 300; java_map_index
	}, 
	; 349
	%struct.TypeMapModuleEntry {
		i32 33555250, ; type_token_id
		i32 134; java_map_index
	}, 
	; 350
	%struct.TypeMapModuleEntry {
		i32 33555252, ; type_token_id
		i32 58; java_map_index
	}, 
	; 351
	%struct.TypeMapModuleEntry {
		i32 33555254, ; type_token_id
		i32 3; java_map_index
	}, 
	; 352
	%struct.TypeMapModuleEntry {
		i32 33555256, ; type_token_id
		i32 288; java_map_index
	}, 
	; 353
	%struct.TypeMapModuleEntry {
		i32 33555258, ; type_token_id
		i32 26; java_map_index
	}, 
	; 354
	%struct.TypeMapModuleEntry {
		i32 33555260, ; type_token_id
		i32 193; java_map_index
	}, 
	; 355
	%struct.TypeMapModuleEntry {
		i32 33555261, ; type_token_id
		i32 123; java_map_index
	}, 
	; 356
	%struct.TypeMapModuleEntry {
		i32 33555262, ; type_token_id
		i32 312; java_map_index
	}, 
	; 357
	%struct.TypeMapModuleEntry {
		i32 33555263, ; type_token_id
		i32 14; java_map_index
	}, 
	; 358
	%struct.TypeMapModuleEntry {
		i32 33555264, ; type_token_id
		i32 498; java_map_index
	}, 
	; 359
	%struct.TypeMapModuleEntry {
		i32 33555266, ; type_token_id
		i32 387; java_map_index
	}, 
	; 360
	%struct.TypeMapModuleEntry {
		i32 33555268, ; type_token_id
		i32 446; java_map_index
	}, 
	; 361
	%struct.TypeMapModuleEntry {
		i32 33555270, ; type_token_id
		i32 324; java_map_index
	}, 
	; 362
	%struct.TypeMapModuleEntry {
		i32 33555271, ; type_token_id
		i32 484; java_map_index
	}, 
	; 363
	%struct.TypeMapModuleEntry {
		i32 33555272, ; type_token_id
		i32 78; java_map_index
	}, 
	; 364
	%struct.TypeMapModuleEntry {
		i32 33555274, ; type_token_id
		i32 249; java_map_index
	}, 
	; 365
	%struct.TypeMapModuleEntry {
		i32 33555276, ; type_token_id
		i32 89; java_map_index
	}, 
	; 366
	%struct.TypeMapModuleEntry {
		i32 33555277, ; type_token_id
		i32 372; java_map_index
	}, 
	; 367
	%struct.TypeMapModuleEntry {
		i32 33555278, ; type_token_id
		i32 477; java_map_index
	}, 
	; 368
	%struct.TypeMapModuleEntry {
		i32 33555301, ; type_token_id
		i32 367; java_map_index
	}
], align 4; end of 'module4_managed_to_java' array


; module4_managed_to_java_duplicates
@module4_managed_to_java_duplicates = internal constant [171 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554585, ; type_token_id
		i32 154; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554587, ; type_token_id
		i32 37; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554589, ; type_token_id
		i32 429; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554591, ; type_token_id
		i32 399; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554593, ; type_token_id
		i32 325; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554595, ; type_token_id
		i32 168; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554597, ; type_token_id
		i32 391; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554599, ; type_token_id
		i32 22; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554601, ; type_token_id
		i32 103; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554603, ; type_token_id
		i32 440; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554607, ; type_token_id
		i32 455; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554627, ; type_token_id
		i32 133; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554629, ; type_token_id
		i32 129; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554632, ; type_token_id
		i32 108; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554634, ; type_token_id
		i32 415; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554637, ; type_token_id
		i32 255; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554641, ; type_token_id
		i32 248; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554644, ; type_token_id
		i32 262; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554649, ; type_token_id
		i32 91; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554651, ; type_token_id
		i32 262; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554652, ; type_token_id
		i32 397; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554653, ; type_token_id
		i32 318; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554654, ; type_token_id
		i32 318; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554659, ; type_token_id
		i32 499; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554664, ; type_token_id
		i32 216; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554668, ; type_token_id
		i32 322; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554669, ; type_token_id
		i32 74; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554674, ; type_token_id
		i32 326; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554676, ; type_token_id
		i32 330; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554678, ; type_token_id
		i32 162; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554680, ; type_token_id
		i32 5; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554683, ; type_token_id
		i32 270; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554685, ; type_token_id
		i32 10; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554699, ; type_token_id
		i32 236; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554702, ; type_token_id
		i32 118; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554704, ; type_token_id
		i32 311; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554713, ; type_token_id
		i32 121; java_map_index
	}, 
	; 37
	%struct.TypeMapModuleEntry {
		i32 33554716, ; type_token_id
		i32 63; java_map_index
	}, 
	; 38
	%struct.TypeMapModuleEntry {
		i32 33554718, ; type_token_id
		i32 444; java_map_index
	}, 
	; 39
	%struct.TypeMapModuleEntry {
		i32 33554722, ; type_token_id
		i32 490; java_map_index
	}, 
	; 40
	%struct.TypeMapModuleEntry {
		i32 33554724, ; type_token_id
		i32 425; java_map_index
	}, 
	; 41
	%struct.TypeMapModuleEntry {
		i32 33554726, ; type_token_id
		i32 142; java_map_index
	}, 
	; 42
	%struct.TypeMapModuleEntry {
		i32 33554729, ; type_token_id
		i32 158; java_map_index
	}, 
	; 43
	%struct.TypeMapModuleEntry {
		i32 33554732, ; type_token_id
		i32 383; java_map_index
	}, 
	; 44
	%struct.TypeMapModuleEntry {
		i32 33554733, ; type_token_id
		i32 350; java_map_index
	}, 
	; 45
	%struct.TypeMapModuleEntry {
		i32 33554736, ; type_token_id
		i32 421; java_map_index
	}, 
	; 46
	%struct.TypeMapModuleEntry {
		i32 33554743, ; type_token_id
		i32 310; java_map_index
	}, 
	; 47
	%struct.TypeMapModuleEntry {
		i32 33554745, ; type_token_id
		i32 449; java_map_index
	}, 
	; 48
	%struct.TypeMapModuleEntry {
		i32 33554747, ; type_token_id
		i32 493; java_map_index
	}, 
	; 49
	%struct.TypeMapModuleEntry {
		i32 33554749, ; type_token_id
		i32 39; java_map_index
	}, 
	; 50
	%struct.TypeMapModuleEntry {
		i32 33554751, ; type_token_id
		i32 492; java_map_index
	}, 
	; 51
	%struct.TypeMapModuleEntry {
		i32 33554753, ; type_token_id
		i32 388; java_map_index
	}, 
	; 52
	%struct.TypeMapModuleEntry {
		i32 33554755, ; type_token_id
		i32 358; java_map_index
	}, 
	; 53
	%struct.TypeMapModuleEntry {
		i32 33554757, ; type_token_id
		i32 149; java_map_index
	}, 
	; 54
	%struct.TypeMapModuleEntry {
		i32 33554759, ; type_token_id
		i32 479; java_map_index
	}, 
	; 55
	%struct.TypeMapModuleEntry {
		i32 33554761, ; type_token_id
		i32 356; java_map_index
	}, 
	; 56
	%struct.TypeMapModuleEntry {
		i32 33554763, ; type_token_id
		i32 179; java_map_index
	}, 
	; 57
	%struct.TypeMapModuleEntry {
		i32 33554765, ; type_token_id
		i32 65; java_map_index
	}, 
	; 58
	%struct.TypeMapModuleEntry {
		i32 33554768, ; type_token_id
		i32 384; java_map_index
	}, 
	; 59
	%struct.TypeMapModuleEntry {
		i32 33554771, ; type_token_id
		i32 416; java_map_index
	}, 
	; 60
	%struct.TypeMapModuleEntry {
		i32 33554792, ; type_token_id
		i32 12; java_map_index
	}, 
	; 61
	%struct.TypeMapModuleEntry {
		i32 33554795, ; type_token_id
		i32 436; java_map_index
	}, 
	; 62
	%struct.TypeMapModuleEntry {
		i32 33554799, ; type_token_id
		i32 269; java_map_index
	}, 
	; 63
	%struct.TypeMapModuleEntry {
		i32 33554801, ; type_token_id
		i32 465; java_map_index
	}, 
	; 64
	%struct.TypeMapModuleEntry {
		i32 33554811, ; type_token_id
		i32 36; java_map_index
	}, 
	; 65
	%struct.TypeMapModuleEntry {
		i32 33554816, ; type_token_id
		i32 359; java_map_index
	}, 
	; 66
	%struct.TypeMapModuleEntry {
		i32 33554823, ; type_token_id
		i32 396; java_map_index
	}, 
	; 67
	%struct.TypeMapModuleEntry {
		i32 33554826, ; type_token_id
		i32 24; java_map_index
	}, 
	; 68
	%struct.TypeMapModuleEntry {
		i32 33554830, ; type_token_id
		i32 447; java_map_index
	}, 
	; 69
	%struct.TypeMapModuleEntry {
		i32 33554832, ; type_token_id
		i32 428; java_map_index
	}, 
	; 70
	%struct.TypeMapModuleEntry {
		i32 33554835, ; type_token_id
		i32 250; java_map_index
	}, 
	; 71
	%struct.TypeMapModuleEntry {
		i32 33554837, ; type_token_id
		i32 334; java_map_index
	}, 
	; 72
	%struct.TypeMapModuleEntry {
		i32 33554840, ; type_token_id
		i32 234; java_map_index
	}, 
	; 73
	%struct.TypeMapModuleEntry {
		i32 33554843, ; type_token_id
		i32 486; java_map_index
	}, 
	; 74
	%struct.TypeMapModuleEntry {
		i32 33554846, ; type_token_id
		i32 227; java_map_index
	}, 
	; 75
	%struct.TypeMapModuleEntry {
		i32 33554852, ; type_token_id
		i32 184; java_map_index
	}, 
	; 76
	%struct.TypeMapModuleEntry {
		i32 33554857, ; type_token_id
		i32 42; java_map_index
	}, 
	; 77
	%struct.TypeMapModuleEntry {
		i32 33554859, ; type_token_id
		i32 407; java_map_index
	}, 
	; 78
	%struct.TypeMapModuleEntry {
		i32 33554863, ; type_token_id
		i32 333; java_map_index
	}, 
	; 79
	%struct.TypeMapModuleEntry {
		i32 33554865, ; type_token_id
		i32 369; java_map_index
	}, 
	; 80
	%struct.TypeMapModuleEntry {
		i32 33554867, ; type_token_id
		i32 426; java_map_index
	}, 
	; 81
	%struct.TypeMapModuleEntry {
		i32 33554869, ; type_token_id
		i32 62; java_map_index
	}, 
	; 82
	%struct.TypeMapModuleEntry {
		i32 33554872, ; type_token_id
		i32 122; java_map_index
	}, 
	; 83
	%struct.TypeMapModuleEntry {
		i32 33554875, ; type_token_id
		i32 80; java_map_index
	}, 
	; 84
	%struct.TypeMapModuleEntry {
		i32 33554877, ; type_token_id
		i32 343; java_map_index
	}, 
	; 85
	%struct.TypeMapModuleEntry {
		i32 33554879, ; type_token_id
		i32 450; java_map_index
	}, 
	; 86
	%struct.TypeMapModuleEntry {
		i32 33554881, ; type_token_id
		i32 430; java_map_index
	}, 
	; 87
	%struct.TypeMapModuleEntry {
		i32 33554895, ; type_token_id
		i32 94; java_map_index
	}, 
	; 88
	%struct.TypeMapModuleEntry {
		i32 33554897, ; type_token_id
		i32 381; java_map_index
	}, 
	; 89
	%struct.TypeMapModuleEntry {
		i32 33554899, ; type_token_id
		i32 224; java_map_index
	}, 
	; 90
	%struct.TypeMapModuleEntry {
		i32 33554901, ; type_token_id
		i32 266; java_map_index
	}, 
	; 91
	%struct.TypeMapModuleEntry {
		i32 33554903, ; type_token_id
		i32 491; java_map_index
	}, 
	; 92
	%struct.TypeMapModuleEntry {
		i32 33554911, ; type_token_id
		i32 157; java_map_index
	}, 
	; 93
	%struct.TypeMapModuleEntry {
		i32 33554913, ; type_token_id
		i32 439; java_map_index
	}, 
	; 94
	%struct.TypeMapModuleEntry {
		i32 33554917, ; type_token_id
		i32 394; java_map_index
	}, 
	; 95
	%struct.TypeMapModuleEntry {
		i32 33554922, ; type_token_id
		i32 385; java_map_index
	}, 
	; 96
	%struct.TypeMapModuleEntry {
		i32 33554953, ; type_token_id
		i32 434; java_map_index
	}, 
	; 97
	%struct.TypeMapModuleEntry {
		i32 33554955, ; type_token_id
		i32 331; java_map_index
	}, 
	; 98
	%struct.TypeMapModuleEntry {
		i32 33554958, ; type_token_id
		i32 0; java_map_index
	}, 
	; 99
	%struct.TypeMapModuleEntry {
		i32 33554960, ; type_token_id
		i32 98; java_map_index
	}, 
	; 100
	%struct.TypeMapModuleEntry {
		i32 33554963, ; type_token_id
		i32 379; java_map_index
	}, 
	; 101
	%struct.TypeMapModuleEntry {
		i32 33554968, ; type_token_id
		i32 40; java_map_index
	}, 
	; 102
	%struct.TypeMapModuleEntry {
		i32 33554970, ; type_token_id
		i32 281; java_map_index
	}, 
	; 103
	%struct.TypeMapModuleEntry {
		i32 33554972, ; type_token_id
		i32 49; java_map_index
	}, 
	; 104
	%struct.TypeMapModuleEntry {
		i32 33554979, ; type_token_id
		i32 225; java_map_index
	}, 
	; 105
	%struct.TypeMapModuleEntry {
		i32 33554983, ; type_token_id
		i32 314; java_map_index
	}, 
	; 106
	%struct.TypeMapModuleEntry {
		i32 33555011, ; type_token_id
		i32 197; java_map_index
	}, 
	; 107
	%struct.TypeMapModuleEntry {
		i32 33555013, ; type_token_id
		i32 105; java_map_index
	}, 
	; 108
	%struct.TypeMapModuleEntry {
		i32 33555014, ; type_token_id
		i32 470; java_map_index
	}, 
	; 109
	%struct.TypeMapModuleEntry {
		i32 33555018, ; type_token_id
		i32 304; java_map_index
	}, 
	; 110
	%struct.TypeMapModuleEntry {
		i32 33555020, ; type_token_id
		i32 468; java_map_index
	}, 
	; 111
	%struct.TypeMapModuleEntry {
		i32 33555022, ; type_token_id
		i32 321; java_map_index
	}, 
	; 112
	%struct.TypeMapModuleEntry {
		i32 33555025, ; type_token_id
		i32 357; java_map_index
	}, 
	; 113
	%struct.TypeMapModuleEntry {
		i32 33555029, ; type_token_id
		i32 71; java_map_index
	}, 
	; 114
	%struct.TypeMapModuleEntry {
		i32 33555031, ; type_token_id
		i32 315; java_map_index
	}, 
	; 115
	%struct.TypeMapModuleEntry {
		i32 33555035, ; type_token_id
		i32 244; java_map_index
	}, 
	; 116
	%struct.TypeMapModuleEntry {
		i32 33555038, ; type_token_id
		i32 56; java_map_index
	}, 
	; 117
	%struct.TypeMapModuleEntry {
		i32 33555041, ; type_token_id
		i32 264; java_map_index
	}, 
	; 118
	%struct.TypeMapModuleEntry {
		i32 33555044, ; type_token_id
		i32 354; java_map_index
	}, 
	; 119
	%struct.TypeMapModuleEntry {
		i32 33555046, ; type_token_id
		i32 38; java_map_index
	}, 
	; 120
	%struct.TypeMapModuleEntry {
		i32 33555048, ; type_token_id
		i32 308; java_map_index
	}, 
	; 121
	%struct.TypeMapModuleEntry {
		i32 33555050, ; type_token_id
		i32 403; java_map_index
	}, 
	; 122
	%struct.TypeMapModuleEntry {
		i32 33555064, ; type_token_id
		i32 323; java_map_index
	}, 
	; 123
	%struct.TypeMapModuleEntry {
		i32 33555098, ; type_token_id
		i32 164; java_map_index
	}, 
	; 124
	%struct.TypeMapModuleEntry {
		i32 33555104, ; type_token_id
		i32 188; java_map_index
	}, 
	; 125
	%struct.TypeMapModuleEntry {
		i32 33555109, ; type_token_id
		i32 83; java_map_index
	}, 
	; 126
	%struct.TypeMapModuleEntry {
		i32 33555114, ; type_token_id
		i32 489; java_map_index
	}, 
	; 127
	%struct.TypeMapModuleEntry {
		i32 33555141, ; type_token_id
		i32 177; java_map_index
	}, 
	; 128
	%struct.TypeMapModuleEntry {
		i32 33555147, ; type_token_id
		i32 332; java_map_index
	}, 
	; 129
	%struct.TypeMapModuleEntry {
		i32 33555149, ; type_token_id
		i32 128; java_map_index
	}, 
	; 130
	%struct.TypeMapModuleEntry {
		i32 33555156, ; type_token_id
		i32 406; java_map_index
	}, 
	; 131
	%struct.TypeMapModuleEntry {
		i32 33555158, ; type_token_id
		i32 143; java_map_index
	}, 
	; 132
	%struct.TypeMapModuleEntry {
		i32 33555160, ; type_token_id
		i32 52; java_map_index
	}, 
	; 133
	%struct.TypeMapModuleEntry {
		i32 33555163, ; type_token_id
		i32 204; java_map_index
	}, 
	; 134
	%struct.TypeMapModuleEntry {
		i32 33555166, ; type_token_id
		i32 50; java_map_index
	}, 
	; 135
	%struct.TypeMapModuleEntry {
		i32 33555168, ; type_token_id
		i32 132; java_map_index
	}, 
	; 136
	%struct.TypeMapModuleEntry {
		i32 33555171, ; type_token_id
		i32 7; java_map_index
	}, 
	; 137
	%struct.TypeMapModuleEntry {
		i32 33555174, ; type_token_id
		i32 267; java_map_index
	}, 
	; 138
	%struct.TypeMapModuleEntry {
		i32 33555176, ; type_token_id
		i32 313; java_map_index
	}, 
	; 139
	%struct.TypeMapModuleEntry {
		i32 33555178, ; type_token_id
		i32 475; java_map_index
	}, 
	; 140
	%struct.TypeMapModuleEntry {
		i32 33555180, ; type_token_id
		i32 111; java_map_index
	}, 
	; 141
	%struct.TypeMapModuleEntry {
		i32 33555182, ; type_token_id
		i32 73; java_map_index
	}, 
	; 142
	%struct.TypeMapModuleEntry {
		i32 33555184, ; type_token_id
		i32 202; java_map_index
	}, 
	; 143
	%struct.TypeMapModuleEntry {
		i32 33555186, ; type_token_id
		i32 28; java_map_index
	}, 
	; 144
	%struct.TypeMapModuleEntry {
		i32 33555188, ; type_token_id
		i32 124; java_map_index
	}, 
	; 145
	%struct.TypeMapModuleEntry {
		i32 33555190, ; type_token_id
		i32 245; java_map_index
	}, 
	; 146
	%struct.TypeMapModuleEntry {
		i32 33555192, ; type_token_id
		i32 307; java_map_index
	}, 
	; 147
	%struct.TypeMapModuleEntry {
		i32 33555194, ; type_token_id
		i32 203; java_map_index
	}, 
	; 148
	%struct.TypeMapModuleEntry {
		i32 33555196, ; type_token_id
		i32 20; java_map_index
	}, 
	; 149
	%struct.TypeMapModuleEntry {
		i32 33555198, ; type_token_id
		i32 30; java_map_index
	}, 
	; 150
	%struct.TypeMapModuleEntry {
		i32 33555200, ; type_token_id
		i32 190; java_map_index
	}, 
	; 151
	%struct.TypeMapModuleEntry {
		i32 33555222, ; type_token_id
		i32 295; java_map_index
	}, 
	; 152
	%struct.TypeMapModuleEntry {
		i32 33555225, ; type_token_id
		i32 150; java_map_index
	}, 
	; 153
	%struct.TypeMapModuleEntry {
		i32 33555227, ; type_token_id
		i32 2; java_map_index
	}, 
	; 154
	%struct.TypeMapModuleEntry {
		i32 33555228, ; type_token_id
		i32 88; java_map_index
	}, 
	; 155
	%struct.TypeMapModuleEntry {
		i32 33555231, ; type_token_id
		i32 145; java_map_index
	}, 
	; 156
	%struct.TypeMapModuleEntry {
		i32 33555233, ; type_token_id
		i32 171; java_map_index
	}, 
	; 157
	%struct.TypeMapModuleEntry {
		i32 33555235, ; type_token_id
		i32 291; java_map_index
	}, 
	; 158
	%struct.TypeMapModuleEntry {
		i32 33555240, ; type_token_id
		i32 239; java_map_index
	}, 
	; 159
	%struct.TypeMapModuleEntry {
		i32 33555246, ; type_token_id
		i32 401; java_map_index
	}, 
	; 160
	%struct.TypeMapModuleEntry {
		i32 33555251, ; type_token_id
		i32 134; java_map_index
	}, 
	; 161
	%struct.TypeMapModuleEntry {
		i32 33555253, ; type_token_id
		i32 58; java_map_index
	}, 
	; 162
	%struct.TypeMapModuleEntry {
		i32 33555255, ; type_token_id
		i32 3; java_map_index
	}, 
	; 163
	%struct.TypeMapModuleEntry {
		i32 33555257, ; type_token_id
		i32 288; java_map_index
	}, 
	; 164
	%struct.TypeMapModuleEntry {
		i32 33555259, ; type_token_id
		i32 26; java_map_index
	}, 
	; 165
	%struct.TypeMapModuleEntry {
		i32 33555265, ; type_token_id
		i32 498; java_map_index
	}, 
	; 166
	%struct.TypeMapModuleEntry {
		i32 33555267, ; type_token_id
		i32 387; java_map_index
	}, 
	; 167
	%struct.TypeMapModuleEntry {
		i32 33555269, ; type_token_id
		i32 446; java_map_index
	}, 
	; 168
	%struct.TypeMapModuleEntry {
		i32 33555273, ; type_token_id
		i32 78; java_map_index
	}, 
	; 169
	%struct.TypeMapModuleEntry {
		i32 33555275, ; type_token_id
		i32 249; java_map_index
	}, 
	; 170
	%struct.TypeMapModuleEntry {
		i32 33555279, ; type_token_id
		i32 477; java_map_index
	}
], align 4; end of 'module4_managed_to_java_duplicates' array


; module5_managed_to_java
@module5_managed_to_java = internal constant [2 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554435, ; type_token_id
		i32 84; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 194; java_map_index
	}
], align 4; end of 'module5_managed_to_java' array


; module5_managed_to_java_duplicates
@module5_managed_to_java_duplicates = internal constant [1 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 194; java_map_index
	}
], align 4; end of 'module5_managed_to_java_duplicates' array


; module6_managed_to_java
@module6_managed_to_java = internal constant [2 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; type_token_id
		i32 404; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554442, ; type_token_id
		i32 72; java_map_index
	}
], align 4; end of 'module6_managed_to_java' array


; module7_managed_to_java
@module7_managed_to_java = internal constant [26 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554434, ; type_token_id
		i32 17; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554435, ; type_token_id
		i32 346; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 187; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554439, ; type_token_id
		i32 280; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554441, ; type_token_id
		i32 433; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554443, ; type_token_id
		i32 217; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554449, ; type_token_id
		i32 69; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554451, ; type_token_id
		i32 320; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554453, ; type_token_id
		i32 55; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554455, ; type_token_id
		i32 348; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554457, ; type_token_id
		i32 410; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554458, ; type_token_id
		i32 252; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554459, ; type_token_id
		i32 90; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554461, ; type_token_id
		i32 172; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554463, ; type_token_id
		i32 319; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554464, ; type_token_id
		i32 81; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554465, ; type_token_id
		i32 215; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554466, ; type_token_id
		i32 286; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554467, ; type_token_id
		i32 500; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554469, ; type_token_id
		i32 198; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554471, ; type_token_id
		i32 299; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554473, ; type_token_id
		i32 210; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554474, ; type_token_id
		i32 462; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554476, ; type_token_id
		i32 456; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554478, ; type_token_id
		i32 64; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554480, ; type_token_id
		i32 409; java_map_index
	}
], align 4; end of 'module7_managed_to_java' array


; module7_managed_to_java_duplicates
@module7_managed_to_java_duplicates = internal constant [2 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; type_token_id
		i32 346; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554477, ; type_token_id
		i32 462; java_map_index
	}
], align 4; end of 'module7_managed_to_java_duplicates' array


; module8_managed_to_java
@module8_managed_to_java = internal constant [11 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554435, ; type_token_id
		i32 395; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 174; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 35; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554438, ; type_token_id
		i32 101; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554439, ; type_token_id
		i32 360; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554440, ; type_token_id
		i32 337; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554442, ; type_token_id
		i32 373; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554444, ; type_token_id
		i32 160; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554445, ; type_token_id
		i32 275; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554447, ; type_token_id
		i32 235; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554450, ; type_token_id
		i32 6; java_map_index
	}
], align 4; end of 'module8_managed_to_java' array


; module8_managed_to_java_duplicates
@module8_managed_to_java_duplicates = internal constant [2 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; type_token_id
		i32 337; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; type_token_id
		i32 360; java_map_index
	}
], align 4; end of 'module8_managed_to_java_duplicates' array


; module9_managed_to_java
@module9_managed_to_java = internal constant [1 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; type_token_id
		i32 182; java_map_index
	}
], align 4; end of 'module9_managed_to_java' array


; module10_managed_to_java
@module10_managed_to_java = internal constant [5 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554434, ; type_token_id
		i32 155; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 393; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554438, ; type_token_id
		i32 432; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554439, ; type_token_id
		i32 277; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554441, ; type_token_id
		i32 212; java_map_index
	}
], align 4; end of 'module10_managed_to_java' array


; module10_managed_to_java_duplicates
@module10_managed_to_java_duplicates = internal constant [1 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; type_token_id
		i32 277; java_map_index
	}
], align 4; end of 'module10_managed_to_java_duplicates' array


; module11_managed_to_java
@module11_managed_to_java = internal constant [3 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554434, ; type_token_id
		i32 390; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554435, ; type_token_id
		i32 290; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 460; java_map_index
	}
], align 4; end of 'module11_managed_to_java' array


; module11_managed_to_java_duplicates
@module11_managed_to_java_duplicates = internal constant [1 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 290; java_map_index
	}
], align 4; end of 'module11_managed_to_java_duplicates' array


; module12_managed_to_java
@module12_managed_to_java = internal constant [6 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554435, ; type_token_id
		i32 59; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; type_token_id
		i32 147; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554447, ; type_token_id
		i32 292; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; type_token_id
		i32 256; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554449, ; type_token_id
		i32 309; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554462, ; type_token_id
		i32 110; java_map_index
	}
], align 4; end of 'module12_managed_to_java' array


; module13_managed_to_java
@module13_managed_to_java = internal constant [11 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554466, ; type_token_id
		i32 228; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554467, ; type_token_id
		i32 338; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554468, ; type_token_id
		i32 141; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554469, ; type_token_id
		i32 412; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554471, ; type_token_id
		i32 340; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554472, ; type_token_id
		i32 414; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554473, ; type_token_id
		i32 405; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554474, ; type_token_id
		i32 192; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554475, ; type_token_id
		i32 263; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554477, ; type_token_id
		i32 109; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554487, ; type_token_id
		i32 82; java_map_index
	}
], align 4; end of 'module13_managed_to_java' array


; module14_managed_to_java
@module14_managed_to_java = internal constant [3 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554434, ; type_token_id
		i32 494; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 156; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554441, ; type_token_id
		i32 386; java_map_index
	}
], align 4; end of 'module14_managed_to_java' array


; module15_managed_to_java
@module15_managed_to_java = internal constant [5 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 380; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 86; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554438, ; type_token_id
		i32 16; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554439, ; type_token_id
		i32 289; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554442, ; type_token_id
		i32 467; java_map_index
	}
], align 4; end of 'module15_managed_to_java' array


; module16_managed_to_java
@module16_managed_to_java = internal constant [1 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 317; java_map_index
	}
], align 4; end of 'module16_managed_to_java' array


; module17_managed_to_java
@module17_managed_to_java = internal constant [10 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554434, ; type_token_id
		i32 231; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554435, ; type_token_id
		i32 219; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 138; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 113; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554438, ; type_token_id
		i32 189; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554440, ; type_token_id
		i32 272; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554441, ; type_token_id
		i32 115; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554444, ; type_token_id
		i32 13; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554445, ; type_token_id
		i32 243; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554449, ; type_token_id
		i32 363; java_map_index
	}
], align 4; end of 'module17_managed_to_java' array


; module17_managed_to_java_duplicates
@module17_managed_to_java_duplicates = internal constant [3 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; type_token_id
		i32 115; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554448, ; type_token_id
		i32 189; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; type_token_id
		i32 363; java_map_index
	}
], align 4; end of 'module17_managed_to_java_duplicates' array


; module18_managed_to_java
@module18_managed_to_java = internal constant [4 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554434, ; type_token_id
		i32 501; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554435, ; type_token_id
		i32 374; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 67; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554439, ; type_token_id
		i32 349; java_map_index
	}
], align 4; end of 'module18_managed_to_java' array


; module18_managed_to_java_duplicates
@module18_managed_to_java_duplicates = internal constant [1 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554440, ; type_token_id
		i32 501; java_map_index
	}
], align 4; end of 'module18_managed_to_java_duplicates' array

; Map modules
@__TypeMapModule_assembly_name.0 = internal constant [37 x i8] c"Xamarin.Android.Support.v7.AppCompat\00", align 1
@__TypeMapModule_assembly_name.1 = internal constant [8 x i8] c"A1ATeam\00", align 1
@__TypeMapModule_assembly_name.2 = internal constant [41 x i8] c"Xamarin.Android.Arch.Lifecycle.ViewModel\00", align 1
@__TypeMapModule_assembly_name.3 = internal constant [19 x i8] c"Xamarin.Essentials\00", align 1
@__TypeMapModule_assembly_name.4 = internal constant [13 x i8] c"Mono.Android\00", align 1
@__TypeMapModule_assembly_name.5 = internal constant [45 x i8] c"Xamarin.Android.Arch.Lifecycle.LiveData.Core\00", align 1
@__TypeMapModule_assembly_name.6 = internal constant [7 x i8] c"AndHUD\00", align 1
@__TypeMapModule_assembly_name.7 = internal constant [31 x i8] c"Xamarin.Android.Support.Compat\00", align 1
@__TypeMapModule_assembly_name.8 = internal constant [31 x i8] c"Xamarin.Android.Support.Design\00", align 1
@__TypeMapModule_assembly_name.9 = internal constant [13 x i8] c"Plugin.Media\00", align 1
@__TypeMapModule_assembly_name.10 = internal constant [31 x i8] c"Xamarin.Android.Support.Loader\00", align 1
@__TypeMapModule_assembly_name.11 = internal constant [42 x i8] c"Xamarin.Android.Support.CoordinaterLayout\00", align 1
@__TypeMapModule_assembly_name.12 = internal constant [15 x i8] c"ZXingNetMobile\00", align 1
@__TypeMapModule_assembly_name.13 = internal constant [16 x i8] c"Acr.UserDialogs\00", align 1
@__TypeMapModule_assembly_name.14 = internal constant [37 x i8] c"Xamarin.Android.Support.DrawerLayout\00", align 1
@__TypeMapModule_assembly_name.15 = internal constant [20 x i8] c"CuttingDocketTablet\00", align 1
@__TypeMapModule_assembly_name.16 = internal constant [18 x i8] c"FastAndroidCamera\00", align 1
@__TypeMapModule_assembly_name.17 = internal constant [33 x i8] c"Xamarin.Android.Support.Fragment\00", align 1
@__TypeMapModule_assembly_name.18 = internal constant [38 x i8] c"Xamarin.Android.Arch.Lifecycle.Common\00", align 1

; map_modules
@map_modules = global [19 x %struct.TypeMapModule] [
	; 0
	%struct.TypeMapModule {
		[16 x i8] c"\18\A8\97\CD\04\C2\CEE\82\0C=\96[B\E0\03", ; module_uuid: cd97a818-c204-45ce-820c-3d965b42e003
		i32 37, ; entry_count
		i32 4, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([37 x %struct.TypeMapModuleEntry], [37 x %struct.TypeMapModuleEntry]* @module0_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([4 x %struct.TypeMapModuleEntry], [4 x %struct.TypeMapModuleEntry]* @module0_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__TypeMapModule_assembly_name.0, i32 0, i32 0), ; assembly_name: Xamarin.Android.Support.v7.AppCompat
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 1
	%struct.TypeMapModule {
		[16 x i8] c"\1B\B3\A7r\03\B9?A\A3S\CE\0E\9B\81\BB#", ; module_uuid: 72a7b31b-b903-413f-a353-ce0e9b81bb23
		i32 2, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([2 x %struct.TypeMapModuleEntry], [2 x %struct.TypeMapModuleEntry]* @module1_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__TypeMapModule_assembly_name.1, i32 0, i32 0), ; assembly_name: A1ATeam
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 2
	%struct.TypeMapModule {
		[16 x i8] c"\1D\A4WI&\8F\12F\87N#]C^\DB\C3", ; module_uuid: 4957a41d-8f26-4612-874e-235d435edbc3
		i32 2, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([2 x %struct.TypeMapModuleEntry], [2 x %struct.TypeMapModuleEntry]* @module2_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__TypeMapModule_assembly_name.2, i32 0, i32 0), ; assembly_name: Xamarin.Android.Arch.Lifecycle.ViewModel
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 3
	%struct.TypeMapModule {
		[16 x i8] c"!\DF\E2;\F6O\A0I\BA\9A\8A\C75\CC\07i", ; module_uuid: 3be2df21-4ff6-49a0-ba9a-8ac735cc0769
		i32 2, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([2 x %struct.TypeMapModuleEntry], [2 x %struct.TypeMapModuleEntry]* @module3_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__TypeMapModule_assembly_name.3, i32 0, i32 0), ; assembly_name: Xamarin.Essentials
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 4
	%struct.TypeMapModule {
		[16 x i8] c"%\9A4\BB*\B2\DCL\85\19\870\DB{:i", ; module_uuid: bb349a25-b22a-4cdc-8519-8730db7b3a69
		i32 369, ; entry_count
		i32 171, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([369 x %struct.TypeMapModuleEntry], [369 x %struct.TypeMapModuleEntry]* @module4_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([171 x %struct.TypeMapModuleEntry], [171 x %struct.TypeMapModuleEntry]* @module4_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__TypeMapModule_assembly_name.4, i32 0, i32 0), ; assembly_name: Mono.Android
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 5
	%struct.TypeMapModule {
		[16 x i8] c"(\C0\04\86\9F\05\CFK\80\84\8B\0Dc$\FD1", ; module_uuid: 8604c028-059f-4bcf-8084-8b0d6324fd31
		i32 2, ; entry_count
		i32 1, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([2 x %struct.TypeMapModuleEntry], [2 x %struct.TypeMapModuleEntry]* @module5_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([1 x %struct.TypeMapModuleEntry], [1 x %struct.TypeMapModuleEntry]* @module5_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__TypeMapModule_assembly_name.5, i32 0, i32 0), ; assembly_name: Xamarin.Android.Arch.Lifecycle.LiveData.Core
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 6
	%struct.TypeMapModule {
		[16 x i8] c"6cA\10\98\F1OF\A1\D0\E9\DC\95b\5C{", ; module_uuid: 10416336-f198-464f-a1d0-e9dc95625c7b
		i32 2, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([2 x %struct.TypeMapModuleEntry], [2 x %struct.TypeMapModuleEntry]* @module6_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__TypeMapModule_assembly_name.6, i32 0, i32 0), ; assembly_name: AndHUD
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 7
	%struct.TypeMapModule {
		[16 x i8] c"93^Pjt\F5F\8C\C4\1Eg\EB\C3>\11", ; module_uuid: 505e3339-746a-46f5-8cc4-1e67ebc33e11
		i32 26, ; entry_count
		i32 2, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([26 x %struct.TypeMapModuleEntry], [26 x %struct.TypeMapModuleEntry]* @module7_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([2 x %struct.TypeMapModuleEntry], [2 x %struct.TypeMapModuleEntry]* @module7_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__TypeMapModule_assembly_name.7, i32 0, i32 0), ; assembly_name: Xamarin.Android.Support.Compat
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 8
	%struct.TypeMapModule {
		[16 x i8] c"=\DE\F6y\81kQD\A4\ABJ\D0\13'\8D\18", ; module_uuid: 79f6de3d-6b81-4451-a4ab-4ad013278d18
		i32 11, ; entry_count
		i32 2, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([11 x %struct.TypeMapModuleEntry], [11 x %struct.TypeMapModuleEntry]* @module8_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([2 x %struct.TypeMapModuleEntry], [2 x %struct.TypeMapModuleEntry]* @module8_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__TypeMapModule_assembly_name.8, i32 0, i32 0), ; assembly_name: Xamarin.Android.Support.Design
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 9
	%struct.TypeMapModule {
		[16 x i8] c"?*'s\CAi.@\B5\C8\19=s\090A", ; module_uuid: 73272a3f-69ca-402e-b5c8-193d73093041
		i32 1, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([1 x %struct.TypeMapModuleEntry], [1 x %struct.TypeMapModuleEntry]* @module9_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__TypeMapModule_assembly_name.9, i32 0, i32 0), ; assembly_name: Plugin.Media
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 10
	%struct.TypeMapModule {
		[16 x i8] c"^\02\A8k\E5Q\AAO\81O\BA\12|\DA\80\DF", ; module_uuid: 6ba8025e-51e5-4faa-814f-ba127cda80df
		i32 5, ; entry_count
		i32 1, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([5 x %struct.TypeMapModuleEntry], [5 x %struct.TypeMapModuleEntry]* @module10_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([1 x %struct.TypeMapModuleEntry], [1 x %struct.TypeMapModuleEntry]* @module10_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__TypeMapModule_assembly_name.10, i32 0, i32 0), ; assembly_name: Xamarin.Android.Support.Loader
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 11
	%struct.TypeMapModule {
		[16 x i8] c"\AC\CD\AFG\A5~YB\86\10S\CD9S\06\BF", ; module_uuid: 47afcdac-7ea5-4259-8610-53cd395306bf
		i32 3, ; entry_count
		i32 1, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([3 x %struct.TypeMapModuleEntry], [3 x %struct.TypeMapModuleEntry]* @module11_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([1 x %struct.TypeMapModuleEntry], [1 x %struct.TypeMapModuleEntry]* @module11_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__TypeMapModule_assembly_name.11, i32 0, i32 0), ; assembly_name: Xamarin.Android.Support.CoordinaterLayout
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 12
	%struct.TypeMapModule {
		[16 x i8] c"\B4%x\1E\B2W\BDH\97rN\D8k\8E\CD\8D", ; module_uuid: 1e7825b4-57b2-48bd-9772-4ed86b8ecd8d
		i32 6, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([6 x %struct.TypeMapModuleEntry], [6 x %struct.TypeMapModuleEntry]* @module12_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__TypeMapModule_assembly_name.12, i32 0, i32 0), ; assembly_name: ZXingNetMobile
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 13
	%struct.TypeMapModule {
		[16 x i8] c"\B7\0C\DFs\AA\00~F\AA\F0\C6\C4/\01v:", ; module_uuid: 73df0cb7-00aa-467e-aaf0-c6c42f01763a
		i32 11, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([11 x %struct.TypeMapModuleEntry], [11 x %struct.TypeMapModuleEntry]* @module13_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__TypeMapModule_assembly_name.13, i32 0, i32 0), ; assembly_name: Acr.UserDialogs
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 14
	%struct.TypeMapModule {
		[16 x i8] c"\C8\00\81+\0BN\80E\88\C6\18b\BC1\AE\F0", ; module_uuid: 2b8100c8-4e0b-4580-88c6-1862bc31aef0
		i32 3, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([3 x %struct.TypeMapModuleEntry], [3 x %struct.TypeMapModuleEntry]* @module14_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__TypeMapModule_assembly_name.14, i32 0, i32 0), ; assembly_name: Xamarin.Android.Support.DrawerLayout
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 15
	%struct.TypeMapModule {
		[16 x i8] c"\D1\B7N\F0[\C5\FFG\B8\E9Rhw\8Cf\14", ; module_uuid: f04eb7d1-c55b-47ff-b8e9-5268778c6614
		i32 5, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([5 x %struct.TypeMapModuleEntry], [5 x %struct.TypeMapModuleEntry]* @module15_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__TypeMapModule_assembly_name.15, i32 0, i32 0), ; assembly_name: CuttingDocketTablet
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 16
	%struct.TypeMapModule {
		[16 x i8] c"\DE\A4\9CW\E7J\9EJ\B9\D3\89\06?9\17\18", ; module_uuid: 579ca4de-4ae7-4a9e-b9d3-89063f391718
		i32 1, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([1 x %struct.TypeMapModuleEntry], [1 x %struct.TypeMapModuleEntry]* @module16_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__TypeMapModule_assembly_name.16, i32 0, i32 0), ; assembly_name: FastAndroidCamera
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 17
	%struct.TypeMapModule {
		[16 x i8] c"\E6S\9A\D37\AF>@\9C\A7M\09\D9\E6\D4\BC", ; module_uuid: d39a53e6-af37-403e-9ca7-4d09d9e6d4bc
		i32 10, ; entry_count
		i32 3, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([10 x %struct.TypeMapModuleEntry], [10 x %struct.TypeMapModuleEntry]* @module17_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([3 x %struct.TypeMapModuleEntry], [3 x %struct.TypeMapModuleEntry]* @module17_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__TypeMapModule_assembly_name.17, i32 0, i32 0), ; assembly_name: Xamarin.Android.Support.Fragment
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 18
	%struct.TypeMapModule {
		[16 x i8] c"\F9\1A\8A\12S\C1\E4B\B3\EA\05S\B0\F8UQ", ; module_uuid: 128a1af9-c153-42e4-b3ea-0553b0f85551
		i32 4, ; entry_count
		i32 1, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([4 x %struct.TypeMapModuleEntry], [4 x %struct.TypeMapModuleEntry]* @module18_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([1 x %struct.TypeMapModuleEntry], [1 x %struct.TypeMapModuleEntry]* @module18_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__TypeMapModule_assembly_name.18, i32 0, i32 0), ; assembly_name: Xamarin.Android.Arch.Lifecycle.Common
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}
], align 4; end of 'map_modules' array


; Java to managed map

; map_java
@map_java = local_unnamed_addr constant [502 x %struct.TypeMapJava] [
	; 0
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 247; java_name_index
	}, 
	; 1
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555212, ; type_token_id
		i32 365; java_name_index
	}, 
	; 2
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 376; java_name_index
	}, 
	; 3
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 394; java_name_index
	}, 
	; 4
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554443, ; type_token_id
		i32 8; java_name_index
	}, 
	; 5
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 93; java_name_index
	}, 
	; 6
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554450, ; type_token_id
		i32 452; java_name_index
	}, 
	; 7
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555170, ; type_token_id
		i32 338; java_name_index
	}, 
	; 8
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554464, ; type_token_id
		i32 19; java_name_index
	}, 
	; 9
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555062, ; type_token_id
		i32 299; java_name_index
	}, 
	; 10
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 96; java_name_index
	}, 
	; 11
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554923, ; type_token_id
		i32 222; java_name_index
	}, 
	; 12
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554789, ; type_token_id
		i32 148; java_name_index
	}, 
	; 13
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554444, ; type_token_id
		i32 495; java_name_index
	}, 
	; 14
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555263, ; type_token_id
		i32 400; java_name_index
	}, 
	; 15
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554984, ; type_token_id
		i32 261; java_name_index
	}, 
	; 16
	%struct.TypeMapJava {
		i32 15, ; module_index
		i32 33554438, ; type_token_id
		i32 484; java_name_index
	}, 
	; 17
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554434, ; type_token_id
		i32 416; java_name_index
	}, 
	; 18
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554814, ; type_token_id
		i32 159; java_name_index
	}, 
	; 19
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554439, ; type_token_id
		i32 5; java_name_index
	}, 
	; 20
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 351; java_name_index
	}, 
	; 21
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554448, ; type_token_id
		i32 11; java_name_index
	}, 
	; 22
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 51; java_name_index
	}, 
	; 23
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554711, ; type_token_id
		i32 112; java_name_index
	}, 
	; 24
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 165; java_name_index
	}, 
	; 25
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554479, ; type_token_id
		i32 27; java_name_index
	}, 
	; 26
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 396; java_name_index
	}, 
	; 27
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555236, ; type_token_id
		i32 380; java_name_index
	}, 
	; 28
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 346; java_name_index
	}, 
	; 29
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554455, ; type_token_id
		i32 13; java_name_index
	}, 
	; 30
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 352; java_name_index
	}, 
	; 31
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554435, ; type_token_id
		i32 1; java_name_index
	}, 
	; 32
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554647, ; type_token_id
		i32 76; java_name_index
	}, 
	; 33
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555247, ; type_token_id
		i32 389; java_name_index
	}, 
	; 34
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554619, ; type_token_id
		i32 59; java_name_index
	}, 
	; 35
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554437, ; type_token_id
		i32 444; java_name_index
	}, 
	; 36
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 157; java_name_index
	}, 
	; 37
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554586, ; type_token_id
		i32 45; java_name_index
	}, 
	; 38
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 289; java_name_index
	}, 
	; 39
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 133; java_name_index
	}, 
	; 40
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554956, ; type_token_id
		i32 246; java_name_index
	}, 
	; 41
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554484, ; type_token_id
		i32 30; java_name_index
	}, 
	; 42
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554856, ; type_token_id
		i32 180; java_name_index
	}, 
	; 43
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555153, ; type_token_id
		i32 327; java_name_index
	}, 
	; 44
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554488, ; type_token_id
		i32 32; java_name_index
	}, 
	; 45
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554790, ; type_token_id
		i32 149; java_name_index
	}, 
	; 46
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554478, ; type_token_id
		i32 26; java_name_index
	}, 
	; 47
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555218, ; type_token_id
		i32 370; java_name_index
	}, 
	; 48
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555066, ; type_token_id
		i32 301; java_name_index
	}, 
	; 49
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 253; java_name_index
	}, 
	; 50
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 335; java_name_index
	}, 
	; 51
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555211, ; type_token_id
		i32 364; java_name_index
	}, 
	; 52
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 331; java_name_index
	}, 
	; 53
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555138, ; type_token_id
		i32 316; java_name_index
	}, 
	; 54
	%struct.TypeMapJava {
		i32 3, ; module_index
		i32 33554458, ; type_token_id
		i32 42; java_name_index
	}, 
	; 55
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554453, ; type_token_id
		i32 424; java_name_index
	}, 
	; 56
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 284; java_name_index
	}, 
	; 57
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555242, ; type_token_id
		i32 385; java_name_index
	}, 
	; 58
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 393; java_name_index
	}, 
	; 59
	%struct.TypeMapJava {
		i32 12, ; module_index
		i32 33554435, ; type_token_id
		i32 462; java_name_index
	}, 
	; 60
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554791, ; type_token_id
		i32 150; java_name_index
	}, 
	; 61
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555059, ; type_token_id
		i32 297; java_name_index
	}, 
	; 62
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554868, ; type_token_id
		i32 187; java_name_index
	}, 
	; 63
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 115; java_name_index
	}, 
	; 64
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554478, ; type_token_id
		i32 440; java_name_index
	}, 
	; 65
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 141; java_name_index
	}, 
	; 66
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554905, ; type_token_id
		i32 211; java_name_index
	}, 
	; 67
	%struct.TypeMapJava {
		i32 18, ; module_index
		i32 33554437, ; type_token_id
		i32 500; java_name_index
	}, 
	; 68
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555128, ; type_token_id
		i32 315; java_name_index
	}, 
	; 69
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554449, ; type_token_id
		i32 422; java_name_index
	}, 
	; 70
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554954, ; type_token_id
		i32 245; java_name_index
	}, 
	; 71
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 280; java_name_index
	}, 
	; 72
	%struct.TypeMapJava {
		i32 6, ; module_index
		i32 33554442, ; type_token_id
		i32 415; java_name_index
	}, 
	; 73
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555181, ; type_token_id
		i32 344; java_name_index
	}, 
	; 74
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554666, ; type_token_id
		i32 85; java_name_index
	}, 
	; 75
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555237, ; type_token_id
		i32 381; java_name_index
	}, 
	; 76
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554720, ; type_token_id
		i32 118; java_name_index
	}, 
	; 77
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554892, ; type_token_id
		i32 203; java_name_index
	}, 
	; 78
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 406; java_name_index
	}, 
	; 79
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555154, ; type_token_id
		i32 328; java_name_index
	}, 
	; 80
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 190; java_name_index
	}, 
	; 81
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554464, ; type_token_id
		i32 431; java_name_index
	}, 
	; 82
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554487, ; type_token_id
		i32 478; java_name_index
	}, 
	; 83
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555108, ; type_token_id
		i32 311; java_name_index
	}, 
	; 84
	%struct.TypeMapJava {
		i32 5, ; module_index
		i32 33554435, ; type_token_id
		i32 412; java_name_index
	}, 
	; 85
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554692, ; type_token_id
		i32 102; java_name_index
	}, 
	; 86
	%struct.TypeMapJava {
		i32 15, ; module_index
		i32 33554437, ; type_token_id
		i32 483; java_name_index
	}, 
	; 87
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554494, ; type_token_id
		i32 36; java_name_index
	}, 
	; 88
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 362; java_name_index
	}, 
	; 89
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555276, ; type_token_id
		i32 408; java_name_index
	}, 
	; 90
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554459, ; type_token_id
		i32 428; java_name_index
	}, 
	; 91
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 77; java_name_index
	}, 
	; 92
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555210, ; type_token_id
		i32 363; java_name_index
	}, 
	; 93
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554466, ; type_token_id
		i32 20; java_name_index
	}, 
	; 94
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 205; java_name_index
	}, 
	; 95
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555217, ; type_token_id
		i32 369; java_name_index
	}, 
	; 96
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554620, ; type_token_id
		i32 60; java_name_index
	}, 
	; 97
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555244, ; type_token_id
		i32 387; java_name_index
	}, 
	; 98
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 248; java_name_index
	}, 
	; 99
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554467, ; type_token_id
		i32 21; java_name_index
	}, 
	; 100
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555068, ; type_token_id
		i32 302; java_name_index
	}, 
	; 101
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554438, ; type_token_id
		i32 445; java_name_index
	}, 
	; 102
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554930, ; type_token_id
		i32 227; java_name_index
	}, 
	; 103
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 52; java_name_index
	}, 
	; 104
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554621, ; type_token_id
		i32 61; java_name_index
	}, 
	; 105
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555012, ; type_token_id
		i32 272; java_name_index
	}, 
	; 106
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555214, ; type_token_id
		i32 367; java_name_index
	}, 
	; 107
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554914, ; type_token_id
		i32 216; java_name_index
	}, 
	; 108
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 68; java_name_index
	}, 
	; 109
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554477, ; type_token_id
		i32 477; java_name_index
	}, 
	; 110
	%struct.TypeMapJava {
		i32 12, ; module_index
		i32 33554462, ; type_token_id
		i32 467; java_name_index
	}, 
	; 111
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555179, ; type_token_id
		i32 343; java_name_index
	}, 
	; 112
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554934, ; type_token_id
		i32 229; java_name_index
	}, 
	; 113
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554437, ; type_token_id
		i32 491; java_name_index
	}, 
	; 114
	%struct.TypeMapJava {
		i32 3, ; module_index
		i32 33554457, ; type_token_id
		i32 41; java_name_index
	}, 
	; 115
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554441, ; type_token_id
		i32 494; java_name_index
	}, 
	; 116
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554461, ; type_token_id
		i32 17; java_name_index
	}, 
	; 117
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554855, ; type_token_id
		i32 179; java_name_index
	}, 
	; 118
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 109; java_name_index
	}, 
	; 119
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554939, ; type_token_id
		i32 233; java_name_index
	}, 
	; 120
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554672, ; type_token_id
		i32 89; java_name_index
	}, 
	; 121
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 113; java_name_index
	}, 
	; 122
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554871, ; type_token_id
		i32 188; java_name_index
	}, 
	; 123
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555261, ; type_token_id
		i32 398; java_name_index
	}, 
	; 124
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 347; java_name_index
	}, 
	; 125
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554477, ; type_token_id
		i32 25; java_name_index
	}, 
	; 126
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554937, ; type_token_id
		i32 232; java_name_index
	}, 
	; 127
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554665, ; type_token_id
		i32 84; java_name_index
	}, 
	; 128
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555148, ; type_token_id
		i32 323; java_name_index
	}, 
	; 129
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554628, ; type_token_id
		i32 67; java_name_index
	}, 
	; 130
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555071, ; type_token_id
		i32 305; java_name_index
	}, 
	; 131
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554828, ; type_token_id
		i32 166; java_name_index
	}, 
	; 132
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 336; java_name_index
	}, 
	; 133
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554626, ; type_token_id
		i32 66; java_name_index
	}, 
	; 134
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 392; java_name_index
	}, 
	; 135
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554965, ; type_token_id
		i32 251; java_name_index
	}, 
	; 136
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554861, ; type_token_id
		i32 183; java_name_index
	}, 
	; 137
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554604, ; type_token_id
		i32 54; java_name_index
	}, 
	; 138
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554436, ; type_token_id
		i32 490; java_name_index
	}, 
	; 139
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554623, ; type_token_id
		i32 63; java_name_index
	}, 
	; 140
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554845, ; type_token_id
		i32 174; java_name_index
	}, 
	; 141
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554468, ; type_token_id
		i32 470; java_name_index
	}, 
	; 142
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 121; java_name_index
	}, 
	; 143
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 330; java_name_index
	}, 
	; 144
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554691, ; type_token_id
		i32 101; java_name_index
	}, 
	; 145
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 377; java_name_index
	}, 
	; 146
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555205, ; type_token_id
		i32 358; java_name_index
	}, 
	; 147
	%struct.TypeMapJava {
		i32 12, ; module_index
		i32 33554446, ; type_token_id
		i32 463; java_name_index
	}, 
	; 148
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554490, ; type_token_id
		i32 33; java_name_index
	}, 
	; 149
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 137; java_name_index
	}, 
	; 150
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 375; java_name_index
	}, 
	; 151
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554624, ; type_token_id
		i32 64; java_name_index
	}, 
	; 152
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554961, ; type_token_id
		i32 249; java_name_index
	}, 
	; 153
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554980, ; type_token_id
		i32 259; java_name_index
	}, 
	; 154
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554584, ; type_token_id
		i32 44; java_name_index
	}, 
	; 155
	%struct.TypeMapJava {
		i32 10, ; module_index
		i32 33554434, ; type_token_id
		i32 454; java_name_index
	}, 
	; 156
	%struct.TypeMapJava {
		i32 14, ; module_index
		i32 33554436, ; type_token_id
		i32 480; java_name_index
	}, 
	; 157
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554887, ; type_token_id
		i32 199; java_name_index
	}, 
	; 158
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 123; java_name_index
	}, 
	; 159
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555151, ; type_token_id
		i32 325; java_name_index
	}, 
	; 160
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554444, ; type_token_id
		i32 449; java_name_index
	}, 
	; 161
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555219, ; type_token_id
		i32 371; java_name_index
	}, 
	; 162
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 92; java_name_index
	}, 
	; 163
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554605, ; type_token_id
		i32 55; java_name_index
	}, 
	; 164
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555097, ; type_token_id
		i32 309; java_name_index
	}, 
	; 165
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554942, ; type_token_id
		i32 235; java_name_index
	}, 
	; 166
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555220, ; type_token_id
		i32 372; java_name_index
	}, 
	; 167
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554947, ; type_token_id
		i32 239; java_name_index
	}, 
	; 168
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 49; java_name_index
	}, 
	; 169
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554886, ; type_token_id
		i32 198; java_name_index
	}, 
	; 170
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555010, ; type_token_id
		i32 271; java_name_index
	}, 
	; 171
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 378; java_name_index
	}, 
	; 172
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554461, ; type_token_id
		i32 429; java_name_index
	}, 
	; 173
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555053, ; type_token_id
		i32 293; java_name_index
	}, 
	; 174
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554436, ; type_token_id
		i32 443; java_name_index
	}, 
	; 175
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554935, ; type_token_id
		i32 230; java_name_index
	}, 
	; 176
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555248, ; type_token_id
		i32 390; java_name_index
	}, 
	; 177
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555140, ; type_token_id
		i32 317; java_name_index
	}, 
	; 178
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554949, ; type_token_id
		i32 241; java_name_index
	}, 
	; 179
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 140; java_name_index
	}, 
	; 180
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554447, ; type_token_id
		i32 10; java_name_index
	}, 
	; 181
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554687, ; type_token_id
		i32 98; java_name_index
	}, 
	; 182
	%struct.TypeMapJava {
		i32 9, ; module_index
		i32 33554439, ; type_token_id
		i32 453; java_name_index
	}, 
	; 183
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555023, ; type_token_id
		i32 277; java_name_index
	}, 
	; 184
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554851, ; type_token_id
		i32 177; java_name_index
	}, 
	; 185
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554690, ; type_token_id
		i32 100; java_name_index
	}, 
	; 186
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554473, ; type_token_id
		i32 24; java_name_index
	}, 
	; 187
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554437, ; type_token_id
		i32 418; java_name_index
	}, 
	; 188
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555099, ; type_token_id
		i32 310; java_name_index
	}, 
	; 189
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554438, ; type_token_id
		i32 492; java_name_index
	}, 
	; 190
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555199, ; type_token_id
		i32 353; java_name_index
	}, 
	; 191
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554655, ; type_token_id
		i32 79; java_name_index
	}, 
	; 192
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554474, ; type_token_id
		i32 475; java_name_index
	}, 
	; 193
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555260, ; type_token_id
		i32 397; java_name_index
	}, 
	; 194
	%struct.TypeMapJava {
		i32 5, ; module_index
		i32 33554436, ; type_token_id
		i32 413; java_name_index
	}, 
	; 195
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554459, ; type_token_id
		i32 15; java_name_index
	}, 
	; 196
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554766, ; type_token_id
		i32 142; java_name_index
	}, 
	; 197
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555002, ; type_token_id
		i32 264; java_name_index
	}, 
	; 198
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554469, ; type_token_id
		i32 435; java_name_index
	}, 
	; 199
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554975, ; type_token_id
		i32 255; java_name_index
	}, 
	; 200
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554738, ; type_token_id
		i32 128; java_name_index
	}, 
	; 201
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554885, ; type_token_id
		i32 197; java_name_index
	}, 
	; 202
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 345; java_name_index
	}, 
	; 203
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 350; java_name_index
	}, 
	; 204
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 333; java_name_index
	}, 
	; 205
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554908, ; type_token_id
		i32 213; java_name_index
	}, 
	; 206
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554941, ; type_token_id
		i32 234; java_name_index
	}, 
	; 207
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554697, ; type_token_id
		i32 106; java_name_index
	}, 
	; 208
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555213, ; type_token_id
		i32 366; java_name_index
	}, 
	; 209
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554919, ; type_token_id
		i32 219; java_name_index
	}, 
	; 210
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554473, ; type_token_id
		i32 437; java_name_index
	}, 
	; 211
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555238, ; type_token_id
		i32 382; java_name_index
	}, 
	; 212
	%struct.TypeMapJava {
		i32 10, ; module_index
		i32 33554441, ; type_token_id
		i32 458; java_name_index
	}, 
	; 213
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555202, ; type_token_id
		i32 355; java_name_index
	}, 
	; 214
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554656, ; type_token_id
		i32 80; java_name_index
	}, 
	; 215
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554465, ; type_token_id
		i32 432; java_name_index
	}, 
	; 216
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554657, ; type_token_id
		i32 81; java_name_index
	}, 
	; 217
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554443, ; type_token_id
		i32 421; java_name_index
	}, 
	; 218
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555203, ; type_token_id
		i32 356; java_name_index
	}, 
	; 219
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554435, ; type_token_id
		i32 489; java_name_index
	}, 
	; 220
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554441, ; type_token_id
		i32 38; java_name_index
	}, 
	; 221
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554773, ; type_token_id
		i32 144; java_name_index
	}, 
	; 222
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555009, ; type_token_id
		i32 270; java_name_index
	}, 
	; 223
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554670, ; type_token_id
		i32 87; java_name_index
	}, 
	; 224
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 207; java_name_index
	}, 
	; 225
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 258; java_name_index
	}, 
	; 226
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555161, ; type_token_id
		i32 332; java_name_index
	}, 
	; 227
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554844, ; type_token_id
		i32 173; java_name_index
	}, 
	; 228
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 0, ; type_token_id
		i32 468; java_name_index
	}, 
	; 229
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554888, ; type_token_id
		i32 200; java_name_index
	}, 
	; 230
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555008, ; type_token_id
		i32 269; java_name_index
	}, 
	; 231
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554434, ; type_token_id
		i32 488; java_name_index
	}, 
	; 232
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554945, ; type_token_id
		i32 237; java_name_index
	}, 
	; 233
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555069, ; type_token_id
		i32 303; java_name_index
	}, 
	; 234
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 171; java_name_index
	}, 
	; 235
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554447, ; type_token_id
		i32 451; java_name_index
	}, 
	; 236
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 107; java_name_index
	}, 
	; 237
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555172, ; type_token_id
		i32 339; java_name_index
	}, 
	; 238
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555033, ; type_token_id
		i32 282; java_name_index
	}, 
	; 239
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 383; java_name_index
	}, 
	; 240
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554821, ; type_token_id
		i32 163; java_name_index
	}, 
	; 241
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554686, ; type_token_id
		i32 97; java_name_index
	}, 
	; 242
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554778, ; type_token_id
		i32 145; java_name_index
	}, 
	; 243
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554445, ; type_token_id
		i32 496; java_name_index
	}, 
	; 244
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 283; java_name_index
	}, 
	; 245
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 348; java_name_index
	}, 
	; 246
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554860, ; type_token_id
		i32 182; java_name_index
	}, 
	; 247
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555054, ; type_token_id
		i32 294; java_name_index
	}, 
	; 248
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 73; java_name_index
	}, 
	; 249
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555274, ; type_token_id
		i32 407; java_name_index
	}, 
	; 250
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 169; java_name_index
	}, 
	; 251
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554480, ; type_token_id
		i32 28; java_name_index
	}, 
	; 252
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554458, ; type_token_id
		i32 427; java_name_index
	}, 
	; 253
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554974, ; type_token_id
		i32 254; java_name_index
	}, 
	; 254
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555201, ; type_token_id
		i32 354; java_name_index
	}, 
	; 255
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 71; java_name_index
	}, 
	; 256
	%struct.TypeMapJava {
		i32 12, ; module_index
		i32 33554448, ; type_token_id
		i32 465; java_name_index
	}, 
	; 257
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555005, ; type_token_id
		i32 267; java_name_index
	}, 
	; 258
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554806, ; type_token_id
		i32 156; java_name_index
	}, 
	; 259
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554436, ; type_token_id
		i32 2; java_name_index
	}, 
	; 260
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554671, ; type_token_id
		i32 88; java_name_index
	}, 
	; 261
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554737, ; type_token_id
		i32 127; java_name_index
	}, 
	; 262
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554635, ; type_token_id
		i32 70; java_name_index
	}, 
	; 263
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554475, ; type_token_id
		i32 476; java_name_index
	}, 
	; 264
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 286; java_name_index
	}, 
	; 265
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554694, ; type_token_id
		i32 104; java_name_index
	}, 
	; 266
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 208; java_name_index
	}, 
	; 267
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 340; java_name_index
	}, 
	; 268
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554625, ; type_token_id
		i32 65; java_name_index
	}, 
	; 269
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554798, ; type_token_id
		i32 152; java_name_index
	}, 
	; 270
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 95; java_name_index
	}, 
	; 271
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554976, ; type_token_id
		i32 256; java_name_index
	}, 
	; 272
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554440, ; type_token_id
		i32 493; java_name_index
	}, 
	; 273
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555042, ; type_token_id
		i32 287; java_name_index
	}, 
	; 274
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555169, ; type_token_id
		i32 337; java_name_index
	}, 
	; 275
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554445, ; type_token_id
		i32 450; java_name_index
	}, 
	; 276
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554893, ; type_token_id
		i32 204; java_name_index
	}, 
	; 277
	%struct.TypeMapJava {
		i32 10, ; module_index
		i32 33554439, ; type_token_id
		i32 457; java_name_index
	}, 
	; 278
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555070, ; type_token_id
		i32 304; java_name_index
	}, 
	; 279
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555003, ; type_token_id
		i32 265; java_name_index
	}, 
	; 280
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554439, ; type_token_id
		i32 419; java_name_index
	}, 
	; 281
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554969, ; type_token_id
		i32 252; java_name_index
	}, 
	; 282
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554661, ; type_token_id
		i32 83; java_name_index
	}, 
	; 283
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555039, ; type_token_id
		i32 285; java_name_index
	}, 
	; 284
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555152, ; type_token_id
		i32 326; java_name_index
	}, 
	; 285
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555145, ; type_token_id
		i32 321; java_name_index
	}, 
	; 286
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554466, ; type_token_id
		i32 433; java_name_index
	}, 
	; 287
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554977, ; type_token_id
		i32 257; java_name_index
	}, 
	; 288
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 395; java_name_index
	}, 
	; 289
	%struct.TypeMapJava {
		i32 15, ; module_index
		i32 33554439, ; type_token_id
		i32 485; java_name_index
	}, 
	; 290
	%struct.TypeMapJava {
		i32 11, ; module_index
		i32 33554435, ; type_token_id
		i32 460; java_name_index
	}, 
	; 291
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 379; java_name_index
	}, 
	; 292
	%struct.TypeMapJava {
		i32 12, ; module_index
		i32 33554447, ; type_token_id
		i32 464; java_name_index
	}, 
	; 293
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555052, ; type_token_id
		i32 292; java_name_index
	}, 
	; 294
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554434, ; type_token_id
		i32 0; java_name_index
	}, 
	; 295
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555221, ; type_token_id
		i32 373; java_name_index
	}, 
	; 296
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554998, ; type_token_id
		i32 263; java_name_index
	}, 
	; 297
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554950, ; type_token_id
		i32 242; java_name_index
	}, 
	; 298
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554818, ; type_token_id
		i32 162; java_name_index
	}, 
	; 299
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554471, ; type_token_id
		i32 436; java_name_index
	}, 
	; 300
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555249, ; type_token_id
		i32 391; java_name_index
	}, 
	; 301
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555060, ; type_token_id
		i32 298; java_name_index
	}, 
	; 302
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555072, ; type_token_id
		i32 306; java_name_index
	}, 
	; 303
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555150, ; type_token_id
		i32 324; java_name_index
	}, 
	; 304
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 274; java_name_index
	}, 
	; 305
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554854, ; type_token_id
		i32 178; java_name_index
	}, 
	; 306
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554706, ; type_token_id
		i32 111; java_name_index
	}, 
	; 307
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 349; java_name_index
	}, 
	; 308
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 290; java_name_index
	}, 
	; 309
	%struct.TypeMapJava {
		i32 12, ; module_index
		i32 33554449, ; type_token_id
		i32 466; java_name_index
	}, 
	; 310
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 130; java_name_index
	}, 
	; 311
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 110; java_name_index
	}, 
	; 312
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555262, ; type_token_id
		i32 399; java_name_index
	}, 
	; 313
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555175, ; type_token_id
		i32 341; java_name_index
	}, 
	; 314
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 260; java_name_index
	}, 
	; 315
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 281; java_name_index
	}, 
	; 316
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554486, ; type_token_id
		i32 31; java_name_index
	}, 
	; 317
	%struct.TypeMapJava {
		i32 16, ; module_index
		i32 33554436, ; type_token_id
		i32 487; java_name_index
	}, 
	; 318
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 75; java_name_index
	}, 
	; 319
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554463, ; type_token_id
		i32 430; java_name_index
	}, 
	; 320
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554451, ; type_token_id
		i32 423; java_name_index
	}, 
	; 321
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 276; java_name_index
	}, 
	; 322
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 86; java_name_index
	}, 
	; 323
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555063, ; type_token_id
		i32 300; java_name_index
	}, 
	; 324
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555270, ; type_token_id
		i32 404; java_name_index
	}, 
	; 325
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 48; java_name_index
	}, 
	; 326
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 90; java_name_index
	}, 
	; 327
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554719, ; type_token_id
		i32 117; java_name_index
	}, 
	; 328
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554650, ; type_token_id
		i32 78; java_name_index
	}, 
	; 329
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554812, ; type_token_id
		i32 158; java_name_index
	}, 
	; 330
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 91; java_name_index
	}, 
	; 331
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554951, ; type_token_id
		i32 243; java_name_index
	}, 
	; 332
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555146, ; type_token_id
		i32 322; java_name_index
	}, 
	; 333
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 184; java_name_index
	}, 
	; 334
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 170; java_name_index
	}, 
	; 335
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555208, ; type_token_id
		i32 361; java_name_index
	}, 
	; 336
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554915, ; type_token_id
		i32 217; java_name_index
	}, 
	; 337
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554440, ; type_token_id
		i32 447; java_name_index
	}, 
	; 338
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554467, ; type_token_id
		i32 469; java_name_index
	}, 
	; 339
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554883, ; type_token_id
		i32 195; java_name_index
	}, 
	; 340
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554471, ; type_token_id
		i32 472; java_name_index
	}, 
	; 341
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554889, ; type_token_id
		i32 201; java_name_index
	}, 
	; 342
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554493, ; type_token_id
		i32 35; java_name_index
	}, 
	; 343
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 191; java_name_index
	}, 
	; 344
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554693, ; type_token_id
		i32 103; java_name_index
	}, 
	; 345
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554739, ; type_token_id
		i32 129; java_name_index
	}, 
	; 346
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554435, ; type_token_id
		i32 417; java_name_index
	}, 
	; 347
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554920, ; type_token_id
		i32 220; java_name_index
	}, 
	; 348
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554455, ; type_token_id
		i32 425; java_name_index
	}, 
	; 349
	%struct.TypeMapJava {
		i32 18, ; module_index
		i32 33554439, ; type_token_id
		i32 501; java_name_index
	}, 
	; 350
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554730, ; type_token_id
		i32 124; java_name_index
	}, 
	; 351
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554460, ; type_token_id
		i32 16; java_name_index
	}, 
	; 352
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555241, ; type_token_id
		i32 384; java_name_index
	}, 
	; 353
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555056, ; type_token_id
		i32 295; java_name_index
	}, 
	; 354
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 288; java_name_index
	}, 
	; 355
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554925, ; type_token_id
		i32 224; java_name_index
	}, 
	; 356
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 139; java_name_index
	}, 
	; 357
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 278; java_name_index
	}, 
	; 358
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554754, ; type_token_id
		i32 136; java_name_index
	}, 
	; 359
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 160; java_name_index
	}, 
	; 360
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554439, ; type_token_id
		i32 446; java_name_index
	}, 
	; 361
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555207, ; type_token_id
		i32 360; java_name_index
	}, 
	; 362
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554688, ; type_token_id
		i32 99; java_name_index
	}, 
	; 363
	%struct.TypeMapJava {
		i32 17, ; module_index
		i32 33554449, ; type_token_id
		i32 497; java_name_index
	}, 
	; 364
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554882, ; type_token_id
		i32 194; java_name_index
	}, 
	; 365
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554482, ; type_token_id
		i32 29; java_name_index
	}, 
	; 366
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 308; java_name_index
	}, 
	; 367
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555301, ; type_token_id
		i32 411; java_name_index
	}, 
	; 368
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554873, ; type_token_id
		i32 189; java_name_index
	}, 
	; 369
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 185; java_name_index
	}, 
	; 370
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554782, ; type_token_id
		i32 146; java_name_index
	}, 
	; 371
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554847, ; type_token_id
		i32 175; java_name_index
	}, 
	; 372
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555277, ; type_token_id
		i32 409; java_name_index
	}, 
	; 373
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554442, ; type_token_id
		i32 448; java_name_index
	}, 
	; 374
	%struct.TypeMapJava {
		i32 18, ; module_index
		i32 33554435, ; type_token_id
		i32 499; java_name_index
	}, 
	; 375
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554884, ; type_token_id
		i32 196; java_name_index
	}, 
	; 376
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554441, ; type_token_id
		i32 7; java_name_index
	}, 
	; 377
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554445, ; type_token_id
		i32 9; java_name_index
	}, 
	; 378
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554924, ; type_token_id
		i32 223; java_name_index
	}, 
	; 379
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 250; java_name_index
	}, 
	; 380
	%struct.TypeMapJava {
		i32 15, ; module_index
		i32 33554436, ; type_token_id
		i32 482; java_name_index
	}, 
	; 381
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 206; java_name_index
	}, 
	; 382
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554802, ; type_token_id
		i32 154; java_name_index
	}, 
	; 383
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 125; java_name_index
	}, 
	; 384
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 143; java_name_index
	}, 
	; 385
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 221; java_name_index
	}, 
	; 386
	%struct.TypeMapJava {
		i32 14, ; module_index
		i32 33554441, ; type_token_id
		i32 481; java_name_index
	}, 
	; 387
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 402; java_name_index
	}, 
	; 388
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 135; java_name_index
	}, 
	; 389
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554793, ; type_token_id
		i32 151; java_name_index
	}, 
	; 390
	%struct.TypeMapJava {
		i32 11, ; module_index
		i32 33554434, ; type_token_id
		i32 459; java_name_index
	}, 
	; 391
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 50; java_name_index
	}, 
	; 392
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555144, ; type_token_id
		i32 320; java_name_index
	}, 
	; 393
	%struct.TypeMapJava {
		i32 10, ; module_index
		i32 33554436, ; type_token_id
		i32 455; java_name_index
	}, 
	; 394
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 218; java_name_index
	}, 
	; 395
	%struct.TypeMapJava {
		i32 8, ; module_index
		i32 33554435, ; type_token_id
		i32 442; java_name_index
	}, 
	; 396
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 164; java_name_index
	}, 
	; 397
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 74; java_name_index
	}, 
	; 398
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554437, ; type_token_id
		i32 37; java_name_index
	}, 
	; 399
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554590, ; type_token_id
		i32 47; java_name_index
	}, 
	; 400
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554492, ; type_token_id
		i32 34; java_name_index
	}, 
	; 401
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555245, ; type_token_id
		i32 388; java_name_index
	}, 
	; 402
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554583, ; type_token_id
		i32 43; java_name_index
	}, 
	; 403
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 291; java_name_index
	}, 
	; 404
	%struct.TypeMapJava {
		i32 6, ; module_index
		i32 33554441, ; type_token_id
		i32 414; java_name_index
	}, 
	; 405
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554473, ; type_token_id
		i32 474; java_name_index
	}, 
	; 406
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555155, ; type_token_id
		i32 329; java_name_index
	}, 
	; 407
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554858, ; type_token_id
		i32 181; java_name_index
	}, 
	; 408
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554622, ; type_token_id
		i32 62; java_name_index
	}, 
	; 409
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554480, ; type_token_id
		i32 441; java_name_index
	}, 
	; 410
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554457, ; type_token_id
		i32 426; java_name_index
	}, 
	; 411
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555007, ; type_token_id
		i32 268; java_name_index
	}, 
	; 412
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554469, ; type_token_id
		i32 471; java_name_index
	}, 
	; 413
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555112, ; type_token_id
		i32 313; java_name_index
	}, 
	; 414
	%struct.TypeMapJava {
		i32 13, ; module_index
		i32 33554472, ; type_token_id
		i32 473; java_name_index
	}, 
	; 415
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554633, ; type_token_id
		i32 69; java_name_index
	}, 
	; 416
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554714, ; type_token_id
		i32 114; java_name_index
	}, 
	; 417
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555215, ; type_token_id
		i32 368; java_name_index
	}, 
	; 418
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555142, ; type_token_id
		i32 318; java_name_index
	}, 
	; 419
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554805, ; type_token_id
		i32 155; java_name_index
	}, 
	; 420
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555110, ; type_token_id
		i32 312; java_name_index
	}, 
	; 421
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554735, ; type_token_id
		i32 126; java_name_index
	}, 
	; 422
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554849, ; type_token_id
		i32 176; java_name_index
	}, 
	; 423
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554943, ; type_token_id
		i32 236; java_name_index
	}, 
	; 424
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555206, ; type_token_id
		i32 359; java_name_index
	}, 
	; 425
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 120; java_name_index
	}, 
	; 426
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554866, ; type_token_id
		i32 186; java_name_index
	}, 
	; 427
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554890, ; type_token_id
		i32 202; java_name_index
	}, 
	; 428
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 168; java_name_index
	}, 
	; 429
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554588, ; type_token_id
		i32 46; java_name_index
	}, 
	; 430
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554880, ; type_token_id
		i32 193; java_name_index
	}, 
	; 431
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555143, ; type_token_id
		i32 319; java_name_index
	}, 
	; 432
	%struct.TypeMapJava {
		i32 10, ; module_index
		i32 33554438, ; type_token_id
		i32 456; java_name_index
	}, 
	; 433
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554441, ; type_token_id
		i32 420; java_name_index
	}, 
	; 434
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 244; java_name_index
	}, 
	; 435
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554928, ; type_token_id
		i32 225; java_name_index
	}, 
	; 436
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554727, ; type_token_id
		i32 122; java_name_index
	}, 
	; 437
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555058, ; type_token_id
		i32 296; java_name_index
	}, 
	; 438
	%struct.TypeMapJava {
		i32 2, ; module_index
		i32 33554435, ; type_token_id
		i32 39; java_name_index
	}, 
	; 439
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554912, ; type_token_id
		i32 215; java_name_index
	}, 
	; 440
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 53; java_name_index
	}, 
	; 441
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554457, ; type_token_id
		i32 14; java_name_index
	}, 
	; 442
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554936, ; type_token_id
		i32 231; java_name_index
	}, 
	; 443
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555204, ; type_token_id
		i32 357; java_name_index
	}, 
	; 444
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 116; java_name_index
	}, 
	; 445
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554681, ; type_token_id
		i32 94; java_name_index
	}, 
	; 446
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555268, ; type_token_id
		i32 403; java_name_index
	}, 
	; 447
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 167; java_name_index
	}, 
	; 448
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555164, ; type_token_id
		i32 334; java_name_index
	}, 
	; 449
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 131; java_name_index
	}, 
	; 450
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554878, ; type_token_id
		i32 192; java_name_index
	}, 
	; 451
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555027, ; type_token_id
		i32 279; java_name_index
	}, 
	; 452
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554948, ; type_token_id
		i32 240; java_name_index
	}, 
	; 453
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554695, ; type_token_id
		i32 105; java_name_index
	}, 
	; 454
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555093, ; type_token_id
		i32 307; java_name_index
	}, 
	; 455
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554606, ; type_token_id
		i32 56; java_name_index
	}, 
	; 456
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554476, ; type_token_id
		i32 439; java_name_index
	}, 
	; 457
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554440, ; type_token_id
		i32 6; java_name_index
	}, 
	; 458
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555015, ; type_token_id
		i32 273; java_name_index
	}, 
	; 459
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554931, ; type_token_id
		i32 228; java_name_index
	}, 
	; 460
	%struct.TypeMapJava {
		i32 11, ; module_index
		i32 33554437, ; type_token_id
		i32 461; java_name_index
	}, 
	; 461
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555223, ; type_token_id
		i32 374; java_name_index
	}, 
	; 462
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554474, ; type_token_id
		i32 438; java_name_index
	}, 
	; 463
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554618, ; type_token_id
		i32 58; java_name_index
	}, 
	; 464
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554985, ; type_token_id
		i32 262; java_name_index
	}, 
	; 465
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 153; java_name_index
	}, 
	; 466
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554468, ; type_token_id
		i32 22; java_name_index
	}, 
	; 467
	%struct.TypeMapJava {
		i32 15, ; module_index
		i32 33554442, ; type_token_id
		i32 486; java_name_index
	}, 
	; 468
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 275; java_name_index
	}, 
	; 469
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554438, ; type_token_id
		i32 4; java_name_index
	}, 
	; 470
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555004, ; type_token_id
		i32 266; java_name_index
	}, 
	; 471
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555243, ; type_token_id
		i32 386; java_name_index
	}, 
	; 472
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554909, ; type_token_id
		i32 214; java_name_index
	}, 
	; 473
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554817, ; type_token_id
		i32 161; java_name_index
	}, 
	; 474
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554785, ; type_token_id
		i32 147; java_name_index
	}, 
	; 475
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555177, ; type_token_id
		i32 342; java_name_index
	}, 
	; 476
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554700, ; type_token_id
		i32 108; java_name_index
	}, 
	; 477
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555278, ; type_token_id
		i32 410; java_name_index
	}, 
	; 478
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554437, ; type_token_id
		i32 3; java_name_index
	}, 
	; 479
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 138; java_name_index
	}, 
	; 480
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554904, ; type_token_id
		i32 210; java_name_index
	}, 
	; 481
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554639, ; type_token_id
		i32 72; java_name_index
	}, 
	; 482
	%struct.TypeMapJava {
		i32 2, ; module_index
		i32 33554436, ; type_token_id
		i32 40; java_name_index
	}, 
	; 483
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554608, ; type_token_id
		i32 57; java_name_index
	}, 
	; 484
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555271, ; type_token_id
		i32 405; java_name_index
	}, 
	; 485
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554451, ; type_token_id
		i32 12; java_name_index
	}, 
	; 486
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 172; java_name_index
	}, 
	; 487
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554929, ; type_token_id
		i32 226; java_name_index
	}, 
	; 488
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554463, ; type_token_id
		i32 18; java_name_index
	}, 
	; 489
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33555113, ; type_token_id
		i32 314; java_name_index
	}, 
	; 490
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 119; java_name_index
	}, 
	; 491
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 209; java_name_index
	}, 
	; 492
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 134; java_name_index
	}, 
	; 493
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 132; java_name_index
	}, 
	; 494
	%struct.TypeMapJava {
		i32 14, ; module_index
		i32 33554434, ; type_token_id
		i32 479; java_name_index
	}, 
	; 495
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554907, ; type_token_id
		i32 212; java_name_index
	}, 
	; 496
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554471, ; type_token_id
		i32 23; java_name_index
	}, 
	; 497
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554946, ; type_token_id
		i32 238; java_name_index
	}, 
	; 498
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 401; java_name_index
	}, 
	; 499
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 0, ; type_token_id
		i32 82; java_name_index
	}, 
	; 500
	%struct.TypeMapJava {
		i32 7, ; module_index
		i32 33554467, ; type_token_id
		i32 434; java_name_index
	}, 
	; 501
	%struct.TypeMapJava {
		i32 18, ; module_index
		i32 33554434, ; type_token_id
		i32 498; java_name_index
	}
], align 4; end of 'map_java' array

@map_java_hashes = local_unnamed_addr constant [502 x i32] [
	i32 4689355, ; 0: 0x478dcb => android/animation/Animator$AnimatorListener
	i32 12341354, ; 1: 0xbc506a => java/lang/Object
	i32 12507823, ; 2: 0xbedaaf => java/lang/AutoCloseable
	i32 13389226, ; 3: 0xcc4daa => java/lang/reflect/GenericDeclaration
	i32 21368018, ; 4: 0x1460cd2 => android/support/v7/app/ActionBar$OnMenuVisibilityListener
	i32 29653966, ; 5: 0x1c47bce => android/widget/ListAdapter
	i32 31889018, ; 6: 0x1e6967a => mono/android/support/design/widget/SwipeDismissBehavior_OnDismissListenerImplementor
	i32 32078366, ; 7: 0x1e97a1e => java/security/cert/Certificate
	i32 33285317, ; 8: 0x1fbe4c5 => android/support/v7/app/AppCompatDialogFragment
	i32 34115578, ; 9: 0x2088ffa => android/content/pm/PackageItemInfo
	i32 67977947, ; 10: 0x40d42db => android/widget/ThemedSpinnerAdapter
	i32 69045231, ; 11: 0x41d8bef => android/hardware/Camera$CameraInfo
	i32 74282880, ; 12: 0x46d7780 => android/view/ViewGroup
	i32 90623032, ; 13: 0x566cc38 => android/support/v4/app/FragmentManager$OnBackStackChangedListener
	i32 90644496, ; 14: 0x5672010 => java/io/FileNotFoundException
	i32 101184921, ; 15: 0x607f599 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i32 109268381, ; 16: 0x6834d9d => crc64b87e06cf702046da/MainDocketActivity
	i32 117938460, ; 17: 0x707991c => android/support/v13/view/DragAndDropPermissionsCompat
	i32 118977103, ; 18: 0x717724f => android/util/DisplayMetrics
	i32 126334744, ; 19: 0x787b718 => android/support/v7/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i32 133154022, ; 20: 0x7efc4e6 => java/nio/channels/SeekableByteChannel
	i32 134617809, ; 21: 0x8061ad1 => android/support/v7/app/ActionBar$Tab
	i32 138171443, ; 22: 0x83c5433 => javax/net/ssl/SSLSessionContext
	i32 139280357, ; 23: 0x84d3fe5 => android/view/KeyEvent
	i32 148505617, ; 24: 0x8da0411 => android/text/GetChars
	i32 150434817, ; 25: 0x8f77401 => android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener
	i32 151062962, ; 26: 0x90109b2 => java/lang/reflect/TypeVariable
	i32 176697843, ; 27: 0xa8831f3 => java/lang/IllegalArgumentException
	i32 182338948, ; 28: 0xade4584 => java/nio/channels/Channel
	i32 220529267, ; 29: 0xd250273 => android/support/v7/app/ActionBarDrawerToggle
	i32 229694295, ; 30: 0xdb0db57 => java/nio/channels/WritableByteChannel
	i32 242220981, ; 31: 0xe6fffb5 => android/support/v7/app/AlertDialog
	i32 251666975, ; 32: 0xf00221f => android/widget/DatePicker
	i32 257094054, ; 33: 0xf52f1a6 => java/lang/ReflectiveOperationException
	i32 262602588, ; 34: 0xfa6ff5c => android/provider/MediaStore
	i32 267813695, ; 35: 0xff6833f => android/support/design/widget/Snackbar_SnackbarActionClickImplementor
	i32 268673672, ; 36: 0x1003a288 => android/view/accessibility/AccessibilityEventSource
	i32 269199815, ; 37: 0x100ba9c7 => javax/security/cert/X509Certificate
	i32 279693177, ; 38: 0x10abc779 => android/content/SharedPreferences$Editor
	i32 307048059, ; 39: 0x124d2e7b => android/view/MenuItem$OnActionExpandListener
	i32 317135051, ; 40: 0x12e718cb => android/animation/Animator
	i32 318734747, ; 41: 0x12ff819b => android/support/v7/view/menu/MenuBuilder
	i32 358279401, ; 42: 0x155ae8e9 => android/text/style/CharacterStyle
	i32 362231028, ; 43: 0x159734f4 => java/net/URI
	i32 366002464, ; 44: 0x15d0c120 => android/support/v7/view/menu/MenuPresenter$Callback
	i32 366534601, ; 45: 0x15d8dfc9 => android/view/ViewGroup$LayoutParams
	i32 368584068, ; 46: 0x15f82584 => android/support/v7/widget/ScrollingTabContainerView
	i32 393371378, ; 47: 0x17725ef2 => mono/java/lang/RunnableImplementor
	i32 398599711, ; 48: 0x17c2261f => android/content/pm/ResolveInfo
	i32 399364059, ; 49: 0x17cdcfdb => android/animation/TimeInterpolator
	i32 412395228, ; 50: 0x1894a6dc => java/security/KeyStore$LoadStoreParameter
	i32 412771173, ; 51: 0x189a6365 => java/lang/Long
	i32 419359493, ; 52: 0x18feeb05 => java/util/Iterator
	i32 420482824, ; 53: 0x19100f08 => java/net/ConnectException
	i32 427209000, ; 54: 0x1976b128 => xamarin/essentials/fileProvider
	i32 429004301, ; 55: 0x1992160d => android/support/v4/view/NestedScrollingParent2
	i32 436934201, ; 56: 0x1a0b1639 => android/content/DialogInterface$OnShowListener
	i32 443233435, ; 57: 0x1a6b349b => java/lang/LinkageError
	i32 466997013, ; 58: 0x1bd5cf15 => java/lang/reflect/AnnotatedElement
	i32 500022476, ; 59: 0x1dcdbccc => crc6480997b3ef81bf9b2/ActivityLifecycleContextListener
	i32 501733478, ; 60: 0x1de7d866 => android/view/ViewGroup$MarginLayoutParams
	i32 502350504, ; 61: 0x1df142a8 => android/content/pm/PackageInstaller$Session
	i32 504968808, ; 62: 0x1e193668 => android/text/style/ReplacementSpan
	i32 509491678, ; 63: 0x1e5e39de => android/view/LayoutInflater$Factory
	i32 514704326, ; 64: 0x1eadc3c6 => android/support/v4/app/TaskStackBuilder
	i32 517025718, ; 65: 0x1ed12fb6 => android/view/ViewParent
	i32 517668398, ; 66: 0x1edafe2e => android/os/Parcel
	i32 528353894, ; 67: 0x1f7e0a66 => android/arch/lifecycle/LifecycleObserver
	i32 531198748, ; 68: 0x1fa9731c => mono/android/runtime/OutputStreamAdapter
	i32 553055121, ; 69: 0x20f6f391 => android/support/v4/view/DisplayCutoutCompat
	i32 553905247, ; 70: 0x2103ec5f => android/graphics/drawable/ColorDrawable
	i32 568462196, ; 71: 0x21e20b74 => android/content/DialogInterface$OnDismissListener
	i32 576012574, ; 72: 0x2255411e => crc6457e461602e32e680/ProgressWheel_SpinHandler
	i32 581097368, ; 73: 0x22a2d798 => java/nio/channels/FileChannel
	i32 584201455, ; 74: 0x22d234ef => android/widget/Filter
	i32 584231583, ; 75: 0x22d2aa9f => java/lang/IllegalStateException
	i32 590702782, ; 76: 0x233568be => android/view/ViewTreeObserver
	i32 591810476, ; 77: 0x23464fac => android/os/Bundle
	i32 606085292, ; 78: 0x242020ac => java/io/Serializable
	i32 619060219, ; 79: 0x24e61bfb => java/net/URL
	i32 630387043, ; 80: 0x2592f163 => android/text/method/KeyListener
	i32 660927550, ; 81: 0x2764f43e => android/support/v4/content/ContextCompat
	i32 663731624, ; 82: 0x278fbda8 => crc64692a67b1ffd85ce9/ActivityLifecycleCallbacks
	i32 692920175, ; 83: 0x294d1f6f => java/util/ArrayList
	i32 730914382, ; 84: 0x2b90de4e => android/arch/lifecycle/Observer
	i32 741095218, ; 85: 0x2c2c3732 => android/widget/RelativeLayout
	i32 746676441, ; 86: 0x2c8160d9 => crc64b87e06cf702046da/MainActivity
	i32 762267294, ; 87: 0x2d6f469e => android/support/v7/view/menu/SubMenuBuilder
	i32 780408360, ; 88: 0x2e841628 => java/lang/CharSequence
	i32 780987551, ; 89: 0x2e8cec9f => java/io/PrintWriter
	i32 782823968, ; 90: 0x2ea8f220 => android/support/v4/view/WindowInsetsCompat
	i32 784348946, ; 91: 0x2ec03712 => android/widget/DatePicker$OnDateChangedListener
	i32 793918146, ; 92: 0x2f523ac2 => java/lang/Integer
	i32 798443257, ; 93: 0x2f9746f9 => android/support/v7/app/AppCompatCallback
	i32 805498755, ; 94: 0x3002ef83 => android/os/IBinder$DeathRecipient
	i32 806800039, ; 95: 0x3016caa7 => java/lang/Thread
	i32 827461610, ; 96: 0x31520fea => android/provider/MediaStore$Images
	i32 838682992, ; 97: 0x31fd4970 => java/lang/NullPointerException
	i32 843201759, ; 98: 0x32423cdf => android/animation/Animator$AnimatorPauseListener
	i32 843976700, ; 99: 0x324e0ffc => android/support/v7/widget/Toolbar
	i32 857458217, ; 100: 0x331bc629 => android/content/res/AssetManager
	i32 858019096, ; 101: 0x33245518 => android/support/design/widget/Snackbar$Callback
	i32 864882745, ; 102: 0x338d1039 => android/graphics/Bitmap$Config
	i32 876646173, ; 103: 0x34408f1d => javax/net/ssl/TrustManager
	i32 883855573, ; 104: 0x34ae90d5 => android/provider/MediaStore$Images$Media
	i32 885223365, ; 105: 0x34c36fc5 => android/content/ContentResolver
	i32 893363610, ; 106: 0x353fa59a => java/lang/Short
	i32 896869170, ; 107: 0x35752332 => android/media/ExifInterface
	i32 906034180, ; 108: 0x3600fc04 => android/database/Cursor
	i32 907283079, ; 109: 0x36140a87 => crc6439b217bab7914f95/ActionSheetListAdapter
	i32 908818920, ; 110: 0x362b79e8 => crc643eead1a2954d3917/CameraEventsListener
	i32 925357775, ; 111: 0x3727d6cf => java/nio/ByteBuffer
	i32 928674904, ; 112: 0x375a7458 => android/graphics/BitmapFactory
	i32 933236006, ; 113: 0x37a00d26 => android/support/v4/app/Fragment$SavedState
	i32 954160213, ; 114: 0x38df5455 => crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener
	i32 955594626, ; 115: 0x38f53782 => android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks
	i32 960048840, ; 116: 0x39392ec8 => android/support/v7/app/AppCompatDelegate
	i32 967170543, ; 117: 0x39a5d9ef => android/text/TextPaint
	i32 968142514, ; 118: 0x39b4aeb2 => android/view/View$OnCreateContextMenuListener
	i32 977319520, ; 119: 0x3a40b660 => android/graphics/ImageFormat
	i32 982326989, ; 120: 0x3a8d1ecd => android/widget/HorizontalScrollView
	i32 988336100, ; 121: 0x3ae8cfe4 => android/view/KeyEvent$Callback
	i32 988965965, ; 122: 0x3af26c4d => android/text/method/BaseKeyListener
	i32 996699600, ; 123: 0x3b686dd0 => java/io/FileDescriptor
	i32 998009430, ; 124: 0x3b7c6a56 => java/nio/channels/GatheringByteChannel
	i32 1000548692, ; 125: 0x3ba32954 => android/support/v7/widget/DecorToolbar
	i32 1008962460, ; 126: 0x3c238b9c => android/graphics/Color
	i32 1018791985, ; 127: 0x3cb98831 => android/widget/EditText
	i32 1026507328, ; 128: 0x3d2f4240 => java/net/SocketAddress
	i32 1030707578, ; 129: 0x3d6f597a => android/database/DataSetObserver
	i32 1035992969, ; 130: 0x3dbfff89 => android/content/res/Resources
	i32 1046511593, ; 131: 0x3e607fe9 => android/text/InputFilter$LengthFilter
	i32 1062235695, ; 132: 0x3f506e2f => java/security/KeyStore$ProtectionParameter
	i32 1070459310, ; 133: 0x3fcde9ae => android/database/ContentObserver
	i32 1073016658, ; 134: 0x3ff4ef52 => java/lang/annotation/Annotation
	i32 1073696643, ; 135: 0x3fff4f83 => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i32 1081336239, ; 136: 0x4073e1af => android/text/style/ImageSpan
	i32 1090939588, ; 137: 0x41066ac4 => javax/net/ssl/KeyManagerFactory
	i32 1102400940, ; 138: 0x41b54dac => android/support/v4/app/Fragment
	i32 1102556300, ; 139: 0x41b7ac8c => android/provider/Settings$NameValueTable
	i32 1102620299, ; 140: 0x41b8a68b => android/text/Layout$Alignment
	i32 1105282807, ; 141: 0x41e146f7 => crc64b76f6e8b2d8c8db1/AlertAppCompatDialogFragment
	i32 1117937440, ; 142: 0x42a25f20 => android/view/ViewTreeObserver$OnTouchModeChangeListener
	i32 1142011573, ; 143: 0x4411b6b5 => java/util/Enumeration
	i32 1146395494, ; 144: 0x44549b66 => android/widget/RadioButton
	i32 1149267780, ; 145: 0x44806f44 => java/lang/Cloneable
	i32 1175636112, ; 146: 0x4612c890 => java/lang/ClassNotFoundException
	i32 1177142219, ; 147: 0x4629c3cb => crc6480997b3ef81bf9b2/ZxingActivity
	i32 1182637472, ; 148: 0x467d9da0 => android/support/v7/view/menu/MenuPresenter
	i32 1185273701, ; 149: 0x46a5d765 => android/view/SubMenu
	i32 1196063310, ; 150: 0x474a7a4e => java/lang/Appendable
	i32 1196093578, ; 151: 0x474af08a => android/provider/Settings$System
	i32 1205083900, ; 152: 0x47d41efc => android/animation/ValueAnimator
	i32 1212684324, ; 153: 0x48481824 => android/app/DatePickerDialog
	i32 1227075600, ; 154: 0x4923b010 => javax/security/cert/Certificate
	i32 1244064794, ; 155: 0x4a26ec1a => android/support/v4/content/Loader
	i32 1264345651, ; 156: 0x4b5c6233 => android/support/v4/widget/DrawerLayout$DrawerListener
	i32 1267415633, ; 157: 0x4b8b3a51 => android/os/Vibrator
	i32 1270186925, ; 158: 0x4bb583ad => android/view/Window$Callback
	i32 1270561450, ; 159: 0x4bbb3aaa => java/net/SocketTimeoutException
	i32 1278262609, ; 160: 0x4c30bd51 => android/support/design/widget/BottomSheetDialog
	i32 1298454265, ; 161: 0x4d64d6f9 => java/lang/Throwable
	i32 1318092535, ; 162: 0x4e907ef7 => android/widget/Filterable
	i32 1323697755, ; 163: 0x4ee6065b => javax/net/ssl/SSLContext
	i32 1335098580, ; 164: 0x4f93fcd4 => java/util/Collection
	i32 1340347874, ; 165: 0x4fe415e2 => android/graphics/Paint
	i32 1368421702, ; 166: 0x51907546 => java/lang/ClassCastException
	i32 1370891736, ; 167: 0x51b625d8 => android/graphics/PorterDuff$Mode
	i32 1373631042, ; 168: 0x51dff242 => javax/net/ssl/KeyManager
	i32 1383547335, ; 169: 0x527741c7 => android/os/Message
	i32 1386757446, ; 170: 0x52a83d46 => android/content/ComponentName
	i32 1388906712, ; 171: 0x52c908d8 => java/lang/Comparable
	i32 1404166657, ; 172: 0x53b1e201 => android/support/v4/internal/view/SupportMenu
	i32 1415978247, ; 173: 0x54661d07 => android/content/pm/ApplicationInfo
	i32 1421921975, ; 174: 0x54c0ceb7 => android/support/design/widget/Snackbar
	i32 1424548067, ; 175: 0x54e8e0e3 => android/graphics/BitmapFactory$Options
	i32 1425790689, ; 176: 0x54fbd6e1 => java/lang/SecurityException
	i32 1428048664, ; 177: 0x551e4b18 => java/net/HttpURLConnection
	i32 1429796945, ; 178: 0x5538f851 => android/graphics/RectF
	i32 1433059198, ; 179: 0x556abf7e => android/view/ViewManager
	i32 1444123905, ; 180: 0x56139501 => android/support/v7/app/ActionBar$OnNavigationListener
	i32 1447309214, ; 181: 0x56442f9e => android/widget/LinearLayout$LayoutParams
	i32 1456915355, ; 182: 0x56d6c39b => crc646957603ea1820544/MediaPickerActivity
	i32 1457311873, ; 183: 0x56dcd081 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i32 1457582199, ; 184: 0x56e0f077 => android/text/SpannableStringInternal
	i32 1459844378, ; 185: 0x5703751a => android/widget/ProgressBar
	i32 1464492834, ; 186: 0x574a6322 => mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor
	i32 1468165286, ; 187: 0x57826ca6 => android/support/v4/view/ActionProvider$SubUiVisibilityListener
	i32 1475682991, ; 188: 0x57f522af => java/util/HashMap
	i32 1485846485, ; 189: 0x589037d5 => android/support/v4/app/FragmentManager
	i32 1489594546, ; 190: 0x58c968b2 => java/nio/channels/spi/AbstractInterruptibleChannel
	i32 1506774891, ; 191: 0x59cf8f6b => android/widget/Button
	i32 1517772377, ; 192: 0x5a775e59 => crc64b76f6e8b2d8c8db1/PromptAppCompatDialogFragment
	i32 1544613420, ; 193: 0x5c10ee2c => java/io/File
	i32 1544995509, ; 194: 0x5c16c2b5 => android/arch/lifecycle/LiveData
	i32 1546872752, ; 195: 0x5c3367b0 => android/support/v7/app/ActionBarDrawerToggle$DelegateProvider
	i32 1548306256, ; 196: 0x5c494750 => android/view/WindowManager$LayoutParams
	i32 1550531333, ; 197: 0x5c6b3b05 => android/content/ContentProvider
	i32 1560011070, ; 198: 0x5cfbe13e => android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback
	i32 1573833883, ; 199: 0x5dcecc9b => android/app/AlertDialog
	i32 1584672329, ; 200: 0x5e742e49 => android/view/Display
	i32 1586851388, ; 201: 0x5e956e3c => android/os/Handler
	i32 1595725058, ; 202: 0x5f1cd502 => java/nio/channels/ByteChannel
	i32 1605789814, ; 203: 0x5fb66876 => java/nio/channels/ScatteringByteChannel
	i32 1637959351, ; 204: 0x61a146b7 => java/security/Principal
	i32 1641608421, ; 205: 0x61d8f4e5 => android/os/StrictMode$VmPolicy
	i32 1644876130, ; 206: 0x620ad162 => android/graphics/Matrix
	i32 1646348278, ; 207: 0x622147f6 => android/view/View
	i32 1649695927, ; 208: 0x62545cb7 => java/lang/RuntimeException
	i32 1650608735, ; 209: 0x62624a5f => android/hardware/Camera
	i32 1653473656, ; 210: 0x628e0178 => android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator
	i32 1657134862, ; 211: 0x62c5df0e => java/lang/IndexOutOfBoundsException
	i32 1672498570, ; 212: 0x63b04d8a => android/support/v4/app/LoaderManager$LoaderCallbacks
	i32 1680835779, ; 213: 0x642f84c3 => java/lang/Byte
	i32 1687579136, ; 214: 0x64966a00 => android/widget/CheckBox
	i32 1691864555, ; 215: 0x64d7cdeb => android/support/v4/content/FileProvider
	i32 1699467861, ; 216: 0x654bd255 => android/widget/CompoundButton
	i32 1707466195, ; 217: 0x65c5ddd3 => mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor
	i32 1718265030, ; 218: 0x666aa4c6 => java/lang/Character
	i32 1719663072, ; 219: 0x667ff9e0 => android/support/v4/app/DialogFragment
	i32 1724095342, ; 220: 0x66c39b6e => crc6404bb51e1aa2e65d1/ListViewAdapterWithLayout
	i32 1729659134, ; 221: 0x671880fe => android/view/MenuInflater
	i32 1733881762, ; 222: 0x6758efa2 => android/content/ClipData$Item
	i32 1740814247, ; 223: 0x67c2b7a7 => android/widget/FrameLayout
	i32 1740929322, ; 224: 0x67c4792a => android/os/IInterface
	i32 1746572858, ; 225: 0x681a963a => android/app/Application$ActivityLifecycleCallbacks
	i32 1755285137, ; 226: 0x689f8691 => java/util/Random
	i32 1756909581, ; 227: 0x68b8500d => android/text/Layout
	i32 1758107513, ; 228: 0x68ca9779 => crc64b76f6e8b2d8c8db1/AbstractAppCompatDialogFragment_1
	i32 1758490869, ; 229: 0x68d070f5 => android/os/BaseBundle
	i32 1761245836, ; 230: 0x68fa7a8c => android/content/ClipData
	i32 1771248925, ; 231: 0x69931d1d => android/support/v4/app/FragmentActivity
	i32 1772705556, ; 232: 0x69a95714 => android/graphics/Point
	i32 1775355160, ; 233: 0x69d1c518 => android/content/res/ColorStateList
	i32 1790236887, ; 234: 0x6ab4d8d7 => android/text/Spanned
	i32 1801278638, ; 235: 0x6b5d54ae => android/support/design/widget/SwipeDismissBehavior$OnDismissListener
	i32 1807220671, ; 236: 0x6bb7ffbf => android/view/View$OnClickListener
	i32 1828773851, ; 237: 0x6d00dfdb => java/security/cert/CertificateFactory
	i32 1844886828, ; 238: 0x6df6bd2c => mono/android/content/DialogInterface_OnKeyListenerImplementor
	i32 1851730788, ; 239: 0x6e5f2b64 => java/lang/Runnable
	i32 1855628473, ; 240: 0x6e9aa4b9 => mono/android/text/TextWatcherImplementor
	i32 1859010077, ; 241: 0x6ece3e1d => android/widget/LinearLayout
	i32 1866304377, ; 242: 0x6f3d8b79 => android/view/SearchEvent
	i32 1877568311, ; 243: 0x6fe96b37 => mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor
	i32 1884960853, ; 244: 0x705a3855 => android/content/DialogInterface$OnMultiChoiceClickListener
	i32 1889248750, ; 245: 0x709ba5ee => java/nio/channels/InterruptibleChannel
	i32 1904678085, ; 246: 0x718714c5 => android/text/style/ForegroundColorSpan
	i32 1923639542, ; 247: 0x72a868f6 => android/content/pm/ComponentInfo
	i32 1943778051, ; 248: 0x73dbb303 => android/widget/AdapterView$OnItemSelectedListener
	i32 1944129628, ; 249: 0x73e1105c => java/io/OutputStream
	i32 1950441461, ; 250: 0x74415ff5 => android/text/ParcelableSpan
	i32 1976530008, ; 251: 0x75cf7458 => android/support/v7/view/ActionMode
	i32 1977499375, ; 252: 0x75de3eef => android/support/v4/view/ViewPropertyAnimatorCompat
	i32 1985929388, ; 253: 0x765ee0ac => android/app/Activity
	i32 1987841337, ; 254: 0x767c0d39 => java/lang/Boolean
	i32 1990610968, ; 255: 0x76a65018 => android/widget/AdapterView$OnItemClickListener
	i32 2007300416, ; 256: 0x77a4f940 => crc6480997b3ef81bf9b2/ZXingScannerFragment
	i32 2008064836, ; 257: 0x77b0a344 => android/content/Intent
	i32 2014726135, ; 258: 0x781647f7 => android/view/accessibility/AccessibilityRecord
	i32 2026007939, ; 259: 0x78c26d83 => android/support/v7/app/AlertDialog$Builder
	i32 2026619833, ; 260: 0x78cbc3b9 => android/widget/FrameLayout$LayoutParams
	i32 2027782872, ; 261: 0x78dd82d8 => android/view/ContextThemeWrapper
	i32 2031450615, ; 262: 0x791579f7 => android/widget/AdapterView
	i32 2036451901, ; 263: 0x7961ca3d => crc64b76f6e8b2d8c8db1/TimeAppCompatDialogFragment
	i32 2036556174, ; 264: 0x7963618e => android/content/DialogInterface
	i32 2039728241, ; 265: 0x7993c871 => android/widget/TimePicker
	i32 2043030513, ; 266: 0x79c62bf1 => android/os/Parcelable$Creator
	i32 2057114326, ; 267: 0x7a9d12d6 => java/security/cert/X509Extension
	i32 2061721420, ; 268: 0x7ae35f4c => android/database/CharArrayBuffer
	i32 2063985753, ; 269: 0x7b05ec59 => android/view/animation/Animation
	i32 2064723667, ; 270: 0x7b112ed3 => android/widget/SpinnerAdapter
	i32 2073337312, ; 271: 0x7b949de0 => android/app/AlertDialog$Builder
	i32 2074243551, ; 272: 0x7ba271df => android/support/v4/app/FragmentManager$BackStackEntry
	i32 2079753938, ; 273: 0x7bf686d2 => android/content/IntentSender
	i32 2080685156, ; 274: 0x7c04bc64 => java/security/SecureRandom
	i32 2087345132, ; 275: 0x7c6a5bec => android/support/design/widget/SwipeDismissBehavior
	i32 2090823071, ; 276: 0x7c9f6d9f => android/os/Environment
	i32 2099081960, ; 277: 0x7d1d72e8 => android/support/v4/app/LoaderManager
	i32 2114237978, ; 278: 0x7e04b61a => android/content/res/Configuration
	i32 2123880745, ; 279: 0x7e97d929 => android/content/ContentValues
	i32 2125153170, ; 280: 0x7eab4392 => mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor
	i32 2131480051, ; 281: 0x7f0bcdf3 => android/animation/AnimatorListenerAdapter
	i32 2183290666, ; 282: 0x82225f2a => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i32 2208460083, ; 283: 0x83a26d33 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i32 2269094561, ; 284: 0x873fa2a1 => java/net/UnknownServiceException
	i32 2270923754, ; 285: 0x875b8bea => java/net/Proxy$Type
	i32 2282367141, ; 286: 0x880a28a5 => android/support/v4/content/PermissionChecker
	i32 2284656609, ; 287: 0x882d17e1 => android/app/Application
	i32 2316381801, ; 288: 0x8a112e69 => java/lang/reflect/Type
	i32 2320084559, ; 289: 0x8a49ae4f => crc64b87e06cf702046da/Adapter
	i32 2322542372, ; 290: 0x8a6f2f24 => android/support/design/widget/CoordinatorLayout$Behavior
	i32 2325674508, ; 291: 0x8a9efa0c => java/lang/Iterable
	i32 2338514323, ; 292: 0x8b62e593 => crc6480997b3ef81bf9b2/ZxingOverlayView
	i32 2346390435, ; 293: 0x8bdb13a3 => android/content/pm/ActivityInfo
	i32 2361905000, ; 294: 0x8cc7cf68 => android/support/v7/graphics/drawable/DrawerArrowDrawable
	i32 2363729366, ; 295: 0x8ce3a5d6 => java/lang/Enum
	i32 2404057846, ; 296: 0x8f4b02f6 => android/app/PendingIntent
	i32 2405999645, ; 297: 0x8f68a41d => android/graphics/Shader
	i32 2409724717, ; 298: 0x8fa17b2d => android/util/TypedValue
	i32 2410638029, ; 299: 0x8faf6acd => android/support/v4/app/ActivityCompat$PermissionCompatDelegate
	i32 2411404453, ; 300: 0x8fbb1ca5 => java/lang/UnsupportedOperationException
	i32 2415973728, ; 301: 0x9000d560 => android/content/pm/PackageInstaller$SessionParams
	i32 2420104680, ; 302: 0x903fdde8 => android/content/res/Resources$Theme
	i32 2443438835, ; 303: 0x91a3eaf3 => java/net/SocketException
	i32 2462006028, ; 304: 0x92bf3b0c => android/content/ComponentCallbacks
	i32 2493299211, ; 305: 0x949cba0b => android/text/StaticLayout
	i32 2502314358, ; 306: 0x95264976 => mono/android/view/View_OnLongClickListenerImplementor
	i32 2520212266, ; 307: 0x9637632a => java/nio/channels/ReadableByteChannel
	i32 2532846927, ; 308: 0x96f82d4f => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i32 2540217317, ; 309: 0x9768a3e5 => crc6480997b3ef81bf9b2/ZXingSurfaceView
	i32 2541780716, ; 310: 0x97807eec => android/view/ContextMenu$ContextMenuInfo
	i32 2555007104, ; 311: 0x984a5080 => android/view/View$OnLongClickListener
	i32 2558143838, ; 312: 0x987a2d5e => java/io/FileInputStream
	i32 2561967928, ; 313: 0x98b48738 => java/security/cert/X509Certificate
	i32 2565590497, ; 314: 0x98ebcde1 => android/app/DatePickerDialog$OnDateSetListener
	i32 2586771995, ; 315: 0x9a2f021b => android/content/DialogInterface$OnKeyListener
	i32 2593423670, ; 316: 0x9a948136 => android/support/v7/view/menu/MenuBuilder$Callback
	i32 2594014749, ; 317: 0x9a9d861d => android/hardware/Camera$PreviewCallback
	i32 2594241228, ; 318: 0x9aa0facc => android/widget/BaseAdapter
	i32 2615894356, ; 319: 0x9beb6154 => android/support/v4/internal/view/SupportMenuItem
	i32 2620251611, ; 320: 0x9c2ddddb => android/support/v4/view/NestedScrollingParent
	i32 2628279754, ; 321: 0x9ca85dca => android/content/DialogInterface$OnCancelListener
	i32 2631544208, ; 322: 0x9cda2d90 => android/widget/Filter$FilterListener
	i32 2637159311, ; 323: 0x9d2fdb8f => android/content/pm/PackageManager
	i32 2654672461, ; 324: 0x9e3b164d => java/io/InterruptedIOException
	i32 2664928003, ; 325: 0x9ed79303 => javax/net/ssl/HostnameVerifier
	i32 2681209703, ; 326: 0x9fd00367 => android/widget/Adapter
	i32 2681988174, ; 327: 0x9fdbe44e => android/view/MotionEvent
	i32 2687778660, ; 328: 0xa0343f64 => android/widget/TextView
	i32 2692535938, ; 329: 0xa07cd682 => android/util/Log
	i32 2710910562, ; 330: 0xa1953662 => android/widget/Checkable
	i32 2721599187, ; 331: 0xa2384ed3 => android/graphics/drawable/Drawable
	i32 2741050037, ; 332: 0xa3611ab5 => java/net/ProxySelector
	i32 2753284754, ; 333: 0xa41bca92 => android/text/style/UpdateAppearance
	i32 2755748727, ; 334: 0xa4416377 => android/text/Spannable
	i32 2762684487, ; 335: 0xa4ab3847 => java/lang/Float
	i32 2763721185, ; 336: 0xa4bb09e1 => android/media/MediaScannerConnection
	i32 2766104862, ; 337: 0xa4df691e => android/support/design/widget/BaseTransientBottomBar$BaseCallback
	i32 2774247466, ; 338: 0xa55ba82a => crc64b76f6e8b2d8c8db1/ActionSheetAppCompatDialogFragment
	i32 2796816157, ; 339: 0xa6b4071d => android/text/format/DateFormat
	i32 2810990278, ; 340: 0xa78c4ec6 => crc64b76f6e8b2d8c8db1/ConfirmAppCompatDialogFragment
	i32 2815615939, ; 341: 0xa7d2e3c3 => android/os/Build
	i32 2817798317, ; 342: 0xa7f430ad => android/support/v7/view/menu/MenuItemImpl
	i32 2829196880, ; 343: 0xa8a21e50 => android/text/method/TransformationMethod
	i32 2836478263, ; 344: 0xa9113937 => android/widget/ScrollView
	i32 2837435745, ; 345: 0xa91fd561 => android/view/DragEvent
	i32 2848829992, ; 346: 0xa9cdb228 => android/support/v4/view/ActionProvider
	i32 2853892847, ; 347: 0xaa1af2ef => android/hardware/Camera$Area
	i32 2858765195, ; 348: 0xaa654b8b => android/support/v4/view/ViewPropertyAnimatorListener
	i32 2859587555, ; 349: 0xaa71d7e3 => android/arch/lifecycle/LifecycleOwner
	i32 2866910344, ; 350: 0xaae19488 => android/view/ActionMode
	i32 2871105967, ; 351: 0xab2199af => android/support/v7/app/AppCompatActivity
	i32 2872704101, ; 352: 0xab39fc65 => java/lang/System
	i32 2873107855, ; 353: 0xab40258f => android/content/pm/PackageInfo
	i32 2895048388, ; 354: 0xac8eeec4 => android/content/ServiceConnection
	i32 2895793710, ; 355: 0xac9a4e2e => android/hardware/Camera$Size
	i32 2917163057, ; 356: 0xade06031 => android/view/SurfaceHolder
	i32 2918613155, ; 357: 0xadf680a3 => android/content/DialogInterface$OnClickListener
	i32 2932874700, ; 358: 0xaed01dcc => android/view/InputEvent
	i32 2933762856, ; 359: 0xaeddab28 => android/util/AttributeSet
	i32 2940225378, ; 360: 0xaf404762 => android/support/design/widget/BaseTransientBottomBar
	i32 2942792700, ; 361: 0xaf6773fc => java/lang/Exception
	i32 2944806563, ; 362: 0xaf862ea3 => android/widget/ListView
	i32 2954302002, ; 363: 0xb0171232 => android/support/v4/app/FragmentTransaction
	i32 2966164408, ; 364: 0xb0cc13b8 => android/text/method/PasswordTransformationMethod
	i32 2966961387, ; 365: 0xb0d83ceb => android/support/v7/view/ActionMode$Callback
	i32 2980510762, ; 366: 0xb1a6fc2a => mono/android/runtime/JavaArray
	i32 2983720033, ; 367: 0xb1d7f461 => mono/android/TypeManager
	i32 2985454904, ; 368: 0xb1f26d38 => android/text/method/DigitsKeyListener
	i32 2992476535, ; 369: 0xb25d9177 => android/text/style/UpdateLayout
	i32 3011322120, ; 370: 0xb37d2108 => android/view/Surface
	i32 3023394421, ; 371: 0xb4355675 => android/text/SpannableString
	i32 3032808825, ; 372: 0xb4c4fd79 => java/io/StringWriter
	i32 3069397682, ; 373: 0xb6f34ab2 => android/support/design/widget/BaseTransientBottomBar$Behavior
	i32 3077006502, ; 374: 0xb76764a6 => android/arch/lifecycle/Lifecycle$State
	i32 3087255038, ; 375: 0xb803c5fe => android/preference/PreferenceManager
	i32 3120301422, ; 376: 0xb9fc056e => android/support/v7/app/ActionBar$LayoutParams
	i32 3122685949, ; 377: 0xba2067fd => mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor
	i32 3147069248, ; 378: 0xbb947740 => android/hardware/Camera$Parameters
	i32 3148065494, ; 379: 0xbba3aad6 => android/animation/ValueAnimator$AnimatorUpdateListener
	i32 3161705340, ; 380: 0xbc73cb7c => crc64b87e06cf702046da/ChooseActivity
	i32 3173395525, ; 381: 0xbd262c45 => android/os/IBinder
	i32 3178304415, ; 382: 0xbd71139f => android/view/inputmethod/InputMethodManager
	i32 3183271055, ; 383: 0xbdbcdc8f => android/view/ActionMode$Callback
	i32 3214744068, ; 384: 0xbf9d1a04 => android/view/WindowManager
	i32 3217008406, ; 385: 0xbfbfa716 => android/hardware/Camera$AutoFocusCallback
	i32 3230263057, ; 386: 0xc089e711 => mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor
	i32 3264154243, ; 387: 0xc28f0a83 => java/io/Flushable
	i32 3281925794, ; 388: 0xc39e36a2 => android/view/MenuItem
	i32 3290291610, ; 389: 0xc41ddd9a => android/view/ViewPropertyAnimator
	i32 3293405166, ; 390: 0xc44d5fee => android/support/design/widget/CoordinatorLayout
	i32 3300906352, ; 391: 0xc4bfd570 => javax/net/ssl/SSLSession
	i32 3319735188, ; 392: 0xc5df2394 => java/net/Proxy
	i32 3333169487, ; 393: 0xc6ac214f => android/support/v4/content/Loader$OnLoadCanceledListener
	i32 3361157296, ; 394: 0xc85730b0 => android/media/MediaScannerConnection$OnScanCompletedListener
	i32 3370525145, ; 395: 0xc8e621d9 => android/support/design/snackbar/ContentViewCallback
	i32 3379688415, ; 396: 0xc971f3df => android/text/Editable
	i32 3397817114, ; 397: 0xca86931a => android/widget/ArrayAdapter
	i32 3405310121, ; 398: 0xcaf8e8a9 => crc6404bb51e1aa2e65d1/ListViewAdapterWithNoLayout
	i32 3409419575, ; 399: 0xcb379d37 => javax/net/ssl/HttpsURLConnection
	i32 3411895572, ; 400: 0xcb5d6514 => android/support/v7/view/menu/MenuView
	i32 3423467887, ; 401: 0xcc0df96f => java/lang/Number
	i32 3427035968, ; 402: 0xcc446b40 => xamarin/android/net/OldAndroidSSLSocketFactory
	i32 3430868172, ; 403: 0xcc7ee4cc => android/content/SharedPreferences
	i32 3438610975, ; 404: 0xccf50a1f => crc6457e461602e32e680/ProgressWheel
	i32 3518567795, ; 405: 0xd1b91573 => crc64b76f6e8b2d8c8db1/LoginAppCompatDialogFragment
	i32 3519931621, ; 406: 0xd1cde4e5 => java/net/URLConnection
	i32 3540146204, ; 407: 0xd302581c => android/text/style/DynamicDrawableSpan
	i32 3549151004, ; 408: 0xd38bbf1c => android/provider/Settings
	i32 3558350616, ; 409: 0xd4181f18 => android/support/v4/app/TaskStackBuilder$SupportParentable
	i32 3569483764, ; 410: 0xd4c1fff4 => android/support/v4/view/ViewPropertyAnimatorUpdateListener
	i32 3570179016, ; 411: 0xd4cc9bc8 => android/content/ActivityNotFoundException
	i32 3575639631, ; 412: 0xd51fee4f => crc64b76f6e8b2d8c8db1/BottomSheetDialogFragment
	i32 3576242387, ; 413: 0xd52920d3 => android/runtime/JavaProxyThrowable
	i32 3584975789, ; 414: 0xd5ae63ad => crc64b76f6e8b2d8c8db1/DateAppCompatDialogFragment
	i32 3597654493, ; 415: 0xd66fd9dd => android/widget/AbsListView
	i32 3665774669, ; 416: 0xda7f484d => android/view/LayoutInflater
	i32 3666243682, ; 417: 0xda867062 => java/lang/String
	i32 3669061717, ; 418: 0xdab17055 => java/net/InetSocketAddress
	i32 3673444347, ; 419: 0xdaf44ffb => android/view/accessibility/AccessibilityEvent
	i32 3683323802, ; 420: 0xdb8b0f9a => mono/android/runtime/JavaObject
	i32 3684070586, ; 421: 0xdb9674ba => android/view/ActionProvider
	i32 3698769169, ; 422: 0xdc76bd11 => android/text/SpannableStringBuilder
	i32 3701331277, ; 423: 0xdc9dd54d => android/graphics/Paint$Style
	i32 3702230909, ; 424: 0xdcab8f7d => java/lang/Double
	i32 3702422870, ; 425: 0xdcae7d56 => android/view/ViewTreeObserver$OnPreDrawListener
	i32 3711529970, ; 426: 0xdd3973f2 => android/text/style/MetricAffectingSpan
	i32 3715861037, ; 427: 0xdd7b8a2d => android/os/Build$VERSION
	i32 3721088312, ; 428: 0xddcb4d38 => android/text/NoCopySpan
	i32 3722843854, ; 429: 0xdde616ce => javax/net/SocketFactory
	i32 3722942310, ; 430: 0xdde79766 => android/text/method/NumberKeyListener
	i32 3726680736, ; 431: 0xde20a2a0 => java/net/ProtocolException
	i32 3728432962, ; 432: 0xde3b5f42 => android/support/v4/content/Loader$OnLoadCompleteListener
	i32 3734205073, ; 433: 0xde937291 => android/support/v4/view/ActionProvider$VisibilityListener
	i32 3746020715, ; 434: 0xdf47bd6b => android/graphics/drawable/Drawable$Callback
	i32 3759929762, ; 435: 0xe01bf9a2 => android/graphics/Bitmap
	i32 3763853270, ; 436: 0xe057d7d6 => android/view/Window
	i32 3778705802, ; 437: 0xe13a798a => android/content/pm/PackageInstaller
	i32 3816724193, ; 438: 0xe37e96e1 => android/arch/lifecycle/ViewModelStoreOwner
	i32 3823421666, ; 439: 0xe3e4c8e2 => android/net/Uri
	i32 3846932217, ; 440: 0xe54b86f9 => javax/net/ssl/X509TrustManager
	i32 3861854324, ; 441: 0xe62f3874 => android/support/v7/app/ActionBarDrawerToggle$Delegate
	i32 3872825215, ; 442: 0xe6d69f7f => android/graphics/ColorFilter
	i32 3882570516, ; 443: 0xe76b5314 => java/lang/Class
	i32 3893629743, ; 444: 0xe814132f => android/view/LayoutInflater$Factory2
	i32 3896288302, ; 445: 0xe83ca42e => android/widget/ImageView
	i32 3900581163, ; 446: 0xe87e252b => java/io/InputStream
	i32 3901837667, ; 447: 0xe8915163 => android/text/InputFilter
	i32 3912451735, ; 448: 0xe9334697 => java/security/KeyStore
	i32 3919758710, ; 449: 0xe9a2c576 => android/view/ContextMenu
	i32 3922608828, ; 450: 0xe9ce42bc => android/text/method/MetaKeyKeyListener
	i32 3931120197, ; 451: 0xea502245 => mono/android/content/DialogInterface_OnClickListenerImplementor
	i32 3933245259, ; 452: 0xea708f4b => android/graphics/Rect
	i32 3960999444, ; 453: 0xec180e14 => android/widget/Toast
	i32 3969984744, ; 454: 0xeca128e8 => mono/android/runtime/InputStreamAdapter
	i32 3975001277, ; 455: 0xecedb4bd => javax/net/ssl/SSLSocketFactory
	i32 3982675394, ; 456: 0xed62cdc2 => android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener
	i32 3991247329, ; 457: 0xede599e1 => android/support/v7/app/ActionBar
	i32 3993327007, ; 458: 0xee05559f => android/content/ContextWrapper
	i32 3995406185, ; 459: 0xee250f69 => android/graphics/Canvas
	i32 3998965036, ; 460: 0xee5b5d2c => android/support/design/widget/CoordinatorLayout$LayoutParams
	i32 4020308495, ; 461: 0xefa10a0f => java/lang/Error
	i32 4020474290, ; 462: 0xefa391b2 => android/support/v4/app/SharedElementCallback
	i32 4025067947, ; 463: 0xefe9a9ab => android/webkit/MimeTypeMap
	i32 4030673356, ; 464: 0xf03f31cc => android/app/Dialog
	i32 4030975555, ; 465: 0xf043ce43 => android/view/animation/Interpolator
	i32 4038157564, ; 466: 0xf0b164fc => android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher
	i32 4041302890, ; 467: 0xf0e1636a => crc64b87e06cf702046da/ServerActivity
	i32 4044525863, ; 468: 0xf1129127 => android/content/ComponentCallbacks2
	i32 4050132663, ; 469: 0xf1681eb7 => android/support/v7/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i32 4051772911, ; 470: 0xf18125ef => android/content/Context
	i32 4056674536, ; 471: 0xf1cbf0e8 => java/lang/NoClassDefFoundError
	i32 4059763550, ; 472: 0xf1fb135e => android/os/StrictMode$VmPolicy$Builder
	i32 4066255456, ; 473: 0xf25e2260 => android/util/SparseArray
	i32 4085114189, ; 474: 0xf37de54d => android/view/SurfaceView
	i32 4089459037, ; 475: 0xf3c0315d => java/nio/Buffer
	i32 4098107575, ; 476: 0xf44428b7 => mono/android/view/View_OnClickListenerImplementor
	i32 4101363546, ; 477: 0xf475d75a => java/io/Writer
	i32 4114919749, ; 478: 0xf544b145 => android/support/v7/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i32 4117799665, ; 479: 0xf570a2f1 => android/view/SurfaceHolder$Callback
	i32 4118878202, ; 480: 0xf58117fa => android/os/Looper
	i32 4127266501, ; 481: 0xf60116c5 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i32 4147944661, ; 482: 0xf73c9cd5 => android/arch/lifecycle/ViewModelStore
	i32 4148593869, ; 483: 0xf74684cd => javax/net/ssl/TrustManagerFactory
	i32 4157808693, ; 484: 0xf7d32035 => java/io/IOException
	i32 4163895590, ; 485: 0xf8300126 => android/support/v7/app/ActionBar$TabListener
	i32 4166165970, ; 486: 0xf852a5d2 => android/text/TextWatcher
	i32 4203502565, ; 487: 0xfa8c5be5 => android/graphics/Bitmap$CompressFormat
	i32 4206912118, ; 488: 0xfac06276 => android/support/v7/app/AppCompatDialog
	i32 4232707919, ; 489: 0xfc49ff4f => java/util/HashSet
	i32 4236355936, ; 490: 0xfc81a960 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i32 4236724582, ; 491: 0xfc874966 => android/os/Parcelable
	i32 4237386260, ; 492: 0xfc916214 => android/view/MenuItem$OnMenuItemClickListener
	i32 4248811056, ; 493: 0xfd3fb630 => android/view/Menu
	i32 4253863534, ; 494: 0xfd8cce6e => android/support/v4/widget/DrawerLayout
	i32 4260025083, ; 495: 0xfdead2fb => android/os/StrictMode
	i32 4266941483, ; 496: 0xfe545c2b => android/support/v7/widget/Toolbar$OnMenuItemClickListener
	i32 4271127433, ; 497: 0xfe943b89 => android/graphics/PorterDuff
	i32 4277523103, ; 498: 0xfef5d29f => java/io/Closeable
	i32 4278949669, ; 499: 0xff0b9725 => android/widget/CompoundButton$OnCheckedChangeListener
	i32 4283932092, ; 500: 0xff579dbc => android/support/v4/app/ActivityCompat
	i32 4293803975 ; 501: 0xffee3fc7 => android/arch/lifecycle/Lifecycle
], align 4

; java_type_names
@__java_type_names.0 = internal constant [57 x i8] c"android/support/v7/graphics/drawable/DrawerArrowDrawable\00", align 1
@__java_type_names.1 = internal constant [35 x i8] c"android/support/v7/app/AlertDialog\00", align 1
@__java_type_names.2 = internal constant [43 x i8] c"android/support/v7/app/AlertDialog$Builder\00", align 1
@__java_type_names.3 = internal constant [78 x i8] c"android/support/v7/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 1
@__java_type_names.4 = internal constant [79 x i8] c"android/support/v7/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 1
@__java_type_names.5 = internal constant [89 x i8] c"android/support/v7/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 1
@__java_type_names.6 = internal constant [33 x i8] c"android/support/v7/app/ActionBar\00", align 1
@__java_type_names.7 = internal constant [46 x i8] c"android/support/v7/app/ActionBar$LayoutParams\00", align 1
@__java_type_names.8 = internal constant [58 x i8] c"android/support/v7/app/ActionBar$OnMenuVisibilityListener\00", align 1
@__java_type_names.9 = internal constant [74 x i8] c"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 1
@__java_type_names.10 = internal constant [54 x i8] c"android/support/v7/app/ActionBar$OnNavigationListener\00", align 1
@__java_type_names.11 = internal constant [37 x i8] c"android/support/v7/app/ActionBar$Tab\00", align 1
@__java_type_names.12 = internal constant [45 x i8] c"android/support/v7/app/ActionBar$TabListener\00", align 1
@__java_type_names.13 = internal constant [45 x i8] c"android/support/v7/app/ActionBarDrawerToggle\00", align 1
@__java_type_names.14 = internal constant [54 x i8] c"android/support/v7/app/ActionBarDrawerToggle$Delegate\00", align 1
@__java_type_names.15 = internal constant [62 x i8] c"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider\00", align 1
@__java_type_names.16 = internal constant [41 x i8] c"android/support/v7/app/AppCompatActivity\00", align 1
@__java_type_names.17 = internal constant [41 x i8] c"android/support/v7/app/AppCompatDelegate\00", align 1
@__java_type_names.18 = internal constant [39 x i8] c"android/support/v7/app/AppCompatDialog\00", align 1
@__java_type_names.19 = internal constant [47 x i8] c"android/support/v7/app/AppCompatDialogFragment\00", align 1
@__java_type_names.20 = internal constant [41 x i8] c"android/support/v7/app/AppCompatCallback\00", align 1
@__java_type_names.21 = internal constant [34 x i8] c"android/support/v7/widget/Toolbar\00", align 1
@__java_type_names.22 = internal constant [67 x i8] c"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 1
@__java_type_names.23 = internal constant [58 x i8] c"android/support/v7/widget/Toolbar$OnMenuItemClickListener\00", align 1
@__java_type_names.24 = internal constant [74 x i8] c"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 1
@__java_type_names.25 = internal constant [39 x i8] c"android/support/v7/widget/DecorToolbar\00", align 1
@__java_type_names.26 = internal constant [52 x i8] c"android/support/v7/widget/ScrollingTabContainerView\00", align 1
@__java_type_names.27 = internal constant [75 x i8] c"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 1
@__java_type_names.28 = internal constant [35 x i8] c"android/support/v7/view/ActionMode\00", align 1
@__java_type_names.29 = internal constant [44 x i8] c"android/support/v7/view/ActionMode$Callback\00", align 1
@__java_type_names.30 = internal constant [41 x i8] c"android/support/v7/view/menu/MenuBuilder\00", align 1
@__java_type_names.31 = internal constant [50 x i8] c"android/support/v7/view/menu/MenuBuilder$Callback\00", align 1
@__java_type_names.32 = internal constant [52 x i8] c"android/support/v7/view/menu/MenuPresenter$Callback\00", align 1
@__java_type_names.33 = internal constant [43 x i8] c"android/support/v7/view/menu/MenuPresenter\00", align 1
@__java_type_names.34 = internal constant [38 x i8] c"android/support/v7/view/menu/MenuView\00", align 1
@__java_type_names.35 = internal constant [42 x i8] c"android/support/v7/view/menu/MenuItemImpl\00", align 1
@__java_type_names.36 = internal constant [44 x i8] c"android/support/v7/view/menu/SubMenuBuilder\00", align 1
@__java_type_names.37 = internal constant [50 x i8] c"crc6404bb51e1aa2e65d1/ListViewAdapterWithNoLayout\00", align 1
@__java_type_names.38 = internal constant [48 x i8] c"crc6404bb51e1aa2e65d1/ListViewAdapterWithLayout\00", align 1
@__java_type_names.39 = internal constant [43 x i8] c"android/arch/lifecycle/ViewModelStoreOwner\00", align 1
@__java_type_names.40 = internal constant [38 x i8] c"android/arch/lifecycle/ViewModelStore\00", align 1
@__java_type_names.41 = internal constant [55 x i8] c"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener\00", align 1
@__java_type_names.42 = internal constant [32 x i8] c"xamarin/essentials/fileProvider\00", align 1
@__java_type_names.43 = internal constant [47 x i8] c"xamarin/android/net/OldAndroidSSLSocketFactory\00", align 1
@__java_type_names.44 = internal constant [32 x i8] c"javax/security/cert/Certificate\00", align 1
@__java_type_names.45 = internal constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 1
@__java_type_names.46 = internal constant [24 x i8] c"javax/net/SocketFactory\00", align 1
@__java_type_names.47 = internal constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 1
@__java_type_names.48 = internal constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 1
@__java_type_names.49 = internal constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 1
@__java_type_names.50 = internal constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 1
@__java_type_names.51 = internal constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 1
@__java_type_names.52 = internal constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 1
@__java_type_names.53 = internal constant [31 x i8] c"javax/net/ssl/X509TrustManager\00", align 1
@__java_type_names.54 = internal constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 1
@__java_type_names.55 = internal constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 1
@__java_type_names.56 = internal constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 1
@__java_type_names.57 = internal constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 1
@__java_type_names.58 = internal constant [27 x i8] c"android/webkit/MimeTypeMap\00", align 1
@__java_type_names.59 = internal constant [28 x i8] c"android/provider/MediaStore\00", align 1
@__java_type_names.60 = internal constant [35 x i8] c"android/provider/MediaStore$Images\00", align 1
@__java_type_names.61 = internal constant [41 x i8] c"android/provider/MediaStore$Images$Media\00", align 1
@__java_type_names.62 = internal constant [26 x i8] c"android/provider/Settings\00", align 1
@__java_type_names.63 = internal constant [41 x i8] c"android/provider/Settings$NameValueTable\00", align 1
@__java_type_names.64 = internal constant [33 x i8] c"android/provider/Settings$System\00", align 1
@__java_type_names.65 = internal constant [33 x i8] c"android/database/CharArrayBuffer\00", align 1
@__java_type_names.66 = internal constant [33 x i8] c"android/database/ContentObserver\00", align 1
@__java_type_names.67 = internal constant [33 x i8] c"android/database/DataSetObserver\00", align 1
@__java_type_names.68 = internal constant [24 x i8] c"android/database/Cursor\00", align 1
@__java_type_names.69 = internal constant [27 x i8] c"android/widget/AbsListView\00", align 1
@__java_type_names.70 = internal constant [27 x i8] c"android/widget/AdapterView\00", align 1
@__java_type_names.71 = internal constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 1
@__java_type_names.72 = internal constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 1
@__java_type_names.73 = internal constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 1
@__java_type_names.74 = internal constant [28 x i8] c"android/widget/ArrayAdapter\00", align 1
@__java_type_names.75 = internal constant [27 x i8] c"android/widget/BaseAdapter\00", align 1
@__java_type_names.76 = internal constant [26 x i8] c"android/widget/DatePicker\00", align 1
@__java_type_names.77 = internal constant [48 x i8] c"android/widget/DatePicker$OnDateChangedListener\00", align 1
@__java_type_names.78 = internal constant [24 x i8] c"android/widget/TextView\00", align 1
@__java_type_names.79 = internal constant [22 x i8] c"android/widget/Button\00", align 1
@__java_type_names.80 = internal constant [24 x i8] c"android/widget/CheckBox\00", align 1
@__java_type_names.81 = internal constant [30 x i8] c"android/widget/CompoundButton\00", align 1
@__java_type_names.82 = internal constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 1
@__java_type_names.83 = internal constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 1
@__java_type_names.84 = internal constant [24 x i8] c"android/widget/EditText\00", align 1
@__java_type_names.85 = internal constant [22 x i8] c"android/widget/Filter\00", align 1
@__java_type_names.86 = internal constant [37 x i8] c"android/widget/Filter$FilterListener\00", align 1
@__java_type_names.87 = internal constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@__java_type_names.88 = internal constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 1
@__java_type_names.89 = internal constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 1
@__java_type_names.90 = internal constant [23 x i8] c"android/widget/Adapter\00", align 1
@__java_type_names.91 = internal constant [25 x i8] c"android/widget/Checkable\00", align 1
@__java_type_names.92 = internal constant [26 x i8] c"android/widget/Filterable\00", align 1
@__java_type_names.93 = internal constant [27 x i8] c"android/widget/ListAdapter\00", align 1
@__java_type_names.94 = internal constant [25 x i8] c"android/widget/ImageView\00", align 1
@__java_type_names.95 = internal constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 1
@__java_type_names.96 = internal constant [36 x i8] c"android/widget/ThemedSpinnerAdapter\00", align 1
@__java_type_names.97 = internal constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@__java_type_names.98 = internal constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 1
@__java_type_names.99 = internal constant [24 x i8] c"android/widget/ListView\00", align 1
@__java_type_names.100 = internal constant [27 x i8] c"android/widget/ProgressBar\00", align 1
@__java_type_names.101 = internal constant [27 x i8] c"android/widget/RadioButton\00", align 1
@__java_type_names.102 = internal constant [30 x i8] c"android/widget/RelativeLayout\00", align 1
@__java_type_names.103 = internal constant [26 x i8] c"android/widget/ScrollView\00", align 1
@__java_type_names.104 = internal constant [26 x i8] c"android/widget/TimePicker\00", align 1
@__java_type_names.105 = internal constant [21 x i8] c"android/widget/Toast\00", align 1
@__java_type_names.106 = internal constant [18 x i8] c"android/view/View\00", align 1
@__java_type_names.107 = internal constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@__java_type_names.108 = internal constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@__java_type_names.109 = internal constant [46 x i8] c"android/view/View$OnCreateContextMenuListener\00", align 1
@__java_type_names.110 = internal constant [38 x i8] c"android/view/View$OnLongClickListener\00", align 1
@__java_type_names.111 = internal constant [54 x i8] c"mono/android/view/View_OnLongClickListenerImplementor\00", align 1
@__java_type_names.112 = internal constant [22 x i8] c"android/view/KeyEvent\00", align 1
@__java_type_names.113 = internal constant [31 x i8] c"android/view/KeyEvent$Callback\00", align 1
@__java_type_names.114 = internal constant [28 x i8] c"android/view/LayoutInflater\00", align 1
@__java_type_names.115 = internal constant [36 x i8] c"android/view/LayoutInflater$Factory\00", align 1
@__java_type_names.116 = internal constant [37 x i8] c"android/view/LayoutInflater$Factory2\00", align 1
@__java_type_names.117 = internal constant [25 x i8] c"android/view/MotionEvent\00", align 1
@__java_type_names.118 = internal constant [30 x i8] c"android/view/ViewTreeObserver\00", align 1
@__java_type_names.119 = internal constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 1
@__java_type_names.120 = internal constant [48 x i8] c"android/view/ViewTreeObserver$OnPreDrawListener\00", align 1
@__java_type_names.121 = internal constant [56 x i8] c"android/view/ViewTreeObserver$OnTouchModeChangeListener\00", align 1
@__java_type_names.122 = internal constant [20 x i8] c"android/view/Window\00", align 1
@__java_type_names.123 = internal constant [29 x i8] c"android/view/Window$Callback\00", align 1
@__java_type_names.124 = internal constant [24 x i8] c"android/view/ActionMode\00", align 1
@__java_type_names.125 = internal constant [33 x i8] c"android/view/ActionMode$Callback\00", align 1
@__java_type_names.126 = internal constant [28 x i8] c"android/view/ActionProvider\00", align 1
@__java_type_names.127 = internal constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@__java_type_names.128 = internal constant [21 x i8] c"android/view/Display\00", align 1
@__java_type_names.129 = internal constant [23 x i8] c"android/view/DragEvent\00", align 1
@__java_type_names.130 = internal constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 1
@__java_type_names.131 = internal constant [25 x i8] c"android/view/ContextMenu\00", align 1
@__java_type_names.132 = internal constant [18 x i8] c"android/view/Menu\00", align 1
@__java_type_names.133 = internal constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 1
@__java_type_names.134 = internal constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 1
@__java_type_names.135 = internal constant [22 x i8] c"android/view/MenuItem\00", align 1
@__java_type_names.136 = internal constant [24 x i8] c"android/view/InputEvent\00", align 1
@__java_type_names.137 = internal constant [21 x i8] c"android/view/SubMenu\00", align 1
@__java_type_names.138 = internal constant [36 x i8] c"android/view/SurfaceHolder$Callback\00", align 1
@__java_type_names.139 = internal constant [27 x i8] c"android/view/SurfaceHolder\00", align 1
@__java_type_names.140 = internal constant [25 x i8] c"android/view/ViewManager\00", align 1
@__java_type_names.141 = internal constant [24 x i8] c"android/view/ViewParent\00", align 1
@__java_type_names.142 = internal constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 1
@__java_type_names.143 = internal constant [27 x i8] c"android/view/WindowManager\00", align 1
@__java_type_names.144 = internal constant [26 x i8] c"android/view/MenuInflater\00", align 1
@__java_type_names.145 = internal constant [25 x i8] c"android/view/SearchEvent\00", align 1
@__java_type_names.146 = internal constant [21 x i8] c"android/view/Surface\00", align 1
@__java_type_names.147 = internal constant [25 x i8] c"android/view/SurfaceView\00", align 1
@__java_type_names.148 = internal constant [23 x i8] c"android/view/ViewGroup\00", align 1
@__java_type_names.149 = internal constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 1
@__java_type_names.150 = internal constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 1
@__java_type_names.151 = internal constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 1
@__java_type_names.152 = internal constant [33 x i8] c"android/view/animation/Animation\00", align 1
@__java_type_names.153 = internal constant [36 x i8] c"android/view/animation/Interpolator\00", align 1
@__java_type_names.154 = internal constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 1
@__java_type_names.155 = internal constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 1
@__java_type_names.156 = internal constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 1
@__java_type_names.157 = internal constant [52 x i8] c"android/view/accessibility/AccessibilityEventSource\00", align 1
@__java_type_names.158 = internal constant [17 x i8] c"android/util/Log\00", align 1
@__java_type_names.159 = internal constant [28 x i8] c"android/util/DisplayMetrics\00", align 1
@__java_type_names.160 = internal constant [26 x i8] c"android/util/AttributeSet\00", align 1
@__java_type_names.161 = internal constant [25 x i8] c"android/util/SparseArray\00", align 1
@__java_type_names.162 = internal constant [24 x i8] c"android/util/TypedValue\00", align 1
@__java_type_names.163 = internal constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 1
@__java_type_names.164 = internal constant [22 x i8] c"android/text/Editable\00", align 1
@__java_type_names.165 = internal constant [22 x i8] c"android/text/GetChars\00", align 1
@__java_type_names.166 = internal constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 1
@__java_type_names.167 = internal constant [25 x i8] c"android/text/InputFilter\00", align 1
@__java_type_names.168 = internal constant [24 x i8] c"android/text/NoCopySpan\00", align 1
@__java_type_names.169 = internal constant [28 x i8] c"android/text/ParcelableSpan\00", align 1
@__java_type_names.170 = internal constant [23 x i8] c"android/text/Spannable\00", align 1
@__java_type_names.171 = internal constant [21 x i8] c"android/text/Spanned\00", align 1
@__java_type_names.172 = internal constant [25 x i8] c"android/text/TextWatcher\00", align 1
@__java_type_names.173 = internal constant [20 x i8] c"android/text/Layout\00", align 1
@__java_type_names.174 = internal constant [30 x i8] c"android/text/Layout$Alignment\00", align 1
@__java_type_names.175 = internal constant [29 x i8] c"android/text/SpannableString\00", align 1
@__java_type_names.176 = internal constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 1
@__java_type_names.177 = internal constant [37 x i8] c"android/text/SpannableStringInternal\00", align 1
@__java_type_names.178 = internal constant [26 x i8] c"android/text/StaticLayout\00", align 1
@__java_type_names.179 = internal constant [23 x i8] c"android/text/TextPaint\00", align 1
@__java_type_names.180 = internal constant [34 x i8] c"android/text/style/CharacterStyle\00", align 1
@__java_type_names.181 = internal constant [39 x i8] c"android/text/style/DynamicDrawableSpan\00", align 1
@__java_type_names.182 = internal constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 1
@__java_type_names.183 = internal constant [29 x i8] c"android/text/style/ImageSpan\00", align 1
@__java_type_names.184 = internal constant [36 x i8] c"android/text/style/UpdateAppearance\00", align 1
@__java_type_names.185 = internal constant [32 x i8] c"android/text/style/UpdateLayout\00", align 1
@__java_type_names.186 = internal constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 1
@__java_type_names.187 = internal constant [35 x i8] c"android/text/style/ReplacementSpan\00", align 1
@__java_type_names.188 = internal constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 1
@__java_type_names.189 = internal constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 1
@__java_type_names.190 = internal constant [32 x i8] c"android/text/method/KeyListener\00", align 1
@__java_type_names.191 = internal constant [41 x i8] c"android/text/method/TransformationMethod\00", align 1
@__java_type_names.192 = internal constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 1
@__java_type_names.193 = internal constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 1
@__java_type_names.194 = internal constant [49 x i8] c"android/text/method/PasswordTransformationMethod\00", align 1
@__java_type_names.195 = internal constant [31 x i8] c"android/text/format/DateFormat\00", align 1
@__java_type_names.196 = internal constant [37 x i8] c"android/preference/PreferenceManager\00", align 1
@__java_type_names.197 = internal constant [19 x i8] c"android/os/Handler\00", align 1
@__java_type_names.198 = internal constant [19 x i8] c"android/os/Message\00", align 1
@__java_type_names.199 = internal constant [20 x i8] c"android/os/Vibrator\00", align 1
@__java_type_names.200 = internal constant [22 x i8] c"android/os/BaseBundle\00", align 1
@__java_type_names.201 = internal constant [17 x i8] c"android/os/Build\00", align 1
@__java_type_names.202 = internal constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@__java_type_names.203 = internal constant [18 x i8] c"android/os/Bundle\00", align 1
@__java_type_names.204 = internal constant [23 x i8] c"android/os/Environment\00", align 1
@__java_type_names.205 = internal constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 1
@__java_type_names.206 = internal constant [19 x i8] c"android/os/IBinder\00", align 1
@__java_type_names.207 = internal constant [22 x i8] c"android/os/IInterface\00", align 1
@__java_type_names.208 = internal constant [30 x i8] c"android/os/Parcelable$Creator\00", align 1
@__java_type_names.209 = internal constant [22 x i8] c"android/os/Parcelable\00", align 1
@__java_type_names.210 = internal constant [18 x i8] c"android/os/Looper\00", align 1
@__java_type_names.211 = internal constant [18 x i8] c"android/os/Parcel\00", align 1
@__java_type_names.212 = internal constant [22 x i8] c"android/os/StrictMode\00", align 1
@__java_type_names.213 = internal constant [31 x i8] c"android/os/StrictMode$VmPolicy\00", align 1
@__java_type_names.214 = internal constant [39 x i8] c"android/os/StrictMode$VmPolicy$Builder\00", align 1
@__java_type_names.215 = internal constant [16 x i8] c"android/net/Uri\00", align 1
@__java_type_names.216 = internal constant [28 x i8] c"android/media/ExifInterface\00", align 1
@__java_type_names.217 = internal constant [37 x i8] c"android/media/MediaScannerConnection\00", align 1
@__java_type_names.218 = internal constant [61 x i8] c"android/media/MediaScannerConnection$OnScanCompletedListener\00", align 1
@__java_type_names.219 = internal constant [24 x i8] c"android/hardware/Camera\00", align 1
@__java_type_names.220 = internal constant [29 x i8] c"android/hardware/Camera$Area\00", align 1
@__java_type_names.221 = internal constant [42 x i8] c"android/hardware/Camera$AutoFocusCallback\00", align 1
@__java_type_names.222 = internal constant [35 x i8] c"android/hardware/Camera$CameraInfo\00", align 1
@__java_type_names.223 = internal constant [35 x i8] c"android/hardware/Camera$Parameters\00", align 1
@__java_type_names.224 = internal constant [29 x i8] c"android/hardware/Camera$Size\00", align 1
@__java_type_names.225 = internal constant [24 x i8] c"android/graphics/Bitmap\00", align 1
@__java_type_names.226 = internal constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 1
@__java_type_names.227 = internal constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 1
@__java_type_names.228 = internal constant [24 x i8] c"android/graphics/Canvas\00", align 1
@__java_type_names.229 = internal constant [31 x i8] c"android/graphics/BitmapFactory\00", align 1
@__java_type_names.230 = internal constant [39 x i8] c"android/graphics/BitmapFactory$Options\00", align 1
@__java_type_names.231 = internal constant [29 x i8] c"android/graphics/ColorFilter\00", align 1
@__java_type_names.232 = internal constant [23 x i8] c"android/graphics/Color\00", align 1
@__java_type_names.233 = internal constant [29 x i8] c"android/graphics/ImageFormat\00", align 1
@__java_type_names.234 = internal constant [24 x i8] c"android/graphics/Matrix\00", align 1
@__java_type_names.235 = internal constant [23 x i8] c"android/graphics/Paint\00", align 1
@__java_type_names.236 = internal constant [29 x i8] c"android/graphics/Paint$Style\00", align 1
@__java_type_names.237 = internal constant [23 x i8] c"android/graphics/Point\00", align 1
@__java_type_names.238 = internal constant [28 x i8] c"android/graphics/PorterDuff\00", align 1
@__java_type_names.239 = internal constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 1
@__java_type_names.240 = internal constant [22 x i8] c"android/graphics/Rect\00", align 1
@__java_type_names.241 = internal constant [23 x i8] c"android/graphics/RectF\00", align 1
@__java_type_names.242 = internal constant [24 x i8] c"android/graphics/Shader\00", align 1
@__java_type_names.243 = internal constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 1
@__java_type_names.244 = internal constant [44 x i8] c"android/graphics/drawable/Drawable$Callback\00", align 1
@__java_type_names.245 = internal constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 1
@__java_type_names.246 = internal constant [27 x i8] c"android/animation/Animator\00", align 1
@__java_type_names.247 = internal constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 1
@__java_type_names.248 = internal constant [49 x i8] c"android/animation/Animator$AnimatorPauseListener\00", align 1
@__java_type_names.249 = internal constant [32 x i8] c"android/animation/ValueAnimator\00", align 1
@__java_type_names.250 = internal constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 1
@__java_type_names.251 = internal constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 1
@__java_type_names.252 = internal constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 1
@__java_type_names.253 = internal constant [35 x i8] c"android/animation/TimeInterpolator\00", align 1
@__java_type_names.254 = internal constant [21 x i8] c"android/app/Activity\00", align 1
@__java_type_names.255 = internal constant [24 x i8] c"android/app/AlertDialog\00", align 1
@__java_type_names.256 = internal constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@__java_type_names.257 = internal constant [24 x i8] c"android/app/Application\00", align 1
@__java_type_names.258 = internal constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 1
@__java_type_names.259 = internal constant [29 x i8] c"android/app/DatePickerDialog\00", align 1
@__java_type_names.260 = internal constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 1
@__java_type_names.261 = internal constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 1
@__java_type_names.262 = internal constant [19 x i8] c"android/app/Dialog\00", align 1
@__java_type_names.263 = internal constant [26 x i8] c"android/app/PendingIntent\00", align 1
@__java_type_names.264 = internal constant [32 x i8] c"android/content/ContentProvider\00", align 1
@__java_type_names.265 = internal constant [30 x i8] c"android/content/ContentValues\00", align 1
@__java_type_names.266 = internal constant [24 x i8] c"android/content/Context\00", align 1
@__java_type_names.267 = internal constant [23 x i8] c"android/content/Intent\00", align 1
@__java_type_names.268 = internal constant [42 x i8] c"android/content/ActivityNotFoundException\00", align 1
@__java_type_names.269 = internal constant [25 x i8] c"android/content/ClipData\00", align 1
@__java_type_names.270 = internal constant [30 x i8] c"android/content/ClipData$Item\00", align 1
@__java_type_names.271 = internal constant [30 x i8] c"android/content/ComponentName\00", align 1
@__java_type_names.272 = internal constant [32 x i8] c"android/content/ContentResolver\00", align 1
@__java_type_names.273 = internal constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@__java_type_names.274 = internal constant [35 x i8] c"android/content/ComponentCallbacks\00", align 1
@__java_type_names.275 = internal constant [36 x i8] c"android/content/ComponentCallbacks2\00", align 1
@__java_type_names.276 = internal constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 1
@__java_type_names.277 = internal constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 1
@__java_type_names.278 = internal constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@__java_type_names.279 = internal constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@__java_type_names.280 = internal constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 1
@__java_type_names.281 = internal constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 1
@__java_type_names.282 = internal constant [62 x i8] c"mono/android/content/DialogInterface_OnKeyListenerImplementor\00", align 1
@__java_type_names.283 = internal constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 1
@__java_type_names.284 = internal constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 1
@__java_type_names.285 = internal constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 1
@__java_type_names.286 = internal constant [32 x i8] c"android/content/DialogInterface\00", align 1
@__java_type_names.287 = internal constant [29 x i8] c"android/content/IntentSender\00", align 1
@__java_type_names.288 = internal constant [34 x i8] c"android/content/ServiceConnection\00", align 1
@__java_type_names.289 = internal constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@__java_type_names.290 = internal constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@__java_type_names.291 = internal constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@__java_type_names.292 = internal constant [32 x i8] c"android/content/pm/ActivityInfo\00", align 1
@__java_type_names.293 = internal constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 1
@__java_type_names.294 = internal constant [33 x i8] c"android/content/pm/ComponentInfo\00", align 1
@__java_type_names.295 = internal constant [31 x i8] c"android/content/pm/PackageInfo\00", align 1
@__java_type_names.296 = internal constant [36 x i8] c"android/content/pm/PackageInstaller\00", align 1
@__java_type_names.297 = internal constant [44 x i8] c"android/content/pm/PackageInstaller$Session\00", align 1
@__java_type_names.298 = internal constant [50 x i8] c"android/content/pm/PackageInstaller$SessionParams\00", align 1
@__java_type_names.299 = internal constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 1
@__java_type_names.300 = internal constant [34 x i8] c"android/content/pm/PackageManager\00", align 1
@__java_type_names.301 = internal constant [31 x i8] c"android/content/pm/ResolveInfo\00", align 1
@__java_type_names.302 = internal constant [33 x i8] c"android/content/res/AssetManager\00", align 1
@__java_type_names.303 = internal constant [35 x i8] c"android/content/res/ColorStateList\00", align 1
@__java_type_names.304 = internal constant [34 x i8] c"android/content/res/Configuration\00", align 1
@__java_type_names.305 = internal constant [30 x i8] c"android/content/res/Resources\00", align 1
@__java_type_names.306 = internal constant [36 x i8] c"android/content/res/Resources$Theme\00", align 1
@__java_type_names.307 = internal constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@__java_type_names.308 = internal constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 1
@__java_type_names.309 = internal constant [21 x i8] c"java/util/Collection\00", align 1
@__java_type_names.310 = internal constant [18 x i8] c"java/util/HashMap\00", align 1
@__java_type_names.311 = internal constant [20 x i8] c"java/util/ArrayList\00", align 1
@__java_type_names.312 = internal constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@__java_type_names.313 = internal constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@__java_type_names.314 = internal constant [18 x i8] c"java/util/HashSet\00", align 1
@__java_type_names.315 = internal constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@__java_type_names.316 = internal constant [26 x i8] c"java/net/ConnectException\00", align 1
@__java_type_names.317 = internal constant [27 x i8] c"java/net/HttpURLConnection\00", align 1
@__java_type_names.318 = internal constant [27 x i8] c"java/net/InetSocketAddress\00", align 1
@__java_type_names.319 = internal constant [27 x i8] c"java/net/ProtocolException\00", align 1
@__java_type_names.320 = internal constant [15 x i8] c"java/net/Proxy\00", align 1
@__java_type_names.321 = internal constant [20 x i8] c"java/net/Proxy$Type\00", align 1
@__java_type_names.322 = internal constant [23 x i8] c"java/net/ProxySelector\00", align 1
@__java_type_names.323 = internal constant [23 x i8] c"java/net/SocketAddress\00", align 1
@__java_type_names.324 = internal constant [25 x i8] c"java/net/SocketException\00", align 1
@__java_type_names.325 = internal constant [32 x i8] c"java/net/SocketTimeoutException\00", align 1
@__java_type_names.326 = internal constant [33 x i8] c"java/net/UnknownServiceException\00", align 1
@__java_type_names.327 = internal constant [13 x i8] c"java/net/URI\00", align 1
@__java_type_names.328 = internal constant [13 x i8] c"java/net/URL\00", align 1
@__java_type_names.329 = internal constant [23 x i8] c"java/net/URLConnection\00", align 1
@__java_type_names.330 = internal constant [22 x i8] c"java/util/Enumeration\00", align 1
@__java_type_names.331 = internal constant [19 x i8] c"java/util/Iterator\00", align 1
@__java_type_names.332 = internal constant [17 x i8] c"java/util/Random\00", align 1
@__java_type_names.333 = internal constant [24 x i8] c"java/security/Principal\00", align 1
@__java_type_names.334 = internal constant [23 x i8] c"java/security/KeyStore\00", align 1
@__java_type_names.335 = internal constant [42 x i8] c"java/security/KeyStore$LoadStoreParameter\00", align 1
@__java_type_names.336 = internal constant [43 x i8] c"java/security/KeyStore$ProtectionParameter\00", align 1
@__java_type_names.337 = internal constant [27 x i8] c"java/security/SecureRandom\00", align 1
@__java_type_names.338 = internal constant [31 x i8] c"java/security/cert/Certificate\00", align 1
@__java_type_names.339 = internal constant [38 x i8] c"java/security/cert/CertificateFactory\00", align 1
@__java_type_names.340 = internal constant [33 x i8] c"java/security/cert/X509Extension\00", align 1
@__java_type_names.341 = internal constant [35 x i8] c"java/security/cert/X509Certificate\00", align 1
@__java_type_names.342 = internal constant [16 x i8] c"java/nio/Buffer\00", align 1
@__java_type_names.343 = internal constant [20 x i8] c"java/nio/ByteBuffer\00", align 1
@__java_type_names.344 = internal constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@__java_type_names.345 = internal constant [30 x i8] c"java/nio/channels/ByteChannel\00", align 1
@__java_type_names.346 = internal constant [26 x i8] c"java/nio/channels/Channel\00", align 1
@__java_type_names.347 = internal constant [39 x i8] c"java/nio/channels/GatheringByteChannel\00", align 1
@__java_type_names.348 = internal constant [39 x i8] c"java/nio/channels/InterruptibleChannel\00", align 1
@__java_type_names.349 = internal constant [38 x i8] c"java/nio/channels/ReadableByteChannel\00", align 1
@__java_type_names.350 = internal constant [40 x i8] c"java/nio/channels/ScatteringByteChannel\00", align 1
@__java_type_names.351 = internal constant [38 x i8] c"java/nio/channels/SeekableByteChannel\00", align 1
@__java_type_names.352 = internal constant [38 x i8] c"java/nio/channels/WritableByteChannel\00", align 1
@__java_type_names.353 = internal constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@__java_type_names.354 = internal constant [18 x i8] c"java/lang/Boolean\00", align 1
@__java_type_names.355 = internal constant [15 x i8] c"java/lang/Byte\00", align 1
@__java_type_names.356 = internal constant [20 x i8] c"java/lang/Character\00", align 1
@__java_type_names.357 = internal constant [16 x i8] c"java/lang/Class\00", align 1
@__java_type_names.358 = internal constant [33 x i8] c"java/lang/ClassNotFoundException\00", align 1
@__java_type_names.359 = internal constant [17 x i8] c"java/lang/Double\00", align 1
@__java_type_names.360 = internal constant [20 x i8] c"java/lang/Exception\00", align 1
@__java_type_names.361 = internal constant [16 x i8] c"java/lang/Float\00", align 1
@__java_type_names.362 = internal constant [23 x i8] c"java/lang/CharSequence\00", align 1
@__java_type_names.363 = internal constant [18 x i8] c"java/lang/Integer\00", align 1
@__java_type_names.364 = internal constant [15 x i8] c"java/lang/Long\00", align 1
@__java_type_names.365 = internal constant [17 x i8] c"java/lang/Object\00", align 1
@__java_type_names.366 = internal constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@__java_type_names.367 = internal constant [16 x i8] c"java/lang/Short\00", align 1
@__java_type_names.368 = internal constant [17 x i8] c"java/lang/String\00", align 1
@__java_type_names.369 = internal constant [17 x i8] c"java/lang/Thread\00", align 1
@__java_type_names.370 = internal constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@__java_type_names.371 = internal constant [20 x i8] c"java/lang/Throwable\00", align 1
@__java_type_names.372 = internal constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@__java_type_names.373 = internal constant [15 x i8] c"java/lang/Enum\00", align 1
@__java_type_names.374 = internal constant [16 x i8] c"java/lang/Error\00", align 1
@__java_type_names.375 = internal constant [21 x i8] c"java/lang/Appendable\00", align 1
@__java_type_names.376 = internal constant [24 x i8] c"java/lang/AutoCloseable\00", align 1
@__java_type_names.377 = internal constant [20 x i8] c"java/lang/Cloneable\00", align 1
@__java_type_names.378 = internal constant [21 x i8] c"java/lang/Comparable\00", align 1
@__java_type_names.379 = internal constant [19 x i8] c"java/lang/Iterable\00", align 1
@__java_type_names.380 = internal constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@__java_type_names.381 = internal constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@__java_type_names.382 = internal constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@__java_type_names.383 = internal constant [19 x i8] c"java/lang/Runnable\00", align 1
@__java_type_names.384 = internal constant [17 x i8] c"java/lang/System\00", align 1
@__java_type_names.385 = internal constant [23 x i8] c"java/lang/LinkageError\00", align 1
@__java_type_names.386 = internal constant [31 x i8] c"java/lang/NoClassDefFoundError\00", align 1
@__java_type_names.387 = internal constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@__java_type_names.388 = internal constant [17 x i8] c"java/lang/Number\00", align 1
@__java_type_names.389 = internal constant [39 x i8] c"java/lang/ReflectiveOperationException\00", align 1
@__java_type_names.390 = internal constant [28 x i8] c"java/lang/SecurityException\00", align 1
@__java_type_names.391 = internal constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@__java_type_names.392 = internal constant [32 x i8] c"java/lang/annotation/Annotation\00", align 1
@__java_type_names.393 = internal constant [35 x i8] c"java/lang/reflect/AnnotatedElement\00", align 1
@__java_type_names.394 = internal constant [37 x i8] c"java/lang/reflect/GenericDeclaration\00", align 1
@__java_type_names.395 = internal constant [23 x i8] c"java/lang/reflect/Type\00", align 1
@__java_type_names.396 = internal constant [31 x i8] c"java/lang/reflect/TypeVariable\00", align 1
@__java_type_names.397 = internal constant [13 x i8] c"java/io/File\00", align 1
@__java_type_names.398 = internal constant [23 x i8] c"java/io/FileDescriptor\00", align 1
@__java_type_names.399 = internal constant [24 x i8] c"java/io/FileInputStream\00", align 1
@__java_type_names.400 = internal constant [30 x i8] c"java/io/FileNotFoundException\00", align 1
@__java_type_names.401 = internal constant [18 x i8] c"java/io/Closeable\00", align 1
@__java_type_names.402 = internal constant [18 x i8] c"java/io/Flushable\00", align 1
@__java_type_names.403 = internal constant [20 x i8] c"java/io/InputStream\00", align 1
@__java_type_names.404 = internal constant [31 x i8] c"java/io/InterruptedIOException\00", align 1
@__java_type_names.405 = internal constant [20 x i8] c"java/io/IOException\00", align 1
@__java_type_names.406 = internal constant [21 x i8] c"java/io/Serializable\00", align 1
@__java_type_names.407 = internal constant [21 x i8] c"java/io/OutputStream\00", align 1
@__java_type_names.408 = internal constant [20 x i8] c"java/io/PrintWriter\00", align 1
@__java_type_names.409 = internal constant [21 x i8] c"java/io/StringWriter\00", align 1
@__java_type_names.410 = internal constant [15 x i8] c"java/io/Writer\00", align 1
@__java_type_names.411 = internal constant [25 x i8] c"mono/android/TypeManager\00", align 1
@__java_type_names.412 = internal constant [32 x i8] c"android/arch/lifecycle/Observer\00", align 1
@__java_type_names.413 = internal constant [32 x i8] c"android/arch/lifecycle/LiveData\00", align 1
@__java_type_names.414 = internal constant [36 x i8] c"crc6457e461602e32e680/ProgressWheel\00", align 1
@__java_type_names.415 = internal constant [48 x i8] c"crc6457e461602e32e680/ProgressWheel_SpinHandler\00", align 1
@__java_type_names.416 = internal constant [54 x i8] c"android/support/v13/view/DragAndDropPermissionsCompat\00", align 1
@__java_type_names.417 = internal constant [39 x i8] c"android/support/v4/view/ActionProvider\00", align 1
@__java_type_names.418 = internal constant [63 x i8] c"android/support/v4/view/ActionProvider$SubUiVisibilityListener\00", align 1
@__java_type_names.419 = internal constant [79 x i8] c"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 1
@__java_type_names.420 = internal constant [58 x i8] c"android/support/v4/view/ActionProvider$VisibilityListener\00", align 1
@__java_type_names.421 = internal constant [74 x i8] c"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor\00", align 1
@__java_type_names.422 = internal constant [44 x i8] c"android/support/v4/view/DisplayCutoutCompat\00", align 1
@__java_type_names.423 = internal constant [46 x i8] c"android/support/v4/view/NestedScrollingParent\00", align 1
@__java_type_names.424 = internal constant [47 x i8] c"android/support/v4/view/NestedScrollingParent2\00", align 1
@__java_type_names.425 = internal constant [53 x i8] c"android/support/v4/view/ViewPropertyAnimatorListener\00", align 1
@__java_type_names.426 = internal constant [59 x i8] c"android/support/v4/view/ViewPropertyAnimatorUpdateListener\00", align 1
@__java_type_names.427 = internal constant [51 x i8] c"android/support/v4/view/ViewPropertyAnimatorCompat\00", align 1
@__java_type_names.428 = internal constant [43 x i8] c"android/support/v4/view/WindowInsetsCompat\00", align 1
@__java_type_names.429 = internal constant [45 x i8] c"android/support/v4/internal/view/SupportMenu\00", align 1
@__java_type_names.430 = internal constant [49 x i8] c"android/support/v4/internal/view/SupportMenuItem\00", align 1
@__java_type_names.431 = internal constant [41 x i8] c"android/support/v4/content/ContextCompat\00", align 1
@__java_type_names.432 = internal constant [40 x i8] c"android/support/v4/content/FileProvider\00", align 1
@__java_type_names.433 = internal constant [45 x i8] c"android/support/v4/content/PermissionChecker\00", align 1
@__java_type_names.434 = internal constant [38 x i8] c"android/support/v4/app/ActivityCompat\00", align 1
@__java_type_names.435 = internal constant [73 x i8] c"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback\00", align 1
@__java_type_names.436 = internal constant [63 x i8] c"android/support/v4/app/ActivityCompat$PermissionCompatDelegate\00", align 1
@__java_type_names.437 = internal constant [77 x i8] c"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator\00", align 1
@__java_type_names.438 = internal constant [45 x i8] c"android/support/v4/app/SharedElementCallback\00", align 1
@__java_type_names.439 = internal constant [75 x i8] c"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 1
@__java_type_names.440 = internal constant [40 x i8] c"android/support/v4/app/TaskStackBuilder\00", align 1
@__java_type_names.441 = internal constant [58 x i8] c"android/support/v4/app/TaskStackBuilder$SupportParentable\00", align 1
@__java_type_names.442 = internal constant [52 x i8] c"android/support/design/snackbar/ContentViewCallback\00", align 1
@__java_type_names.443 = internal constant [39 x i8] c"android/support/design/widget/Snackbar\00", align 1
@__java_type_names.444 = internal constant [70 x i8] c"android/support/design/widget/Snackbar_SnackbarActionClickImplementor\00", align 1
@__java_type_names.445 = internal constant [48 x i8] c"android/support/design/widget/Snackbar$Callback\00", align 1
@__java_type_names.446 = internal constant [53 x i8] c"android/support/design/widget/BaseTransientBottomBar\00", align 1
@__java_type_names.447 = internal constant [66 x i8] c"android/support/design/widget/BaseTransientBottomBar$BaseCallback\00", align 1
@__java_type_names.448 = internal constant [62 x i8] c"android/support/design/widget/BaseTransientBottomBar$Behavior\00", align 1
@__java_type_names.449 = internal constant [48 x i8] c"android/support/design/widget/BottomSheetDialog\00", align 1
@__java_type_names.450 = internal constant [51 x i8] c"android/support/design/widget/SwipeDismissBehavior\00", align 1
@__java_type_names.451 = internal constant [69 x i8] c"android/support/design/widget/SwipeDismissBehavior$OnDismissListener\00", align 1
@__java_type_names.452 = internal constant [85 x i8] c"mono/android/support/design/widget/SwipeDismissBehavior_OnDismissListenerImplementor\00", align 1
@__java_type_names.453 = internal constant [42 x i8] c"crc646957603ea1820544/MediaPickerActivity\00", align 1
@__java_type_names.454 = internal constant [34 x i8] c"android/support/v4/content/Loader\00", align 1
@__java_type_names.455 = internal constant [57 x i8] c"android/support/v4/content/Loader$OnLoadCanceledListener\00", align 1
@__java_type_names.456 = internal constant [57 x i8] c"android/support/v4/content/Loader$OnLoadCompleteListener\00", align 1
@__java_type_names.457 = internal constant [37 x i8] c"android/support/v4/app/LoaderManager\00", align 1
@__java_type_names.458 = internal constant [53 x i8] c"android/support/v4/app/LoaderManager$LoaderCallbacks\00", align 1
@__java_type_names.459 = internal constant [48 x i8] c"android/support/design/widget/CoordinatorLayout\00", align 1
@__java_type_names.460 = internal constant [57 x i8] c"android/support/design/widget/CoordinatorLayout$Behavior\00", align 1
@__java_type_names.461 = internal constant [61 x i8] c"android/support/design/widget/CoordinatorLayout$LayoutParams\00", align 1
@__java_type_names.462 = internal constant [55 x i8] c"crc6480997b3ef81bf9b2/ActivityLifecycleContextListener\00", align 1
@__java_type_names.463 = internal constant [36 x i8] c"crc6480997b3ef81bf9b2/ZxingActivity\00", align 1
@__java_type_names.464 = internal constant [39 x i8] c"crc6480997b3ef81bf9b2/ZxingOverlayView\00", align 1
@__java_type_names.465 = internal constant [43 x i8] c"crc6480997b3ef81bf9b2/ZXingScannerFragment\00", align 1
@__java_type_names.466 = internal constant [39 x i8] c"crc6480997b3ef81bf9b2/ZXingSurfaceView\00", align 1
@__java_type_names.467 = internal constant [43 x i8] c"crc643eead1a2954d3917/CameraEventsListener\00", align 1
@__java_type_names.468 = internal constant [56 x i8] c"crc64b76f6e8b2d8c8db1/AbstractAppCompatDialogFragment_1\00", align 1
@__java_type_names.469 = internal constant [57 x i8] c"crc64b76f6e8b2d8c8db1/ActionSheetAppCompatDialogFragment\00", align 1
@__java_type_names.470 = internal constant [51 x i8] c"crc64b76f6e8b2d8c8db1/AlertAppCompatDialogFragment\00", align 1
@__java_type_names.471 = internal constant [48 x i8] c"crc64b76f6e8b2d8c8db1/BottomSheetDialogFragment\00", align 1
@__java_type_names.472 = internal constant [53 x i8] c"crc64b76f6e8b2d8c8db1/ConfirmAppCompatDialogFragment\00", align 1
@__java_type_names.473 = internal constant [50 x i8] c"crc64b76f6e8b2d8c8db1/DateAppCompatDialogFragment\00", align 1
@__java_type_names.474 = internal constant [51 x i8] c"crc64b76f6e8b2d8c8db1/LoginAppCompatDialogFragment\00", align 1
@__java_type_names.475 = internal constant [52 x i8] c"crc64b76f6e8b2d8c8db1/PromptAppCompatDialogFragment\00", align 1
@__java_type_names.476 = internal constant [50 x i8] c"crc64b76f6e8b2d8c8db1/TimeAppCompatDialogFragment\00", align 1
@__java_type_names.477 = internal constant [45 x i8] c"crc6439b217bab7914f95/ActionSheetListAdapter\00", align 1
@__java_type_names.478 = internal constant [49 x i8] c"crc64692a67b1ffd85ce9/ActivityLifecycleCallbacks\00", align 1
@__java_type_names.479 = internal constant [39 x i8] c"android/support/v4/widget/DrawerLayout\00", align 1
@__java_type_names.480 = internal constant [54 x i8] c"android/support/v4/widget/DrawerLayout$DrawerListener\00", align 1
@__java_type_names.481 = internal constant [70 x i8] c"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor\00", align 1
@__java_type_names.482 = internal constant [37 x i8] c"crc64b87e06cf702046da/ChooseActivity\00", align 1
@__java_type_names.483 = internal constant [35 x i8] c"crc64b87e06cf702046da/MainActivity\00", align 1
@__java_type_names.484 = internal constant [41 x i8] c"crc64b87e06cf702046da/MainDocketActivity\00", align 1
@__java_type_names.485 = internal constant [30 x i8] c"crc64b87e06cf702046da/Adapter\00", align 1
@__java_type_names.486 = internal constant [37 x i8] c"crc64b87e06cf702046da/ServerActivity\00", align 1
@__java_type_names.487 = internal constant [40 x i8] c"android/hardware/Camera$PreviewCallback\00", align 1
@__java_type_names.488 = internal constant [40 x i8] c"android/support/v4/app/FragmentActivity\00", align 1
@__java_type_names.489 = internal constant [38 x i8] c"android/support/v4/app/DialogFragment\00", align 1
@__java_type_names.490 = internal constant [32 x i8] c"android/support/v4/app/Fragment\00", align 1
@__java_type_names.491 = internal constant [43 x i8] c"android/support/v4/app/Fragment$SavedState\00", align 1
@__java_type_names.492 = internal constant [39 x i8] c"android/support/v4/app/FragmentManager\00", align 1
@__java_type_names.493 = internal constant [54 x i8] c"android/support/v4/app/FragmentManager$BackStackEntry\00", align 1
@__java_type_names.494 = internal constant [66 x i8] c"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks\00", align 1
@__java_type_names.495 = internal constant [66 x i8] c"android/support/v4/app/FragmentManager$OnBackStackChangedListener\00", align 1
@__java_type_names.496 = internal constant [82 x i8] c"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 1
@__java_type_names.497 = internal constant [43 x i8] c"android/support/v4/app/FragmentTransaction\00", align 1
@__java_type_names.498 = internal constant [33 x i8] c"android/arch/lifecycle/Lifecycle\00", align 1
@__java_type_names.499 = internal constant [39 x i8] c"android/arch/lifecycle/Lifecycle$State\00", align 1
@__java_type_names.500 = internal constant [41 x i8] c"android/arch/lifecycle/LifecycleObserver\00", align 1
@__java_type_names.501 = internal constant [38 x i8] c"android/arch/lifecycle/LifecycleOwner\00", align 1

@java_type_names = local_unnamed_addr constant [502 x i8*] [
	i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__java_type_names.0, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.1, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.2, i32 0, i32 0),
	i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__java_type_names.3, i32 0, i32 0),
	i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__java_type_names.4, i32 0, i32 0),
	i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__java_type_names.5, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.6, i32 0, i32 0),
	i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__java_type_names.7, i32 0, i32 0),
	i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__java_type_names.8, i32 0, i32 0),
	i8* getelementptr inbounds ([74 x i8], [74 x i8]* @__java_type_names.9, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.10, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.11, i32 0, i32 0),
	i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__java_type_names.12, i32 0, i32 0),
	i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__java_type_names.13, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.14, i32 0, i32 0),
	i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__java_type_names.15, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.16, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.17, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.18, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.19, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.20, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.21, i32 0, i32 0),
	i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__java_type_names.22, i32 0, i32 0),
	i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__java_type_names.23, i32 0, i32 0),
	i8* getelementptr inbounds ([74 x i8], [74 x i8]* @__java_type_names.24, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.25, i32 0, i32 0),
	i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__java_type_names.26, i32 0, i32 0),
	i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__java_type_names.27, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.28, i32 0, i32 0),
	i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__java_type_names.29, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.30, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.31, i32 0, i32 0),
	i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__java_type_names.32, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.33, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.34, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.35, i32 0, i32 0),
	i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__java_type_names.36, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.37, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.38, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.39, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.40, i32 0, i32 0),
	i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__java_type_names.41, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.42, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.43, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.44, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.45, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.46, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.47, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.48, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.49, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.50, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.51, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.52, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.53, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.54, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.55, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.56, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.57, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.58, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.59, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.60, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.61, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.62, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.63, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.64, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.65, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.66, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.67, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.68, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.69, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.70, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.71, i32 0, i32 0),
	i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__java_type_names.72, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.73, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.74, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.75, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.76, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.77, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.78, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.79, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.80, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.81, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.82, i32 0, i32 0),
	i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__java_type_names.83, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.84, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.85, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.86, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.87, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.88, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.89, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.90, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.91, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.92, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.93, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.94, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.95, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.96, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.97, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.98, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.99, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.100, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.101, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.102, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.103, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.104, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.105, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.106, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.107, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.108, i32 0, i32 0),
	i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__java_type_names.109, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.110, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.111, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.112, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.113, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.114, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.115, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.116, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.117, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.118, i32 0, i32 0),
	i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__java_type_names.119, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.120, i32 0, i32 0),
	i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__java_type_names.121, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.122, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.123, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.124, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.125, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.126, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.127, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.128, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.129, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.130, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.131, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.132, i32 0, i32 0),
	i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__java_type_names.133, i32 0, i32 0),
	i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__java_type_names.134, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.135, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.136, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.137, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.138, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.139, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.140, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.141, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.142, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.143, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.144, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.145, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.146, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.147, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.148, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.149, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.150, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.151, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.152, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.153, i32 0, i32 0),
	i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__java_type_names.154, i32 0, i32 0),
	i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__java_type_names.155, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.156, i32 0, i32 0),
	i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__java_type_names.157, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.158, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.159, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.160, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.161, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.162, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.163, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.164, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.165, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.166, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.167, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.168, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.169, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.170, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.171, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.172, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.173, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.174, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.175, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.176, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.177, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.178, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.179, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.180, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.181, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.182, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.183, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.184, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.185, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.186, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.187, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.188, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.189, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.190, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.191, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.192, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.193, i32 0, i32 0),
	i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__java_type_names.194, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.195, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.196, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.197, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.198, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.199, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.200, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.201, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.202, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.203, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.204, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.205, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.206, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.207, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.208, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.209, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.210, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.211, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.212, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.213, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.214, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.215, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.216, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.217, i32 0, i32 0),
	i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__java_type_names.218, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.219, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.220, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.221, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.222, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.223, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.224, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.225, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.226, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.227, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.228, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.229, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.230, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.231, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.232, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.233, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.234, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.235, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.236, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.237, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.238, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.239, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.240, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.241, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.242, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.243, i32 0, i32 0),
	i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__java_type_names.244, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.245, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.246, i32 0, i32 0),
	i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__java_type_names.247, i32 0, i32 0),
	i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__java_type_names.248, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.249, i32 0, i32 0),
	i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__java_type_names.250, i32 0, i32 0),
	i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__java_type_names.251, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.252, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.253, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.254, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.255, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.256, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.257, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.258, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.259, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.260, i32 0, i32 0),
	i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__java_type_names.261, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.262, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.263, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.264, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.265, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.266, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.267, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.268, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.269, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.270, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.271, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.272, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.273, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.274, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.275, i32 0, i32 0),
	i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__java_type_names.276, i32 0, i32 0),
	i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__java_type_names.277, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.278, i32 0, i32 0),
	i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__java_type_names.279, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.280, i32 0, i32 0),
	i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__java_type_names.281, i32 0, i32 0),
	i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__java_type_names.282, i32 0, i32 0),
	i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__java_type_names.283, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.284, i32 0, i32 0),
	i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__java_type_names.285, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.286, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.287, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.288, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.289, i32 0, i32 0),
	i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__java_type_names.290, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.291, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.292, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.293, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.294, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.295, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.296, i32 0, i32 0),
	i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__java_type_names.297, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.298, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.299, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.300, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.301, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.302, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.303, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.304, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.305, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.306, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.307, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.308, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.309, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.310, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.311, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.312, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.313, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.314, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.315, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.316, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.317, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.318, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.319, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.320, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.321, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.322, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.323, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.324, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.325, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.326, i32 0, i32 0),
	i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__java_type_names.327, i32 0, i32 0),
	i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__java_type_names.328, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.329, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.330, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.331, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.332, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.333, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.334, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.335, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.336, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.337, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.338, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.339, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.340, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.341, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.342, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.343, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.344, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.345, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.346, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.347, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.348, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.349, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.350, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.351, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.352, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.353, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.354, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.355, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.356, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.357, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.358, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.359, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.360, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.361, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.362, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.363, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.364, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.365, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.366, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.367, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.368, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.369, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.370, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.371, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.372, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.373, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.374, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.375, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.376, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.377, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.378, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.379, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.380, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.381, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.382, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.383, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.384, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.385, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.386, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.387, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.388, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.389, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.390, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.391, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.392, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.393, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.394, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.395, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.396, i32 0, i32 0),
	i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__java_type_names.397, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.398, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.399, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.400, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.401, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.402, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.403, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.404, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.405, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.406, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.407, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.408, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.409, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.410, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.411, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.412, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.413, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.414, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.415, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.416, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.417, i32 0, i32 0),
	i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__java_type_names.418, i32 0, i32 0),
	i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__java_type_names.419, i32 0, i32 0),
	i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__java_type_names.420, i32 0, i32 0),
	i8* getelementptr inbounds ([74 x i8], [74 x i8]* @__java_type_names.421, i32 0, i32 0),
	i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__java_type_names.422, i32 0, i32 0),
	i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__java_type_names.423, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.424, i32 0, i32 0),
	i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__java_type_names.425, i32 0, i32 0),
	i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__java_type_names.426, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.427, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.428, i32 0, i32 0),
	i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__java_type_names.429, i32 0, i32 0),
	i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__java_type_names.430, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.431, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.432, i32 0, i32 0),
	i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__java_type_names.433, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.434, i32 0, i32 0),
	i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__java_type_names.435, i32 0, i32 0),
	i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__java_type_names.436, i32 0, i32 0),
	i8* getelementptr inbounds ([77 x i8], [77 x i8]* @__java_type_names.437, i32 0, i32 0),
	i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__java_type_names.438, i32 0, i32 0),
	i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__java_type_names.439, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.440, i32 0, i32 0),
	i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__java_type_names.441, i32 0, i32 0),
	i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__java_type_names.442, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.443, i32 0, i32 0),
	i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__java_type_names.444, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.445, i32 0, i32 0),
	i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__java_type_names.446, i32 0, i32 0),
	i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__java_type_names.447, i32 0, i32 0),
	i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__java_type_names.448, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.449, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.450, i32 0, i32 0),
	i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__java_type_names.451, i32 0, i32 0),
	i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__java_type_names.452, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.453, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.454, i32 0, i32 0),
	i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__java_type_names.455, i32 0, i32 0),
	i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__java_type_names.456, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.457, i32 0, i32 0),
	i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__java_type_names.458, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.459, i32 0, i32 0),
	i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__java_type_names.460, i32 0, i32 0),
	i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__java_type_names.461, i32 0, i32 0),
	i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__java_type_names.462, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.463, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.464, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.465, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.466, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.467, i32 0, i32 0),
	i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__java_type_names.468, i32 0, i32 0),
	i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__java_type_names.469, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.470, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.471, i32 0, i32 0),
	i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__java_type_names.472, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.473, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.474, i32 0, i32 0),
	i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__java_type_names.475, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.476, i32 0, i32 0),
	i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__java_type_names.477, i32 0, i32 0),
	i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__java_type_names.478, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.479, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.480, i32 0, i32 0),
	i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__java_type_names.481, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.482, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.483, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.484, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.485, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.486, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.487, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.488, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.489, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.490, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.491, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.492, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.493, i32 0, i32 0),
	i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__java_type_names.494, i32 0, i32 0),
	i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__java_type_names.495, i32 0, i32 0),
	i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__java_type_names.496, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.497, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.498, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.499, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.500, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.501, i32 0, i32 0)
], align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-3 @ 030cd63c06d95a6b0d0f563fe9b9d537f84cb84b"}
