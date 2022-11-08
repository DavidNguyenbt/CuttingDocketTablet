; ModuleID = 'obj\Release\90\android\compressed_assemblies.x86.ll'
source_filename = "obj\Release\90\android\compressed_assemblies.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [96768 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [74240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [22016 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [9216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [273408 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [11264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [690056 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [42400 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [46496 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [203168 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [82832 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [49584 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [166400 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [1476096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [121856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [64000 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [93696 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [1307648 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [218112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [35840 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [10752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [1322496 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [865792 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [96768 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [14336 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [14848 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [8704 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [164864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [65024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [44032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [36352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [148992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [34304 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [377344 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [34816 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [12800 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [41984 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [2223104 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [446976 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [40 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 96768, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([96768 x i8], [96768 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 74240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([74240 x i8], [74240 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 22016, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([22016 x i8], [22016 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9216 x i8], [9216 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 273408, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([273408 x i8], [273408 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 11264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11264 x i8], [11264 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 690056, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([690056 x i8], [690056 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 42400, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([42400 x i8], [42400 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 46496, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([46496 x i8], [46496 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 203168, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([203168 x i8], [203168 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 82832, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([82832 x i8], [82832 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 49584, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([49584 x i8], [49584 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 166400, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([166400 x i8], [166400 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 1476096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1476096 x i8], [1476096 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 121856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([121856 x i8], [121856 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 64000, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([64000 x i8], [64000 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 93696, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([93696 x i8], [93696 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 1307648, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1307648 x i8], [1307648 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 218112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([218112 x i8], [218112 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 35840, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([35840 x i8], [35840 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 10752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([10752 x i8], [10752 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 1322496, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1322496 x i8], [1322496 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 865792, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([865792 x i8], [865792 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 96768, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([96768 x i8], [96768 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 14336, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14336 x i8], [14336 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14848 x i8], [14848 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 8704, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8704 x i8], [8704 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 164864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([164864 x i8], [164864 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 65024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65024 x i8], [65024 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 44032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([44032 x i8], [44032 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 36352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36352 x i8], [36352 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 148992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([148992 x i8], [148992 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 34304, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([34304 x i8], [34304 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 377344, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([377344 x i8], [377344 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 34816, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([34816 x i8], [34816 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 12800, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 41984, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([41984 x i8], [41984 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 2223104, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2223104 x i8], [2223104 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 446976, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([446976 x i8], [446976 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}
], align 4; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 40, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([40 x %struct.CompressedAssemblyDescriptor], [40 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 4


!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-3 @ 030cd63c06d95a6b0d0f563fe9b9d537f84cb84b"}
