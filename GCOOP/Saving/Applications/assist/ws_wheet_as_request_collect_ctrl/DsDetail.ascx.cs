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
    public partial class DsDetail : DataSourceFormView
    {
        public DataSet1.DataDsDetailDataTable DATA { get; set; }
        public void InitDsDetail(PageWeb pw)
        {
            css1.Visible = false;
            DataSet1 ds = new DataSet1();
            this.DATA = ds.DataDsDetail;
            this.EventItemChanged = "OnDsDetailItemChanged";
            this.InitDataSource(pw, FormView1, this.DATA, "dsDetail");
            this.Register();
        }
        /*เเก้ maxใส่เข้าไปjum*/
        public void RetrieveData(String ls_member_no)
        {
            String sql = @" 
                    select
                    mb.member_date,ft_calagemth( mb.member_date ,sysdate ) work_age
                    ,( case when rm.assist_docno is null then 'Auto' else rm.assist_docno  end )assist_docno
                    ,( case when rm.req_date is null then {2} else rm.req_date  end )req_date 
                    ,mb.resign_status
                    ,( case when rm.req_date is null then (select max(mr.dead_date) from mbreqresign mr where mr.coop_id={0} and mr.member_no={1}) else rm.dead_date end )as resign_date
				    ,(select rc.resigncause_desc from mbucfresigncause rc where  mb.resigncause_code = rc.resigncause_code) resigncause_desc
				    ,sm.last_period
                    ,( case when rm.assist_docno is null then sm.last_period else to_number(rm.remark)  end )  as monthcollect
                    ,  ( ( sm.sharespx_amt ) * st.share_value ) as sharespx
                    ,  ( (sm.sharespm_amt + sm.sharespx_amt ) * st.share_value )  as sum_sharestk
				    ,( sm.sharespm_amt * st.share_value ) + nvl( sm.rkeep_sharevalue ,0) as sharestk_amt
                    from mbmembmaster mb 
				    inner join shsharemaster sm on sm.member_no = mb.member_no 
                    left join assreqmaster rm on mb.member_no=rm.member_no  and req_status=8 and ref_slipno is null and rm.assisttype_code='70',shsharetype st
                    where mb.coop_id={0} and mb.member_no={1}
                    and mb.resign_status=1";

            sql = WebUtil.SQLFormat(sql, state.SsCoopId, ls_member_no, state.SsWorkDate);
            DataTable dt = WebUtil.Query(sql);
            this.ImportData(dt);
        }
    }
}