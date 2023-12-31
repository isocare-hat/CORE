using System.ServiceModel; 
using System.Runtime.Serialization; 
namespace Sybase.PowerBuilder.WCFNVO
{
	[DataContract]
	public struct str_divsrv_proc
	{
		internal str_divsrv_proc(c__str_divsrv_proc __x__)
		{
			CopyFrom(out this, __x__);
		}
		internal void CopyFrom(c__str_divsrv_proc __x__)
		{
			CopyFrom(out this, __x__);
		}
		[DataMember] 
		public string xml_option;
		[DataMember] 
		public string xml_option_lntype;
		[DataMember] 
		public string xml_report;
		[DataMember] 
		public string xml_main;
		[DataMember] 
		public string xml_shr;
		[DataMember] 
		public string xml_lon;
		[DataMember] 
		public string xml_shr_stm;
		internal void CopyTo(c__str_divsrv_proc __x__)
		{
			__x__.xml_option = xml_option;
			__x__.xml_option_lntype = xml_option_lntype;
			__x__.xml_report = xml_report;
			__x__.xml_main = xml_main;
			__x__.xml_shr = xml_shr;
			__x__.xml_lon = xml_lon;
			__x__.xml_shr_stm = xml_shr_stm;
		}
		internal static void CopyFrom(out str_divsrv_proc __this__, c__str_divsrv_proc __x__)
		{
			__this__.xml_option = __x__.xml_option;
			__this__.xml_option_lntype = __x__.xml_option_lntype;
			__this__.xml_report = __x__.xml_report;
			__this__.xml_main = __x__.xml_main;
			__this__.xml_shr = __x__.xml_shr;
			__this__.xml_lon = __x__.xml_lon;
			__this__.xml_shr_stm = __x__.xml_shr_stm;
		}
		public static explicit operator object[](str_divsrv_proc __this__)
		{
			return new object[] {
				__this__.xml_option
				,__this__.xml_option_lntype
				,__this__.xml_report
				,__this__.xml_main
				,__this__.xml_shr
				,__this__.xml_lon
				,__this__.xml_shr_stm
			};
		}
	}
} 