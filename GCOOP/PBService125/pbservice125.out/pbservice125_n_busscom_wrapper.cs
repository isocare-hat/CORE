using System.ServiceModel; 
using System.Runtime.Serialization; 
using System.Net.Security; 
using System.ServiceModel.Web; 
using System.ServiceModel.Activation; 
using System.Transactions; 
using Sybase.PowerBuilder.WCFNVO; 
namespace pbservice125
{
	[System.Diagnostics.DebuggerStepThrough]
	[ServiceContract(Name="n_busscom",Namespace="http://tempurl.org")]
	public class n_busscom : System.IDisposable 
	{
		internal pbservice125.c__n_busscom __nvo__;
		private bool ____disposed____ = false;
		public void Dispose()
		{
			if (____disposed____)
				return;
			____disposed____ = true;
			c__pbservice125.InitSession(__nvo__.Session);
			Sybase.PowerBuilder.WPF.PBSession.CurrentSession.DestroyObject(__nvo__);
			c__pbservice125.RestoreOldSession();
		}
		public n_busscom()
		{
			
			c__pbservice125.InitAssembly();
			__nvo__ = (pbservice125.c__n_busscom)Sybase.PowerBuilder.WPF.PBSession.CurrentSession.CreateInstance(typeof(pbservice125.c__n_busscom));
			c__pbservice125.RestoreOldSession();
		}
		internal n_busscom(pbservice125.c__n_busscom nvo)
		{
			__nvo__ = nvo;
		}
		[OperationContract(Name="of_pototype")]
		public virtual string of_pototype(string as_wspass, string as_agument)
		{
			c__pbservice125.InitSession(__nvo__.Session);
			string __retval__;
			Sybase.PowerBuilder.PBString as_wspass__temp__;
			as_wspass__temp__ = new Sybase.PowerBuilder.PBString((string)as_wspass);
			Sybase.PowerBuilder.PBString as_agument__temp__;
			as_agument__temp__ = new Sybase.PowerBuilder.PBString((string)as_agument);
			__retval__ = ((pbservice125.c__n_busscom)__nvo__).of_pototype(as_wspass__temp__, as_agument__temp__);
			c__pbservice125.RestoreOldSession();
			return __retval__;
		}
		[OperationContract(Name="of_cal_yearmonth")]
		public virtual decimal of_cal_yearmonth(string as_wspass, System.DateTime adtm_start, System.DateTime adtm_end)
		{
			c__pbservice125.InitSession(__nvo__.Session);
			decimal __retval__;
			Sybase.PowerBuilder.PBString as_wspass__temp__;
			as_wspass__temp__ = new Sybase.PowerBuilder.PBString((string)as_wspass);
			Sybase.PowerBuilder.PBDateTime adtm_start__temp__;
			adtm_start__temp__ = new Sybase.PowerBuilder.PBDateTime((System.DateTime)adtm_start);
			Sybase.PowerBuilder.PBDateTime adtm_end__temp__;
			adtm_end__temp__ = new Sybase.PowerBuilder.PBDateTime((System.DateTime)adtm_end);
			__retval__ = ((pbservice125.c__n_busscom)__nvo__).of_cal_yearmonth(as_wspass__temp__, adtm_start__temp__, adtm_end__temp__);
			c__pbservice125.RestoreOldSession();
			return __retval__;
		}
		[OperationContract(Name="of_getprocessdate")]
		public virtual System.DateTime of_getprocessdate(string as_wspass, System.DateTime adtm_current)
		{
			c__pbservice125.InitSession(__nvo__.Session);
			System.DateTime __retval__;
			Sybase.PowerBuilder.PBString as_wspass__temp__;
			as_wspass__temp__ = new Sybase.PowerBuilder.PBString((string)as_wspass);
			Sybase.PowerBuilder.PBDateTime adtm_current__temp__;
			adtm_current__temp__ = new Sybase.PowerBuilder.PBDateTime((System.DateTime)adtm_current);
			__retval__ = ((pbservice125.c__n_busscom)__nvo__).of_getprocessdate(as_wspass__temp__, adtm_current__temp__);
			c__pbservice125.RestoreOldSession();
			return __retval__;
		}
		[OperationContract(Name="of_getpostingdate")]
		public virtual System.DateTime of_getpostingdate(string as_wspass, System.DateTime ldtm_procdate)
		{
			c__pbservice125.InitSession(__nvo__.Session);
			System.DateTime __retval__;
			Sybase.PowerBuilder.PBString as_wspass__temp__;
			as_wspass__temp__ = new Sybase.PowerBuilder.PBString((string)as_wspass);
			Sybase.PowerBuilder.PBDateTime ldtm_procdate__temp__;
			ldtm_procdate__temp__ = new Sybase.PowerBuilder.PBDateTime((System.DateTime)ldtm_procdate);
			__retval__ = ((pbservice125.c__n_busscom)__nvo__).of_getpostingdate(as_wspass__temp__, ldtm_procdate__temp__);
			c__pbservice125.RestoreOldSession();
			return __retval__;
		}
		[OperationContract(Name="of_getnextprocessdate")]
		public virtual System.DateTime of_getnextprocessdate(string as_wspass, System.DateTime ldtm_procdate)
		{
			c__pbservice125.InitSession(__nvo__.Session);
			System.DateTime __retval__;
			Sybase.PowerBuilder.PBString as_wspass__temp__;
			as_wspass__temp__ = new Sybase.PowerBuilder.PBString((string)as_wspass);
			Sybase.PowerBuilder.PBDateTime ldtm_procdate__temp__;
			ldtm_procdate__temp__ = new Sybase.PowerBuilder.PBDateTime((System.DateTime)ldtm_procdate);
			__retval__ = ((pbservice125.c__n_busscom)__nvo__).of_getnextprocessdate(as_wspass__temp__, ldtm_procdate__temp__);
			c__pbservice125.RestoreOldSession();
			return __retval__;
		}
		[OperationContract(Name="of_getaccountdate")]
		public virtual System.Int16 of_getaccountdate(string as_wspass, System.Int16 ai_year, ref System.DateTime adtm_start, ref System.DateTime adtm_end)
		{
			c__pbservice125.InitSession(__nvo__.Session);
			System.Int16 __retval__;
			Sybase.PowerBuilder.PBString as_wspass__temp__;
			as_wspass__temp__ = new Sybase.PowerBuilder.PBString((string)as_wspass);
			Sybase.PowerBuilder.PBInt ai_year__temp__;
			ai_year__temp__ = new Sybase.PowerBuilder.PBInt((System.Int16)ai_year);
			Sybase.PowerBuilder.PBDateTime adtm_start__temp__ = adtm_start;
			Sybase.PowerBuilder.PBDateTime adtm_end__temp__ = adtm_end;
			__retval__ = ((pbservice125.c__n_busscom)__nvo__).of_getaccountdate(as_wspass__temp__, ai_year__temp__, ref adtm_start__temp__, ref adtm_end__temp__);
			adtm_start = adtm_start__temp__;
			adtm_end = adtm_end__temp__;
			c__pbservice125.RestoreOldSession();
			return __retval__;
		}
		[OperationContract(Name="of_getpostingdate2")]
		public virtual System.DateTime of_getpostingdate2(string as_wspass, System.Int16 ai_year, System.Int16 ai_month)
		{
			c__pbservice125.InitSession(__nvo__.Session);
			System.DateTime __retval__;
			Sybase.PowerBuilder.PBString as_wspass__temp__;
			as_wspass__temp__ = new Sybase.PowerBuilder.PBString((string)as_wspass);
			Sybase.PowerBuilder.PBInt ai_year__temp__;
			ai_year__temp__ = new Sybase.PowerBuilder.PBInt((System.Int16)ai_year);
			Sybase.PowerBuilder.PBInt ai_month__temp__;
			ai_month__temp__ = new Sybase.PowerBuilder.PBInt((System.Int16)ai_month);
			__retval__ = ((pbservice125.c__n_busscom)__nvo__).of_getpostingdate2(as_wspass__temp__, ai_year__temp__, ai_month__temp__);
			c__pbservice125.RestoreOldSession();
			return __retval__;
		}
		[OperationContract(Name="of_relativeworkdate")]
		public virtual System.DateTime of_relativeworkdate(string as_wspass, System.DateTime adtm_currentdate, System.Int16 ai_increase)
		{
			c__pbservice125.InitSession(__nvo__.Session);
			System.DateTime __retval__;
			Sybase.PowerBuilder.PBString as_wspass__temp__;
			as_wspass__temp__ = new Sybase.PowerBuilder.PBString((string)as_wspass);
			Sybase.PowerBuilder.PBDateTime adtm_currentdate__temp__;
			adtm_currentdate__temp__ = new Sybase.PowerBuilder.PBDateTime((System.DateTime)adtm_currentdate);
			Sybase.PowerBuilder.PBInt ai_increase__temp__;
			ai_increase__temp__ = new Sybase.PowerBuilder.PBInt((System.Int16)ai_increase);
			__retval__ = ((pbservice125.c__n_busscom)__nvo__).of_relativeworkdate(as_wspass__temp__, adtm_currentdate__temp__, ai_increase__temp__);
			c__pbservice125.RestoreOldSession();
			return __retval__;
		}
	}
} 