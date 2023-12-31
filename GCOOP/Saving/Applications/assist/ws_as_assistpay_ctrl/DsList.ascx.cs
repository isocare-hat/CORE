﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoreSavingLibrary;
using System.Data;

namespace Saving.Applications.assist.ws_as_assistpay_ctrl
{
    public partial class DsList : DataSourceRepeater
    {
        public DataSet1.DT_LISTDataTable DATA { get; set; }

        public void InitDsList(PageWeb pw)
        {
            css1.Visible = false;
            DataSet1 ds = new DataSet1();
            this.DATA = ds.DT_LIST;
            this.EventItemChanged = "OnDsDsListItemChanged";
            this.EventClicked = "OnDsListClicked";
            this.InitDataSource(pw, Repeater1, this.DATA, "dsList");

            this.Register();
        }

        public void RetrieveList(string sqlsearch)
        {
            String sql = @"select 
	                        mpre.prename_desc ||mb.memb_name || '  ' || mb.memb_surname as full_name,
	                        mb.membgroup_code,
	                        ass.asscontract_no,   
	                        ass.member_no,
	                        ass.assisttype_code,
                            ass.approve_date,
	                        ass.approve_amt,
	                        ass.asscont_status,
                            ast.assisttype_code ||':'||ast.assisttype_desc||' ('||asp.assistpay_desc||')' as assisttype_desc
                        from asscontmaster ass
                        inner join mbmembmaster mb on ass.member_no = mb.member_no
                        inner join mbucfprename mpre on mb.prename_code = mpre.prename_code
                        inner join assucfassisttype ast on ass.assisttype_code = ast.assisttype_code
                        inner join assucfassisttypepay asp on ass.assisttype_code = asp.assisttype_code and ass.assistpay_code = asp.assistpay_code
                        where ass.withdrawable_amt > 0 and asscont_status > 0 and
                        ass.coop_id = {0}
                        " + sqlsearch + @"
                        order by ass.assisttype_code, ass.member_no, ass.asscontract_no";
            sql = WebUtil.SQLFormat(sql, state.SsCoopControl);
            DataTable dt = WebUtil.Query(sql);
            this.ImportData(dt);
        }
    }
}