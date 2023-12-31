using System.ServiceModel; 
using System.Runtime.Serialization; 
namespace Sybase.PowerBuilder.WCFNVO
{
	[DataContract]
	public struct str_keep_request
	{
		internal str_keep_request(c__str_keep_request __x__)
		{
			CopyFrom(out this, __x__);
		}
		internal void CopyFrom(c__str_keep_request __x__)
		{
			CopyFrom(out this, __x__);
		}
		[DataMember] 
		public string xml_main;
		[DataMember] 
		public string xml_detail;
		[DataMember] 
		public string xml_option;
		[DataMember] 
		public string xml_list;
		[DataMember] 
		public string member_no;
		[DataMember] 
		public string memcoop_id;
		[DataMember] 
		public string entry_id;
		[DataMember] 
		public string refchggrp_docno;
		[DataMember] 
		public System.Int16 approve_status;
		[DataMember] 
		public System.DateTime operate_date;
		internal void CopyTo(c__str_keep_request __x__)
		{
			__x__.xml_main = xml_main;
			__x__.xml_detail = xml_detail;
			__x__.xml_option = xml_option;
			__x__.xml_list = xml_list;
			__x__.member_no = member_no;
			__x__.memcoop_id = memcoop_id;
			__x__.entry_id = entry_id;
			__x__.refchggrp_docno = refchggrp_docno;
			__x__.approve_status = approve_status;
			__x__.operate_date = operate_date;
		}
		internal static void CopyFrom(out str_keep_request __this__, c__str_keep_request __x__)
		{
			__this__.xml_main = __x__.xml_main;
			__this__.xml_detail = __x__.xml_detail;
			__this__.xml_option = __x__.xml_option;
			__this__.xml_list = __x__.xml_list;
			__this__.member_no = __x__.member_no;
			__this__.memcoop_id = __x__.memcoop_id;
			__this__.entry_id = __x__.entry_id;
			__this__.refchggrp_docno = __x__.refchggrp_docno;
			__this__.approve_status = __x__.approve_status;
			__this__.operate_date = __x__.operate_date;
		}
		public static explicit operator object[](str_keep_request __this__)
		{
			return new object[] {
				__this__.xml_main
				,__this__.xml_detail
				,__this__.xml_option
				,__this__.xml_list
				,__this__.member_no
				,__this__.memcoop_id
				,__this__.entry_id
				,__this__.refchggrp_docno
				,__this__.approve_status
				,__this__.operate_date
			};
		}
	}
} 