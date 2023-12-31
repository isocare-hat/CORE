using System.ServiceModel; 
using System.Runtime.Serialization; 
namespace Sybase.PowerBuilder.WCFNVO
{
	[DataContract]
	public struct str_compound
	{
		internal str_compound(c__str_compound __x__)
		{
			CopyFrom(out this, __x__);
		}
		internal void CopyFrom(c__str_compound __x__)
		{
			CopyFrom(out this, __x__);
		}
		[DataMember] 
		public string member_no;
		[DataMember] 
		public string memcoop_id;
		[DataMember] 
		public System.DateTime comp_date;
		[DataMember] 
		public System.Int16 comp_type;
		[DataMember] 
		public string xml_comphead;
		[DataMember] 
		public string xml_compmemb;
		[DataMember] 
		public string xml_compshare;
		[DataMember] 
		public string xml_comploan;
		[DataMember] 
		public string entry_id;
		[DataMember] 
		public string coop_id;
		internal void CopyTo(c__str_compound __x__)
		{
			__x__.member_no = member_no;
			__x__.memcoop_id = memcoop_id;
			__x__.comp_date = comp_date;
			__x__.comp_type = comp_type;
			__x__.xml_comphead = xml_comphead;
			__x__.xml_compmemb = xml_compmemb;
			__x__.xml_compshare = xml_compshare;
			__x__.xml_comploan = xml_comploan;
			__x__.entry_id = entry_id;
			__x__.coop_id = coop_id;
		}
		internal static void CopyFrom(out str_compound __this__, c__str_compound __x__)
		{
			__this__.member_no = __x__.member_no;
			__this__.memcoop_id = __x__.memcoop_id;
			__this__.comp_date = __x__.comp_date;
			__this__.comp_type = __x__.comp_type;
			__this__.xml_comphead = __x__.xml_comphead;
			__this__.xml_compmemb = __x__.xml_compmemb;
			__this__.xml_compshare = __x__.xml_compshare;
			__this__.xml_comploan = __x__.xml_comploan;
			__this__.entry_id = __x__.entry_id;
			__this__.coop_id = __x__.coop_id;
		}
		public static explicit operator object[](str_compound __this__)
		{
			return new object[] {
				__this__.member_no
				,__this__.memcoop_id
				,__this__.comp_date
				,__this__.comp_type
				,__this__.xml_comphead
				,__this__.xml_compmemb
				,__this__.xml_compshare
				,__this__.xml_comploan
				,__this__.entry_id
				,__this__.coop_id
			};
		}
	}
} 