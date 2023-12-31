using System.ServiceModel; 
using System.Runtime.Serialization; 
namespace Sybase.PowerBuilder.WCFNVO
{
	[DataContract]
	public struct str_savereqloan
	{
		internal str_savereqloan(c__str_savereqloan __x__)
		{
			CopyFrom(out this, __x__);
		}
		internal void CopyFrom(c__str_savereqloan __x__)
		{
			CopyFrom(out this, __x__);
		}
		[DataMember] 
		public string request_no;
		[DataMember] 
		public string format_type;
		[DataMember] 
		public string xml_main;
		[DataMember] 
		public string xml_clear;
		[DataMember] 
		public string xml_guarantee;
		[DataMember] 
		public string xml_insurance;
		[DataMember] 
		public string xml_reqperiod;
		[DataMember] 
		public string xml_intspc;
		[DataMember] 
		public string xml_otherclr;
		[DataMember] 
		public string xml_mthexp;
		[DataMember] 
		public string entry_id;
		[DataMember] 
		public string branch_id;
		[DataMember] 
		public string xml_reverse;
		[DataMember] 
		public string xml_reversecoll;
		[DataMember] 
		public string coop_id;
		[DataMember] 
		public string contcoopid;
		[DataMember] 
		public string loancontract_no;
		[DataMember] 
		public string xml_intcertdet;
		internal void CopyTo(c__str_savereqloan __x__)
		{
			__x__.request_no = request_no;
			__x__.format_type = format_type;
			__x__.xml_main = xml_main;
			__x__.xml_clear = xml_clear;
			__x__.xml_guarantee = xml_guarantee;
			__x__.xml_insurance = xml_insurance;
			__x__.xml_reqperiod = xml_reqperiod;
			__x__.xml_intspc = xml_intspc;
			__x__.xml_otherclr = xml_otherclr;
			__x__.xml_mthexp = xml_mthexp;
			__x__.entry_id = entry_id;
			__x__.branch_id = branch_id;
			__x__.xml_reverse = xml_reverse;
			__x__.xml_reversecoll = xml_reversecoll;
			__x__.coop_id = coop_id;
			__x__.contcoopid = contcoopid;
			__x__.loancontract_no = loancontract_no;
			__x__.xml_intcertdet = xml_intcertdet;
		}
		internal static void CopyFrom(out str_savereqloan __this__, c__str_savereqloan __x__)
		{
			__this__.request_no = __x__.request_no;
			__this__.format_type = __x__.format_type;
			__this__.xml_main = __x__.xml_main;
			__this__.xml_clear = __x__.xml_clear;
			__this__.xml_guarantee = __x__.xml_guarantee;
			__this__.xml_insurance = __x__.xml_insurance;
			__this__.xml_reqperiod = __x__.xml_reqperiod;
			__this__.xml_intspc = __x__.xml_intspc;
			__this__.xml_otherclr = __x__.xml_otherclr;
			__this__.xml_mthexp = __x__.xml_mthexp;
			__this__.entry_id = __x__.entry_id;
			__this__.branch_id = __x__.branch_id;
			__this__.xml_reverse = __x__.xml_reverse;
			__this__.xml_reversecoll = __x__.xml_reversecoll;
			__this__.coop_id = __x__.coop_id;
			__this__.contcoopid = __x__.contcoopid;
			__this__.loancontract_no = __x__.loancontract_no;
			__this__.xml_intcertdet = __x__.xml_intcertdet;
		}
		public static explicit operator object[](str_savereqloan __this__)
		{
			return new object[] {
				__this__.request_no
				,__this__.format_type
				,__this__.xml_main
				,__this__.xml_clear
				,__this__.xml_guarantee
				,__this__.xml_insurance
				,__this__.xml_reqperiod
				,__this__.xml_intspc
				,__this__.xml_otherclr
				,__this__.xml_mthexp
				,__this__.entry_id
				,__this__.branch_id
				,__this__.xml_reverse
				,__this__.xml_reversecoll
				,__this__.coop_id
				,__this__.contcoopid
				,__this__.loancontract_no
				,__this__.xml_intcertdet
			};
		}
	}
} 