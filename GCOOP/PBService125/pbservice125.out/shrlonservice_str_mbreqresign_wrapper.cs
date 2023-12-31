using System.ServiceModel; 
using System.Runtime.Serialization; 
namespace Sybase.PowerBuilder.WCFNVO
{
	[DataContract]
	public struct str_mbreqresign
	{
		internal str_mbreqresign(c__str_mbreqresign __x__)
		{
			CopyFrom(out this, __x__);
		}
		internal void CopyFrom(c__str_mbreqresign __x__)
		{
			CopyFrom(out this, __x__);
		}
		[DataMember] 
		public string coop_id;
		[DataMember] 
		public string memcoop_id;
		[DataMember] 
		public string member_no;
		[DataMember] 
		public string req_no;
		[DataMember] 
		public string xml_request;
		[DataMember] 
		public string xml_share;
		[DataMember] 
		public string xml_loan;
		[DataMember] 
		public string xml_dept;
		[DataMember] 
		public string xml_grt;
		[DataMember] 
		public string xml_sum;
		[DataMember] 
		public string xml_reqopt;
		[DataMember] 
		public string entry_id;
		[DataMember] 
		public string xml_reqlist;
		[DataMember] 
		public System.DateTime req_date;
		[DataMember] 
		public System.DateTime entry_date;
		internal void CopyTo(c__str_mbreqresign __x__)
		{
			__x__.coop_id = coop_id;
			__x__.memcoop_id = memcoop_id;
			__x__.member_no = member_no;
			__x__.req_no = req_no;
			__x__.xml_request = xml_request;
			__x__.xml_share = xml_share;
			__x__.xml_loan = xml_loan;
			__x__.xml_dept = xml_dept;
			__x__.xml_grt = xml_grt;
			__x__.xml_sum = xml_sum;
			__x__.xml_reqopt = xml_reqopt;
			__x__.entry_id = entry_id;
			__x__.xml_reqlist = xml_reqlist;
			__x__.req_date = req_date;
			__x__.entry_date = entry_date;
		}
		internal static void CopyFrom(out str_mbreqresign __this__, c__str_mbreqresign __x__)
		{
			__this__.coop_id = __x__.coop_id;
			__this__.memcoop_id = __x__.memcoop_id;
			__this__.member_no = __x__.member_no;
			__this__.req_no = __x__.req_no;
			__this__.xml_request = __x__.xml_request;
			__this__.xml_share = __x__.xml_share;
			__this__.xml_loan = __x__.xml_loan;
			__this__.xml_dept = __x__.xml_dept;
			__this__.xml_grt = __x__.xml_grt;
			__this__.xml_sum = __x__.xml_sum;
			__this__.xml_reqopt = __x__.xml_reqopt;
			__this__.entry_id = __x__.entry_id;
			__this__.xml_reqlist = __x__.xml_reqlist;
			__this__.req_date = __x__.req_date;
			__this__.entry_date = __x__.entry_date;
		}
		public static explicit operator object[](str_mbreqresign __this__)
		{
			return new object[] {
				__this__.coop_id
				,__this__.memcoop_id
				,__this__.member_no
				,__this__.req_no
				,__this__.xml_request
				,__this__.xml_share
				,__this__.xml_loan
				,__this__.xml_dept
				,__this__.xml_grt
				,__this__.xml_sum
				,__this__.xml_reqopt
				,__this__.entry_id
				,__this__.xml_reqlist
				,__this__.req_date
				,__this__.entry_date
			};
		}
	}
} 