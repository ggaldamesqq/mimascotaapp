; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [133 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [399 x i64] [
	i64 u0x0071cf2d27b7d61e, ; 0: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 80
	i64 u0x02123411c4e01926, ; 1: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 76
	i64 u0x02abedc11addc1ed, ; 2: lib_Mono.Android.Runtime.dll.so => 131
	i64 u0x032267b2a94db371, ; 3: lib_Xamarin.AndroidX.AppCompat.dll.so => 59
	i64 u0x043032f1d071fae0, ; 4: ru/Microsoft.Maui.Controls.resources => 24
	i64 u0x044440a55165631e, ; 5: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i64 u0x046eb1581a80c6b0, ; 6: vi/Microsoft.Maui.Controls.resources => 30
	i64 u0x0517ef04e06e9f76, ; 7: System.Net.Primitives => 108
	i64 u0x0565d18c6da3de38, ; 8: Xamarin.AndroidX.RecyclerView => 78
	i64 u0x0581db89237110e9, ; 9: lib_System.Collections.dll.so => 93
	i64 u0x05989cb940b225a9, ; 10: Microsoft.Maui.dll => 55
	i64 u0x06076b5d2b581f08, ; 11: zh-HK/Microsoft.Maui.Controls.resources => 31
	i64 u0x06388ffe9f6c161a, ; 12: System.Xml.Linq.dll => 126
	i64 u0x0680a433c781bb3d, ; 13: Xamarin.AndroidX.Collection.Jvm => 62
	i64 u0x0690533f9fc14683, ; 14: lib_Microsoft.AspNetCore.Components.dll.so => 35
	i64 u0x07c57877c7ba78ad, ; 15: ru/Microsoft.Maui.Controls.resources.dll => 24
	i64 u0x07dcdc7460a0c5e4, ; 16: System.Collections.NonGeneric => 91
	i64 u0x08f3c9788ee2153c, ; 17: Xamarin.AndroidX.DrawerLayout => 67
	i64 u0x0919c28b89381a0b, ; 18: lib_Microsoft.Extensions.Options.dll.so => 50
	i64 u0x092266563089ae3e, ; 19: lib_System.Collections.NonGeneric.dll.so => 91
	i64 u0x09d144a7e214d457, ; 20: System.Security.Cryptography => 119
	i64 u0x0b3b632c3bbee20c, ; 21: sk/Microsoft.Maui.Controls.resources => 25
	i64 u0x0b6aff547b84fbe9, ; 22: Xamarin.KotlinX.Serialization.Core.Jvm => 86
	i64 u0x0be2e1f8ce4064ed, ; 23: Xamarin.AndroidX.ViewPager => 81
	i64 u0x0c3ca6cc978e2aae, ; 24: pt-BR/Microsoft.Maui.Controls.resources => 21
	i64 u0x0c59ad9fbbd43abe, ; 25: Mono.Android => 132
	i64 u0x0c7790f60165fc06, ; 26: lib_Microsoft.Maui.Essentials.dll.so => 56
	i64 u0x102a31b45304b1da, ; 27: Xamarin.AndroidX.CustomView => 66
	i64 u0x10f6cfcbcf801616, ; 28: System.IO.Compression.Brotli => 100
	i64 u0x125b7f94acb989db, ; 29: Xamarin.AndroidX.RecyclerView.dll => 78
	i64 u0x13a01de0cbc3f06c, ; 30: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i64 u0x13f1e5e209e91af4, ; 31: lib_Java.Interop.dll.so => 130
	i64 u0x13f1e880c25d96d1, ; 32: he/Microsoft.Maui.Controls.resources => 9
	i64 u0x143d8ea60a6a4011, ; 33: Microsoft.Extensions.DependencyInjection.Abstractions => 42
	i64 u0x17b56e25558a5d36, ; 34: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i64 u0x17f9358913beb16a, ; 35: System.Text.Encodings.Web => 120
	i64 u0x18402a709e357f3b, ; 36: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 86
	i64 u0x18f0ce884e87d89a, ; 37: nb/Microsoft.Maui.Controls.resources.dll => 18
	i64 u0x1a91866a319e9259, ; 38: lib_System.Collections.Concurrent.dll.so => 89
	i64 u0x1aac34d1917ba5d3, ; 39: lib_System.dll.so => 128
	i64 u0x1aad60783ffa3e5b, ; 40: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i64 u0x1c5217a9e4973753, ; 41: lib_Microsoft.Extensions.FileProviders.Physical.dll.so => 46
	i64 u0x1c753b5ff15bce1b, ; 42: Mono.Android.Runtime.dll => 131
	i64 u0x1e3d87657e9659bc, ; 43: Xamarin.AndroidX.Navigation.UI => 77
	i64 u0x1e71143913d56c10, ; 44: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i64 u0x1ec017d52f568926, ; 45: MiMascotaApp.Shared.dll => 87
	i64 u0x1ed8fcce5e9b50a0, ; 46: Microsoft.Extensions.Options.dll => 50
	i64 u0x209375905fcc1bad, ; 47: lib_System.IO.Compression.Brotli.dll.so => 100
	i64 u0x2174319c0d835bc9, ; 48: System.Runtime => 118
	i64 u0x220fd4f2e7c48170, ; 49: th/Microsoft.Maui.Controls.resources => 27
	i64 u0x237be844f1f812c7, ; 50: System.Threading.Thread.dll => 123
	i64 u0x2407aef2bbe8fadf, ; 51: System.Console => 97
	i64 u0x240abe014b27e7d3, ; 52: Xamarin.AndroidX.Core.dll => 64
	i64 u0x252073cc3caa62c2, ; 53: fr/Microsoft.Maui.Controls.resources.dll => 8
	i64 u0x2662c629b96b0b30, ; 54: lib_Xamarin.Kotlin.StdLib.dll.so => 84
	i64 u0x268c1439f13bcc29, ; 55: lib_Microsoft.Extensions.Primitives.dll.so => 51
	i64 u0x273f3515de5faf0d, ; 56: id/Microsoft.Maui.Controls.resources.dll => 13
	i64 u0x2742545f9094896d, ; 57: hr/Microsoft.Maui.Controls.resources => 11
	i64 u0x27b410442fad6cf1, ; 58: Java.Interop.dll => 130
	i64 u0x2801845a2c71fbfb, ; 59: System.Net.Primitives.dll => 108
	i64 u0x2a128783efe70ba0, ; 60: uk/Microsoft.Maui.Controls.resources.dll => 29
	i64 u0x2ad156c8e1354139, ; 61: fi/Microsoft.Maui.Controls.resources => 7
	i64 u0x2af298f63581d886, ; 62: System.Text.RegularExpressions.dll => 122
	i64 u0x2afc1c4f898552ee, ; 63: lib_System.Formats.Asn1.dll.so => 99
	i64 u0x2b148910ed40fbf9, ; 64: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i64 u0x2b4d4904cebfa4e9, ; 65: Microsoft.Extensions.FileSystemGlobbing => 47
	i64 u0x2c8bd14bb93a7d82, ; 66: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i64 u0x2cd723e9fe623c7c, ; 67: lib_System.Private.Xml.Linq.dll.so => 113
	i64 u0x2d169d318a968379, ; 68: System.Threading.dll => 124
	i64 u0x2d47774b7d993f59, ; 69: sv/Microsoft.Maui.Controls.resources.dll => 26
	i64 u0x2db915caf23548d2, ; 70: System.Text.Json.dll => 121
	i64 u0x2e6f1f226821322a, ; 71: el/Microsoft.Maui.Controls.resources.dll => 5
	i64 u0x2e8ff3fae87a8245, ; 72: lib_Microsoft.JSInterop.dll.so => 52
	i64 u0x2f2e98e1c89b1aff, ; 73: System.Xml.ReaderWriter => 127
	i64 u0x309ee9eeec09a71e, ; 74: lib_Xamarin.AndroidX.Fragment.dll.so => 68
	i64 u0x310d9651ec86c411, ; 75: Microsoft.Extensions.FileProviders.Embedded => 45
	i64 u0x31195fef5d8fb552, ; 76: _Microsoft.Android.Resource.Designer.dll => 34
	i64 u0x32243413e774362a, ; 77: Xamarin.AndroidX.CardView.dll => 61
	i64 u0x329753a17a517811, ; 78: fr/Microsoft.Maui.Controls.resources => 8
	i64 u0x32aa989ff07a84ff, ; 79: lib_System.Xml.ReaderWriter.dll.so => 127
	i64 u0x33642d5508314e46, ; 80: Microsoft.Extensions.FileSystemGlobbing.dll => 47
	i64 u0x33829542f112d59b, ; 81: System.Collections.Immutable => 90
	i64 u0x33a31443733849fe, ; 82: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i64 u0x34bd01fd4be06ee3, ; 83: lib_Microsoft.Extensions.FileProviders.Composite.dll.so => 44
	i64 u0x34dfd74fe2afcf37, ; 84: Microsoft.Maui => 55
	i64 u0x34e292762d9615df, ; 85: cs/Microsoft.Maui.Controls.resources.dll => 2
	i64 u0x3508234247f48404, ; 86: Microsoft.Maui.Controls => 53
	i64 u0x3549870798b4cd30, ; 87: lib_Xamarin.AndroidX.ViewPager2.dll.so => 82
	i64 u0x355282fc1c909694, ; 88: Microsoft.Extensions.Configuration => 39
	i64 u0x380134e03b1e160a, ; 89: System.Collections.Immutable.dll => 90
	i64 u0x385c17636bb6fe6e, ; 90: Xamarin.AndroidX.CustomView.dll => 66
	i64 u0x393c226616977fdb, ; 91: lib_Xamarin.AndroidX.ViewPager.dll.so => 81
	i64 u0x395e37c3334cf82a, ; 92: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i64 u0x39c3107c28752af1, ; 93: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 43
	i64 u0x3be6248c2bc7dc8c, ; 94: Microsoft.JSInterop.dll => 52
	i64 u0x3c7c495f58ac5ee9, ; 95: Xamarin.Kotlin.StdLib => 84
	i64 u0x3d46f0b995082740, ; 96: System.Xml.Linq => 126
	i64 u0x3d9c2a242b040a50, ; 97: lib_Xamarin.AndroidX.Core.dll.so => 64
	i64 u0x3e7f8912b96e5065, ; 98: Microsoft.AspNetCore.Components.WebView.dll => 37
	i64 u0x407a10bb4bf95829, ; 99: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 74
	i64 u0x41cab042be111c34, ; 100: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 60
	i64 u0x434c4e1d9284cdae, ; 101: Mono.Android.dll => 132
	i64 u0x43950f84de7cc79a, ; 102: pl/Microsoft.Maui.Controls.resources.dll => 20
	i64 u0x4515080865a951a5, ; 103: Xamarin.Kotlin.StdLib.dll => 84
	i64 u0x46a4213bc97fe5ae, ; 104: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i64 u0x47358bd471172e1d, ; 105: lib_System.Xml.Linq.dll.so => 126
	i64 u0x47daf4e1afbada10, ; 106: pt/Microsoft.Maui.Controls.resources => 22
	i64 u0x49e952f19a4e2022, ; 107: System.ObjectModel => 111
	i64 u0x4a5667b2462a664b, ; 108: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 77
	i64 u0x4b7b6532ded934b7, ; 109: System.Text.Json => 121
	i64 u0x4cc5f15266470798, ; 110: lib_Xamarin.AndroidX.Loader.dll.so => 73
	i64 u0x4d479f968a05e504, ; 111: System.Linq.Expressions.dll => 104
	i64 u0x4d55a010ffc4faff, ; 112: System.Private.Xml => 114
	i64 u0x4d95fccc1f67c7ca, ; 113: System.Runtime.Loader.dll => 116
	i64 u0x4dcf44c3c9b076a2, ; 114: it/Microsoft.Maui.Controls.resources.dll => 14
	i64 u0x4dd9247f1d2c3235, ; 115: Xamarin.AndroidX.Loader.dll => 73
	i64 u0x4df510084e2a0bae, ; 116: Microsoft.JSInterop => 52
	i64 u0x4e32f00cb0937401, ; 117: Mono.Android.Runtime => 131
	i64 u0x4f21ee6ef9eb527e, ; 118: ca/Microsoft.Maui.Controls.resources => 1
	i64 u0x5037f0be3c28c7a3, ; 119: lib_Microsoft.Maui.Controls.dll.so => 53
	i64 u0x5131bbe80989093f, ; 120: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 71
	i64 u0x526ce79eb8e90527, ; 121: lib_System.Net.Primitives.dll.so => 108
	i64 u0x529ffe06f39ab8db, ; 122: Xamarin.AndroidX.Core => 64
	i64 u0x52ff996554dbf352, ; 123: Microsoft.Maui.Graphics => 57
	i64 u0x535f7e40e8fef8af, ; 124: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i64 u0x53c3014b9437e684, ; 125: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i64 u0x54795225dd1587af, ; 126: lib_System.Runtime.dll.so => 118
	i64 u0x556e8b63b660ab8b, ; 127: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 69
	i64 u0x5588627c9a108ec9, ; 128: System.Collections.Specialized => 92
	i64 u0x571c5cfbec5ae8e2, ; 129: System.Private.Uri => 112
	i64 u0x579a06fed6eec900, ; 130: System.Private.CoreLib.dll => 129
	i64 u0x57c542c14049b66d, ; 131: System.Diagnostics.DiagnosticSource => 98
	i64 u0x58601b2dda4a27b9, ; 132: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i64 u0x58688d9af496b168, ; 133: Microsoft.Extensions.DependencyInjection.dll => 41
	i64 u0x5a89a886ae30258d, ; 134: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 63
	i64 u0x5a8f6699f4a1caa9, ; 135: lib_System.Threading.dll.so => 124
	i64 u0x5ae9cd33b15841bf, ; 136: System.ComponentModel => 96
	i64 u0x5b5f0e240a06a2a2, ; 137: da/Microsoft.Maui.Controls.resources.dll => 3
	i64 u0x5c393624b8176517, ; 138: lib_Microsoft.Extensions.Logging.dll.so => 48
	i64 u0x5d25ef991dd9a85c, ; 139: Microsoft.AspNetCore.Components.WebView.Maui.dll => 38
	i64 u0x5db0cbbd1028510e, ; 140: lib_System.Runtime.InteropServices.dll.so => 115
	i64 u0x5db30905d3e5013b, ; 141: Xamarin.AndroidX.Collection.Jvm.dll => 62
	i64 u0x5e467bc8f09ad026, ; 142: System.Collections.Specialized.dll => 92
	i64 u0x5ea92fdb19ec8c4c, ; 143: System.Text.Encodings.Web.dll => 120
	i64 u0x5eb8046dd40e9ac3, ; 144: System.ComponentModel.Primitives => 94
	i64 u0x5f36ccf5c6a57e24, ; 145: System.Xml.ReaderWriter.dll => 127
	i64 u0x5f9a2d823f664957, ; 146: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i64 u0x609f4b7b63d802d4, ; 147: lib_Microsoft.Extensions.DependencyInjection.dll.so => 41
	i64 u0x60cd4e33d7e60134, ; 148: Xamarin.KotlinX.Coroutines.Core.Jvm => 85
	i64 u0x60f62d786afcf130, ; 149: System.Memory => 106
	i64 u0x61be8d1299194243, ; 150: Microsoft.Maui.Controls.Xaml => 54
	i64 u0x61d2cba29557038f, ; 151: de/Microsoft.Maui.Controls.resources => 4
	i64 u0x61d88f399afb2f45, ; 152: lib_System.Runtime.Loader.dll.so => 116
	i64 u0x622eef6f9e59068d, ; 153: System.Private.CoreLib => 129
	i64 u0x63f1f6883c1e23c2, ; 154: lib_System.Collections.Immutable.dll.so => 90
	i64 u0x6400f68068c1e9f1, ; 155: Xamarin.Google.Android.Material.dll => 83
	i64 u0x65ecac39144dd3cc, ; 156: Microsoft.Maui.Controls.dll => 53
	i64 u0x65ece51227bfa724, ; 157: lib_System.Runtime.Numerics.dll.so => 117
	i64 u0x6692e924eade1b29, ; 158: lib_System.Console.dll.so => 97
	i64 u0x66a4e5c6a3fb0bae, ; 159: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 71
	i64 u0x66d13304ce1a3efa, ; 160: Xamarin.AndroidX.CursorAdapter => 65
	i64 u0x68558ec653afa616, ; 161: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i64 u0x68fbbbe2eb455198, ; 162: System.Formats.Asn1 => 99
	i64 u0x69063fc0ba8e6bdd, ; 163: he/Microsoft.Maui.Controls.resources.dll => 9
	i64 u0x6a4d7577b2317255, ; 164: System.Runtime.InteropServices.dll => 115
	i64 u0x6ace3b74b15ee4a4, ; 165: nb/Microsoft.Maui.Controls.resources => 18
	i64 u0x6d12bfaa99c72b1f, ; 166: lib_Microsoft.Maui.Graphics.dll.so => 57
	i64 u0x6d79993361e10ef2, ; 167: Microsoft.Extensions.Primitives => 51
	i64 u0x6d86d56b84c8eb71, ; 168: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 65
	i64 u0x6d9bea6b3e895cf7, ; 169: Microsoft.Extensions.Primitives.dll => 51
	i64 u0x6e25a02c3833319a, ; 170: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 75
	i64 u0x6fd2265da78b93a4, ; 171: lib_Microsoft.Maui.dll.so => 55
	i64 u0x6fdfc7de82c33008, ; 172: cs/Microsoft.Maui.Controls.resources => 2
	i64 u0x6ffc4967cc47ba57, ; 173: System.IO.FileSystem.Watcher.dll => 102
	i64 u0x70e99f48c05cb921, ; 174: tr/Microsoft.Maui.Controls.resources.dll => 28
	i64 u0x70fd3deda22442d2, ; 175: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i64 u0x71a495ea3761dde8, ; 176: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i64 u0x71ad672adbe48f35, ; 177: System.ComponentModel.Primitives.dll => 94
	i64 u0x72b1fb4109e08d7b, ; 178: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i64 u0x73e4ce94e2eb6ffc, ; 179: lib_System.Memory.dll.so => 106
	i64 u0x755a91767330b3d4, ; 180: lib_Microsoft.Extensions.Configuration.dll.so => 39
	i64 u0x76012e7334db86e5, ; 181: lib_Xamarin.AndroidX.SavedState.dll.so => 79
	i64 u0x76ca07b878f44da0, ; 182: System.Runtime.Numerics.dll => 117
	i64 u0x780bc73597a503a9, ; 183: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i64 u0x783606d1e53e7a1a, ; 184: th/Microsoft.Maui.Controls.resources.dll => 27
	i64 u0x78a45e51311409b6, ; 185: Xamarin.AndroidX.Fragment.dll => 68
	i64 u0x7a71889545dcdb00, ; 186: lib_Microsoft.AspNetCore.Components.WebView.dll.so => 37
	i64 u0x7adb8da2ac89b647, ; 187: fi/Microsoft.Maui.Controls.resources.dll => 7
	i64 u0x7bef86a4335c4870, ; 188: System.ComponentModel.TypeConverter => 95
	i64 u0x7c0820144cd34d6a, ; 189: sk/Microsoft.Maui.Controls.resources.dll => 25
	i64 u0x7c2a0bd1e0f988fc, ; 190: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i64 u0x7d649b75d580bb42, ; 191: ms/Microsoft.Maui.Controls.resources.dll => 17
	i64 u0x7d8ee2bdc8e3aad1, ; 192: System.Numerics.Vectors => 110
	i64 u0x7dfc3d6d9d8d7b70, ; 193: System.Collections => 93
	i64 u0x7e946809d6008ef2, ; 194: lib_System.ObjectModel.dll.so => 111
	i64 u0x7ecc13347c8fd849, ; 195: lib_System.ComponentModel.dll.so => 96
	i64 u0x7f00ddd9b9ca5a13, ; 196: Xamarin.AndroidX.ViewPager.dll => 81
	i64 u0x7f9351cd44b1273f, ; 197: Microsoft.Extensions.Configuration.Abstractions => 40
	i64 u0x7fbd557c99b3ce6f, ; 198: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 70
	i64 u0x8101a73bd4533440, ; 199: Microsoft.AspNetCore.Components.Web => 36
	i64 u0x812c069d5cdecc17, ; 200: System.dll => 128
	i64 u0x81ab745f6c0f5ce6, ; 201: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i64 u0x8277f2be6b5ce05f, ; 202: Xamarin.AndroidX.AppCompat => 59
	i64 u0x828f06563b30bc50, ; 203: lib_Xamarin.AndroidX.CardView.dll.so => 61
	i64 u0x82f6403342e12049, ; 204: uk/Microsoft.Maui.Controls.resources => 29
	i64 u0x83c14ba66c8e2b8c, ; 205: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i64 u0x83de69860da6cbdd, ; 206: Microsoft.Extensions.FileProviders.Composite => 44
	i64 u0x84cdbe4554a10a6c, ; 207: lib_MiMascotaApp.Shared.dll.so => 87
	i64 u0x86a909228dc7657b, ; 208: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i64 u0x86b3e00c36b84509, ; 209: Microsoft.Extensions.Configuration.dll => 39
	i64 u0x8704193f462e892e, ; 210: lib_Microsoft.Extensions.FileSystemGlobbing.dll.so => 47
	i64 u0x87c69b87d9283884, ; 211: lib_System.Threading.Thread.dll.so => 123
	i64 u0x87f6569b25707834, ; 212: System.IO.Compression.Brotli.dll => 100
	i64 u0x8842b3a5d2d3fb36, ; 213: Microsoft.Maui.Essentials => 56
	i64 u0x88bda98e0cffb7a9, ; 214: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 85
	i64 u0x897a606c9e39c75f, ; 215: lib_System.ComponentModel.Primitives.dll.so => 94
	i64 u0x8a88583a910a4ed1, ; 216: MiMascotaApp.Shared => 87
	i64 u0x8ad229ea26432ee2, ; 217: Xamarin.AndroidX.Loader => 73
	i64 u0x8b4ff5d0fdd5faa1, ; 218: lib_System.Diagnostics.DiagnosticSource.dll.so => 98
	i64 u0x8b9ceca7acae3451, ; 219: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i64 u0x8c575135aa1ccef4, ; 220: Microsoft.Extensions.FileProviders.Abstractions => 43
	i64 u0x8d0f420977c2c1c7, ; 221: Xamarin.AndroidX.CursorAdapter.dll => 65
	i64 u0x8d7b8ab4b3310ead, ; 222: System.Threading => 124
	i64 u0x8da188285aadfe8e, ; 223: System.Collections.Concurrent => 89
	i64 u0x8ed807bfe9858dfc, ; 224: Xamarin.AndroidX.Navigation.Common => 74
	i64 u0x8ee08b8194a30f48, ; 225: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i64 u0x8ef7601039857a44, ; 226: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i64 u0x8f32c6f611f6ffab, ; 227: pt/Microsoft.Maui.Controls.resources.dll => 22
	i64 u0x8f8829d21c8985a4, ; 228: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i64 u0x903101b46fb73a04, ; 229: _Microsoft.Android.Resource.Designer => 34
	i64 u0x90393bd4865292f3, ; 230: lib_System.IO.Compression.dll.so => 101
	i64 u0x90634f86c5ebe2b5, ; 231: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 71
	i64 u0x907b636704ad79ef, ; 232: lib_Microsoft.Maui.Controls.Xaml.dll.so => 54
	i64 u0x91418dc638b29e68, ; 233: lib_Xamarin.AndroidX.CustomView.dll.so => 66
	i64 u0x9157bd523cd7ed36, ; 234: lib_System.Text.Json.dll.so => 121
	i64 u0x91a74f07b30d37e2, ; 235: System.Linq.dll => 105
	i64 u0x91fa41a87223399f, ; 236: ca/Microsoft.Maui.Controls.resources.dll => 1
	i64 u0x93cfa73ab28d6e35, ; 237: ms/Microsoft.Maui.Controls.resources => 17
	i64 u0x944077d8ca3c6580, ; 238: System.IO.Compression.dll => 101
	i64 u0x967fc325e09bfa8c, ; 239: es/Microsoft.Maui.Controls.resources => 6
	i64 u0x9732d8dbddea3d9a, ; 240: id/Microsoft.Maui.Controls.resources => 13
	i64 u0x978be80e5210d31b, ; 241: Microsoft.Maui.Graphics.dll => 57
	i64 u0x97b8c771ea3e4220, ; 242: System.ComponentModel.dll => 96
	i64 u0x97e144c9d3c6976e, ; 243: System.Collections.Concurrent.dll => 89
	i64 u0x991d510397f92d9d, ; 244: System.Linq.Expressions => 104
	i64 u0x99a00ca5270c6878, ; 245: Xamarin.AndroidX.Navigation.Runtime => 76
	i64 u0x99cdc6d1f2d3a72f, ; 246: ko/Microsoft.Maui.Controls.resources.dll => 16
	i64 u0x9d5dbcf5a48583fe, ; 247: lib_Xamarin.AndroidX.Activity.dll.so => 58
	i64 u0x9d74dee1a7725f34, ; 248: Microsoft.Extensions.Configuration.Abstractions.dll => 40
	i64 u0x9e4534b6adaf6e84, ; 249: nl/Microsoft.Maui.Controls.resources => 19
	i64 u0x9eaf1efdf6f7267e, ; 250: Xamarin.AndroidX.Navigation.Common.dll => 74
	i64 u0x9ef542cf1f78c506, ; 251: Xamarin.AndroidX.Lifecycle.LiveData.Core => 70
	i64 u0x9fbb2961ca18e5c2, ; 252: Microsoft.Extensions.FileProviders.Physical.dll => 46
	i64 u0xa0d8259f4cc284ec, ; 253: lib_System.Security.Cryptography.dll.so => 119
	i64 u0xa1440773ee9d341e, ; 254: Xamarin.Google.Android.Material => 83
	i64 u0xa1b9d7c27f47219f, ; 255: Xamarin.AndroidX.Navigation.UI.dll => 77
	i64 u0xa2572680829d2c7c, ; 256: System.IO.Pipelines.dll => 103
	i64 u0xa3b8104115a36bf6, ; 257: lib_Microsoft.Extensions.FileProviders.Embedded.dll.so => 45
	i64 u0xa46aa1eaa214539b, ; 258: ko/Microsoft.Maui.Controls.resources => 16
	i64 u0xa5b7152421ed6d98, ; 259: lib_System.IO.FileSystem.Watcher.dll.so => 102
	i64 u0xa5e599d1e0524750, ; 260: System.Numerics.Vectors.dll => 110
	i64 u0xa5f1ba49b85dd355, ; 261: System.Security.Cryptography.dll => 119
	i64 u0xa67dbee13e1df9ca, ; 262: Xamarin.AndroidX.SavedState.dll => 79
	i64 u0xa68a420042bb9b1f, ; 263: Xamarin.AndroidX.DrawerLayout.dll => 67
	i64 u0xa78ce3745383236a, ; 264: Xamarin.AndroidX.Lifecycle.Common.Jvm => 69
	i64 u0xa7c31b56b4dc7b33, ; 265: hu/Microsoft.Maui.Controls.resources => 12
	i64 u0xa82fd211eef00a5b, ; 266: Microsoft.Extensions.FileProviders.Physical => 46
	i64 u0xaa2219c8e3449ff5, ; 267: Microsoft.Extensions.Logging.Abstractions => 49
	i64 u0xaa443ac34067eeef, ; 268: System.Private.Xml.dll => 114
	i64 u0xaa52de307ef5d1dd, ; 269: System.Net.Http => 107
	i64 u0xaaaf86367285a918, ; 270: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 42
	i64 u0xaaf84bb3f052a265, ; 271: el/Microsoft.Maui.Controls.resources => 5
	i64 u0xab9c1b2687d86b0b, ; 272: lib_System.Linq.Expressions.dll.so => 104
	i64 u0xabb8e95e6ca54b53, ; 273: MiMascotaApp.dll => 88
	i64 u0xac2af3fa195a15ce, ; 274: System.Runtime.Numerics => 117
	i64 u0xac5376a2a538dc10, ; 275: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 70
	i64 u0xacd46e002c3ccb97, ; 276: ro/Microsoft.Maui.Controls.resources => 23
	i64 u0xad89c07347f1bad6, ; 277: nl/Microsoft.Maui.Controls.resources.dll => 19
	i64 u0xadbb53caf78a79d2, ; 278: System.Web.HttpUtility => 125
	i64 u0xadc90ab061a9e6e4, ; 279: System.ComponentModel.TypeConverter.dll => 95
	i64 u0xae282bcd03739de7, ; 280: Java.Interop => 130
	i64 u0xae53579c90db1107, ; 281: System.ObjectModel.dll => 111
	i64 u0xaf110fce74ec3b26, ; 282: MiMascotaApp => 88
	i64 u0xafe29f45095518e7, ; 283: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 72
	i64 u0xb05cc42cd94c6d9d, ; 284: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i64 u0xb1ccbf6243328d1c, ; 285: Microsoft.AspNetCore.Components => 35
	i64 u0xb220631954820169, ; 286: System.Text.RegularExpressions => 122
	i64 u0xb2a3f67f3bf29fce, ; 287: da/Microsoft.Maui.Controls.resources => 3
	i64 u0xb3f0a0fcda8d3ebc, ; 288: Xamarin.AndroidX.CardView => 61
	i64 u0xb46be1aa6d4fff93, ; 289: hi/Microsoft.Maui.Controls.resources => 10
	i64 u0xb477491be13109d8, ; 290: ar/Microsoft.Maui.Controls.resources => 0
	i64 u0xb4bd7015ecee9d86, ; 291: System.IO.Pipelines => 103
	i64 u0xb5c7fcdafbc67ee4, ; 292: Microsoft.Extensions.Logging.Abstractions.dll => 49
	i64 u0xb7b7753d1f319409, ; 293: sv/Microsoft.Maui.Controls.resources => 26
	i64 u0xb81a2c6e0aee50fe, ; 294: lib_System.Private.CoreLib.dll.so => 129
	i64 u0xb9f64d3b230def68, ; 295: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i64 u0xb9fc3c8a556e3691, ; 296: ja/Microsoft.Maui.Controls.resources => 15
	i64 u0xba48785529705af9, ; 297: System.Collections.dll => 93
	i64 u0xbaf762c4825c14e9, ; 298: Microsoft.AspNetCore.Components.WebView => 37
	i64 u0xbd0e2c0d55246576, ; 299: System.Net.Http.dll => 107
	i64 u0xbd437a2cdb333d0d, ; 300: Xamarin.AndroidX.ViewPager2 => 82
	i64 u0xbee38d4a88835966, ; 301: Xamarin.AndroidX.AppCompat.AppCompatResources => 60
	i64 u0xc040a4ab55817f58, ; 302: ar/Microsoft.Maui.Controls.resources.dll => 0
	i64 u0xc0d928351ab5ca77, ; 303: System.Console.dll => 97
	i64 u0xc12b8b3afa48329c, ; 304: lib_System.Linq.dll.so => 105
	i64 u0xc1ff9ae3cdb6e1e6, ; 305: Xamarin.AndroidX.Activity.dll => 58
	i64 u0xc28c50f32f81cc73, ; 306: ja/Microsoft.Maui.Controls.resources.dll => 15
	i64 u0xc2a3bca55b573141, ; 307: System.IO.FileSystem.Watcher => 102
	i64 u0xc2bcfec99f69365e, ; 308: Xamarin.AndroidX.ViewPager2.dll => 82
	i64 u0xc4d3858ed4d08512, ; 309: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 72
	i64 u0xc50fded0ded1418c, ; 310: lib_System.ComponentModel.TypeConverter.dll.so => 95
	i64 u0xc519125d6bc8fb11, ; 311: lib_System.Net.Requests.dll.so => 109
	i64 u0xc5293b19e4dc230e, ; 312: Xamarin.AndroidX.Navigation.Fragment => 75
	i64 u0xc5325b2fcb37446f, ; 313: lib_System.Private.Xml.dll.so => 114
	i64 u0xc5a0f4b95a699af7, ; 314: lib_System.Private.Uri.dll.so => 112
	i64 u0xc7ce851898a4548e, ; 315: lib_System.Web.HttpUtility.dll.so => 125
	i64 u0xc858a28d9ee5a6c5, ; 316: lib_System.Collections.Specialized.dll.so => 92
	i64 u0xca3110fea81c8916, ; 317: Microsoft.AspNetCore.Components.Web.dll => 36
	i64 u0xca3a723e7342c5b6, ; 318: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i64 u0xcab3493c70141c2d, ; 319: pl/Microsoft.Maui.Controls.resources => 20
	i64 u0xcacfddc9f7c6de76, ; 320: ro/Microsoft.Maui.Controls.resources.dll => 23
	i64 u0xcbd4fdd9cef4a294, ; 321: lib__Microsoft.Android.Resource.Designer.dll.so => 34
	i64 u0xcc2876b32ef2794c, ; 322: lib_System.Text.RegularExpressions.dll.so => 122
	i64 u0xcc5c3bb714c4561e, ; 323: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 85
	i64 u0xcc76886e09b88260, ; 324: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 86
	i64 u0xccf25c4b634ccd3a, ; 325: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i64 u0xcd10a42808629144, ; 326: System.Net.Requests => 109
	i64 u0xcd8cc0cc3a611fca, ; 327: lib_MiMascotaApp.dll.so => 88
	i64 u0xcdd0c48b6937b21c, ; 328: Xamarin.AndroidX.SwipeRefreshLayout => 80
	i64 u0xcf23d8093f3ceadf, ; 329: System.Diagnostics.DiagnosticSource.dll => 98
	i64 u0xcf8fc898f98b0d34, ; 330: System.Private.Xml.Linq => 113
	i64 u0xd1194e1d8a8de83c, ; 331: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 69
	i64 u0xd2505d8abeed6983, ; 332: lib_Microsoft.AspNetCore.Components.Web.dll.so => 36
	i64 u0xd333d0af9e423810, ; 333: System.Runtime.InteropServices => 115
	i64 u0xd3426d966bb704f5, ; 334: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 60
	i64 u0xd3651b6fc3125825, ; 335: System.Private.Uri.dll => 112
	i64 u0xd373685349b1fe8b, ; 336: Microsoft.Extensions.Logging.dll => 48
	i64 u0xd3e4c8d6a2d5d470, ; 337: it/Microsoft.Maui.Controls.resources => 14
	i64 u0xd4645626dffec99d, ; 338: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 42
	i64 u0xd46b4a8758d1f3ee, ; 339: Microsoft.Extensions.FileProviders.Composite.dll => 44
	i64 u0xd5507e11a2b2839f, ; 340: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 72
	i64 u0xd6694f8359737e4e, ; 341: Xamarin.AndroidX.SavedState => 79
	i64 u0xd6d21782156bc35b, ; 342: Xamarin.AndroidX.SwipeRefreshLayout.dll => 80
	i64 u0xd72329819cbbbc44, ; 343: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 40
	i64 u0xd7b3764ada9d341d, ; 344: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 49
	i64 u0xda1dfa4c534a9251, ; 345: Microsoft.Extensions.DependencyInjection => 41
	i64 u0xdad05a11827959a3, ; 346: System.Collections.NonGeneric.dll => 91
	i64 u0xdb5383ab5865c007, ; 347: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i64 u0xdbeda89f832aa805, ; 348: vi/Microsoft.Maui.Controls.resources.dll => 30
	i64 u0xdbf9607a441b4505, ; 349: System.Linq => 105
	i64 u0xdce2c53525640bf3, ; 350: Microsoft.Extensions.Logging => 48
	i64 u0xdd2b722d78ef5f43, ; 351: System.Runtime.dll => 118
	i64 u0xdd67031857c72f96, ; 352: lib_System.Text.Encodings.Web.dll.so => 120
	i64 u0xdde30e6b77aa6f6c, ; 353: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i64 u0xde8769ebda7d8647, ; 354: hr/Microsoft.Maui.Controls.resources.dll => 11
	i64 u0xe0142572c095a480, ; 355: Xamarin.AndroidX.AppCompat.dll => 59
	i64 u0xe02f89350ec78051, ; 356: Xamarin.AndroidX.CoordinatorLayout.dll => 63
	i64 u0xe192a588d4410686, ; 357: lib_System.IO.Pipelines.dll.so => 103
	i64 u0xe1a08bd3fa539e0d, ; 358: System.Runtime.Loader => 116
	i64 u0xe1b52f9f816c70ef, ; 359: System.Private.Xml.Linq.dll => 113
	i64 u0xe2420585aeceb728, ; 360: System.Net.Requests.dll => 109
	i64 u0xe29b73bc11392966, ; 361: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i64 u0xe31089e70e4e84ee, ; 362: Microsoft.AspNetCore.Components.WebView.Maui => 38
	i64 u0xe3811d68d4fe8463, ; 363: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i64 u0xe494f7ced4ecd10a, ; 364: hu/Microsoft.Maui.Controls.resources.dll => 12
	i64 u0xe4a9b1e40d1e8917, ; 365: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i64 u0xe5434e8a119ceb69, ; 366: lib_Mono.Android.dll.so => 132
	i64 u0xe9772100456fb4b4, ; 367: Microsoft.AspNetCore.Components.dll => 35
	i64 u0xea154e342c6ac70f, ; 368: Microsoft.Extensions.FileProviders.Embedded.dll => 45
	i64 u0xedc632067fb20ff3, ; 369: System.Memory.dll => 106
	i64 u0xedc8e4ca71a02a8b, ; 370: Xamarin.AndroidX.Navigation.Runtime.dll => 76
	i64 u0xeeb7ebb80150501b, ; 371: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 62
	i64 u0xef72742e1bcca27a, ; 372: Microsoft.Maui.Essentials.dll => 56
	i64 u0xefec0b7fdc57ec42, ; 373: Xamarin.AndroidX.Activity => 58
	i64 u0xf00c29406ea45e19, ; 374: es/Microsoft.Maui.Controls.resources.dll => 6
	i64 u0xf11b621fc87b983f, ; 375: Microsoft.Maui.Controls.Xaml.dll => 54
	i64 u0xf1c4b4005493d871, ; 376: System.Formats.Asn1.dll => 99
	i64 u0xf238bd79489d3a96, ; 377: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i64 u0xf37221fda4ef8830, ; 378: lib_Xamarin.Google.Android.Material.dll.so => 83
	i64 u0xf3ddfe05336abf29, ; 379: System => 128
	i64 u0xf4c1dd70a5496a17, ; 380: System.IO.Compression => 101
	i64 u0xf6077741019d7428, ; 381: Xamarin.AndroidX.CoordinatorLayout => 63
	i64 u0xf77b20923f07c667, ; 382: de/Microsoft.Maui.Controls.resources.dll => 4
	i64 u0xf7e2cac4c45067b3, ; 383: lib_System.Numerics.Vectors.dll.so => 110
	i64 u0xf7e74930e0e3d214, ; 384: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i64 u0xf84773b5c81e3cef, ; 385: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i64 u0xf8e045dc345b2ea3, ; 386: lib_Xamarin.AndroidX.RecyclerView.dll.so => 78
	i64 u0xf915dc29808193a1, ; 387: System.Web.HttpUtility.dll => 125
	i64 u0xf96c777a2a0686f4, ; 388: hi/Microsoft.Maui.Controls.resources.dll => 10
	i64 u0xf9eec5bb3a6aedc6, ; 389: Microsoft.Extensions.Options => 50
	i64 u0xfa504dfa0f097d72, ; 390: Microsoft.Extensions.FileProviders.Abstractions.dll => 43
	i64 u0xfa5ed7226d978949, ; 391: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i64 u0xfa645d91e9fc4cba, ; 392: System.Threading.Thread => 123
	i64 u0xfbf0a31c9fc34bc4, ; 393: lib_System.Net.Http.dll.so => 107
	i64 u0xfc719aec26adf9d9, ; 394: Xamarin.AndroidX.Navigation.Fragment.dll => 75
	i64 u0xfd22f00870e40ae0, ; 395: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 67
	i64 u0xfd2e866c678cac90, ; 396: lib_Microsoft.AspNetCore.Components.WebView.Maui.dll.so => 38
	i64 u0xfd583f7657b6a1cb, ; 397: Xamarin.AndroidX.Fragment => 68
	i64 u0xfeae9952cf03b8cb ; 398: tr/Microsoft.Maui.Controls.resources => 28
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [399 x i32] [
	i32 80, i32 76, i32 131, i32 59, i32 24, i32 2, i32 30, i32 108,
	i32 78, i32 93, i32 55, i32 31, i32 126, i32 62, i32 35, i32 24,
	i32 91, i32 67, i32 50, i32 91, i32 119, i32 25, i32 86, i32 81,
	i32 21, i32 132, i32 56, i32 66, i32 100, i32 78, i32 8, i32 130,
	i32 9, i32 42, i32 12, i32 120, i32 86, i32 18, i32 89, i32 128,
	i32 27, i32 46, i32 131, i32 77, i32 16, i32 87, i32 50, i32 100,
	i32 118, i32 27, i32 123, i32 97, i32 64, i32 8, i32 84, i32 51,
	i32 13, i32 11, i32 130, i32 108, i32 29, i32 7, i32 122, i32 99,
	i32 33, i32 47, i32 20, i32 113, i32 124, i32 26, i32 121, i32 5,
	i32 52, i32 127, i32 68, i32 45, i32 34, i32 61, i32 8, i32 127,
	i32 47, i32 90, i32 6, i32 44, i32 55, i32 2, i32 53, i32 82,
	i32 39, i32 90, i32 66, i32 81, i32 1, i32 43, i32 52, i32 84,
	i32 126, i32 64, i32 37, i32 74, i32 60, i32 132, i32 20, i32 84,
	i32 24, i32 126, i32 22, i32 111, i32 77, i32 121, i32 73, i32 104,
	i32 114, i32 116, i32 14, i32 73, i32 52, i32 131, i32 1, i32 53,
	i32 71, i32 108, i32 64, i32 57, i32 25, i32 31, i32 118, i32 69,
	i32 92, i32 112, i32 129, i32 98, i32 15, i32 41, i32 63, i32 124,
	i32 96, i32 3, i32 48, i32 38, i32 115, i32 62, i32 92, i32 120,
	i32 94, i32 127, i32 5, i32 41, i32 85, i32 106, i32 54, i32 4,
	i32 116, i32 129, i32 90, i32 83, i32 53, i32 117, i32 97, i32 71,
	i32 65, i32 3, i32 99, i32 9, i32 115, i32 18, i32 57, i32 51,
	i32 65, i32 51, i32 75, i32 55, i32 2, i32 102, i32 28, i32 18,
	i32 14, i32 94, i32 11, i32 106, i32 39, i32 79, i32 117, i32 17,
	i32 27, i32 68, i32 37, i32 7, i32 95, i32 25, i32 4, i32 17,
	i32 110, i32 93, i32 111, i32 96, i32 81, i32 40, i32 70, i32 36,
	i32 128, i32 33, i32 59, i32 61, i32 29, i32 32, i32 44, i32 87,
	i32 33, i32 39, i32 47, i32 123, i32 100, i32 56, i32 85, i32 94,
	i32 87, i32 73, i32 98, i32 9, i32 43, i32 65, i32 124, i32 89,
	i32 74, i32 10, i32 23, i32 22, i32 21, i32 34, i32 101, i32 71,
	i32 54, i32 66, i32 121, i32 105, i32 1, i32 17, i32 101, i32 6,
	i32 13, i32 57, i32 96, i32 89, i32 104, i32 76, i32 16, i32 58,
	i32 40, i32 19, i32 74, i32 70, i32 46, i32 119, i32 83, i32 77,
	i32 103, i32 45, i32 16, i32 102, i32 110, i32 119, i32 79, i32 67,
	i32 69, i32 12, i32 46, i32 49, i32 114, i32 107, i32 42, i32 5,
	i32 104, i32 88, i32 117, i32 70, i32 23, i32 19, i32 125, i32 95,
	i32 130, i32 111, i32 88, i32 72, i32 26, i32 35, i32 122, i32 3,
	i32 61, i32 10, i32 0, i32 103, i32 49, i32 26, i32 129, i32 22,
	i32 15, i32 93, i32 37, i32 107, i32 82, i32 60, i32 0, i32 97,
	i32 105, i32 58, i32 15, i32 102, i32 82, i32 72, i32 95, i32 109,
	i32 75, i32 114, i32 112, i32 125, i32 92, i32 36, i32 28, i32 20,
	i32 23, i32 34, i32 122, i32 85, i32 86, i32 32, i32 109, i32 88,
	i32 80, i32 98, i32 113, i32 69, i32 36, i32 115, i32 60, i32 112,
	i32 48, i32 14, i32 42, i32 44, i32 72, i32 79, i32 80, i32 40,
	i32 49, i32 41, i32 91, i32 30, i32 30, i32 105, i32 48, i32 118,
	i32 120, i32 32, i32 11, i32 59, i32 63, i32 103, i32 116, i32 113,
	i32 109, i32 13, i32 38, i32 21, i32 12, i32 7, i32 132, i32 35,
	i32 45, i32 106, i32 76, i32 62, i32 56, i32 58, i32 6, i32 54,
	i32 99, i32 19, i32 83, i32 128, i32 101, i32 63, i32 4, i32 110,
	i32 31, i32 29, i32 78, i32 125, i32 10, i32 50, i32 43, i32 0,
	i32 123, i32 107, i32 75, i32 67, i32 38, i32 68, i32 28
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 0ccdc57cf7fc59bd3f6cbf900c9cdbebadfe4609"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
