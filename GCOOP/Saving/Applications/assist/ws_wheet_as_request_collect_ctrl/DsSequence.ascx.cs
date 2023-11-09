using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoreSavingLibrary;
using System.Data;

namespace Saving.Applications.assist.ws_wheet_as_request_collect_ctrl
{
    public partial class DsSequence : DataSourceFormView
    {
        public DataSet1.DataDsSequenceDataTable DATA { get; set; }
        public void InitDsSequence(PageWeb pw)
        {
            css1.Visible = false;
            DataSet1 ds = new DataSet1();
            this.DATA = ds.DataDsSequence;
            this.EventItemChanged = "OnDsSequenceItemChanged";
            this.EventClicked = "OnDsSequenceClicked";
            this.InitDataSource(pw, FormView1, this.DATA, "dsSequence");
            this.Register();
        }
        public void RetrieveData(String ls_member_no)
        {
            //            String sql = @" 
            //            select 
            //            sum( case when stm.shritemtype_code in('SPM','B/F') and stm.item_status=1 then  stm.share_amount else 0.00 end ) as s_sharespm,   
            //            sum( case when stm.shritemtype_code='SPX' and stm.item_status=1 then  stm.share_amount*10 else 0.00 end ) as s_sharespx   
            //            from shsharemaster sm  inner join shsharestatement stm
            //                on stm.member_no = sm.member_no and stm.sharetype_code = sm.sharetype_code and stm.item_status=1  and  stm.shritemtype_code in('SPM','SPX','B/F')
            //            where sm.coop_id={0} and sm.member_no={1}";
            string sql = @"select ( sm.sharespm_amt * st.share_value ) + nvl( sm.rkeep_sharevalue ,0)  as s_sharespm,  
                                  ( sm.sharespx_amt * st.share_value ) as s_sharespx        
                               from shsharemaster sm  join shsharetype st on sm.coop_id = st.coop_id and sm.sharetype_code = st.sharetype_code
                            where sm.coop_id = {0} and sm.member_no = {1}";
            sql = WebUtil.SQLFormat(sql, state.SsCoopId, ls_member_no);
            DataTable dt = WebUtil.Query(sql);
            this.ImportData(dt);
        }
        public void Retrievelncont(String ls_member_no)
        {
            String sql = @" 
            select  (select sum(principal_balance)from 
            lncontmaster where 
            coop_id={0} and
            member_no={1} and
            principal_balance >0 and 
            payment_status=1) as principal_balance,
 (select sum(assist_amt) from assreqmaster where assisttype_code = 21 and member_no = {1} and req_status = 1 ) as old_amt
             from 
            mbmembmaster where 
            coop_id={0} and
            member_no={1} ";
            sql = WebUtil.SQLFormat(sql, state.SsCoopId, ls_member_no);
            DataTable dt = WebUtil.Query(sql);
            this.ImportData(dt);
        }
    }
}
