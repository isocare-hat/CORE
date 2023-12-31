using System.ServiceModel; 
using System.Runtime.Serialization; 
namespace Sybase.PowerBuilder.WCFNVO
{
	[DataContract]
	public struct str_paytab
	{
		internal str_paytab(c__str_paytab __x__)
		{
			CopyFrom(out this, __x__);
		}
		internal void CopyFrom(c__str_paytab __x__)
		{
			CopyFrom(out this, __x__);
		}
		[DataMember] 
		public string loancontract_no;
		[DataMember] 
		public string contcoop_id;
		[DataMember] 
		public System.Int16 paytab_type;
		[DataMember] 
		public System.Int16 prnbalfrom_type;
		[DataMember] 
		public string xml_criteria;
		[DataMember] 
		public string xml_paytab;
		[DataMember] 
		public string coop_id;
		internal void CopyTo(c__str_paytab __x__)
		{
			__x__.loancontract_no = loancontract_no;
			__x__.contcoop_id = contcoop_id;
			__x__.paytab_type = paytab_type;
			__x__.prnbalfrom_type = prnbalfrom_type;
			__x__.xml_criteria = xml_criteria;
			__x__.xml_paytab = xml_paytab;
			__x__.coop_id = coop_id;
		}
		internal static void CopyFrom(out str_paytab __this__, c__str_paytab __x__)
		{
			__this__.loancontract_no = __x__.loancontract_no;
			__this__.contcoop_id = __x__.contcoop_id;
			__this__.paytab_type = __x__.paytab_type;
			__this__.prnbalfrom_type = __x__.prnbalfrom_type;
			__this__.xml_criteria = __x__.xml_criteria;
			__this__.xml_paytab = __x__.xml_paytab;
			__this__.coop_id = __x__.coop_id;
		}
		public static explicit operator object[](str_paytab __this__)
		{
			return new object[] {
				__this__.loancontract_no
				,__this__.contcoop_id
				,__this__.paytab_type
				,__this__.prnbalfrom_type
				,__this__.xml_criteria
				,__this__.xml_paytab
				,__this__.coop_id
			};
		}
	}
} 