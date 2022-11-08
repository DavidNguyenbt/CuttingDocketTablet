using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Graphics;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using ZXing.Mobile;

namespace CuttingDocketTablet
{
    [Activity(Theme = "@style/Theme.AppCompat.Light.NoActionBar", ScreenOrientation = ScreenOrientation.SensorPortrait)]
    public class ChooseActivity : Activity
    {
        EditText edbc;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.choose);

            MobileBarcodeScanner.Initialize(Application);

            Button btscan = FindViewById<Button>(Resource.Id.btchoosescan); btscan.Text = Temp.GetLL("DECO123");
            Button btmanual = FindViewById<Button>(Resource.Id.btchoosemanual); btmanual.Text = Temp.GetLL("DECO124");
            Button btchangepass = FindViewById<Button>(Resource.Id.btchoosechangepass); btchangepass.Text = Temp.GetLL("DECO125");

            edbc = FindViewById<EditText>(Resource.Id.edbarcode);

            Temp.HideKeyBoard(this, CurrentFocus);

            btscan.Click += async delegate
            {
                string bc = await Temp.Scan(this);

                if (bc != "")
                {
                    edbc.Text = bc;

                    Run(bc);
                }
            };
            btmanual.Click += delegate
            {
                if (edbc.Text != "")
                {
                    Run(edbc.Text);
                }
            };
            btchangepass.Click += delegate
            {
                ChangePass();
            };
            btchangepass.LongClick += delegate
            {
                try
                {
                    Android.App.AlertDialog.Builder b = new AlertDialog.Builder(this);

                    LinearLayout ly = new LinearLayout(this) { Orientation = Orientation.Vertical };

                    EditText edid = new EditText(this)
                    {
                        Hint = btscan.Text = Temp.GetLL("DECO126"),//"Nhập Employee ID",
                        LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                        TextAlignment = TextAlignment.Center
                    };
                    ly.AddView(edid);

                    Button bttim = new Button(this)
                    {
                        Text = Temp.GetLL("DECO127")// "TÌM"
                    };
                    ly.AddView(bttim);

                    TextView txt = new TextView(this)
                    {
                        Text = Temp.GetLL("DECO128")//"Tên"
                    };
                    ly.AddView(txt);

                    b.SetPositiveButton(Temp.GetLL("DECO21"), (s, a) =>//"THÊM"
                    {
                        if (txt.Text == Temp.GetLL("DECO128")) Toast.MakeText(this, Temp.GetLL("DECO129"), ToastLength.Long).Show();//Chưa có tên nhân viên !!!
                        else
                        {
                            if (Temp.kn.Doc("select * from InLineQcUserDetail where EmployeeCode = '" + txt.Text.Split('-')[0].Trim() + "'").Tables[0].Rows.Count > 0)
                                Toast.MakeText(this, Temp.GetLL("DECO130"), ToastLength.Long).Show();//Mã nhân viên này đã tồn tại, xin kiểm tra lại !!!
                            else
                            {
                                Temp.kn.Ghi("insert into InLineQcUserDetail (EmployeeCode,EmployeeName,Password) " +
                                    "values ('" + txt.Text.Split('-')[0].Trim() + "',N'" + txt.Text.Split('-')[1].Trim() + "','" + txt.Text.Split('-')[0].Trim().Substring(txt.Text.Split('-')[0].Trim().Length - 5, 5) + "')");

                                if (Temp.kn.ErrorMessage == "") Toast.MakeText(this, Temp.GetLL("DECO131"), ToastLength.Long).Show();//Thêm nhân viên mới thành công !!!
                                else Toast.MakeText(this, Temp.kn.ErrorMessage, ToastLength.Long).Show();
                            }
                        }
                    });

                    b.SetView(ly);
                    b.Create().Show();

                    bttim.Click += delegate
                    {
                        try
                        {
                            DataTable emp = Temp.kn.Doc("select * from [Hr].[dbo].[staff] where id_staff like '%" + edid.Text + "%'").Tables[0];

                            edid.Text = emp.Rows[0]["id_staff"].ToString();
                            txt.Text = emp.Rows[0]["id_staff"].ToString() + " - " + emp.Rows[0]["fullname"].ToString();
                        }
                        catch
                        {
                            txt.Text = Temp.GetLL("DECO128");// "Tên";
                        }
                    };
                }
                catch { }
            };

            if (Temp.fac != "Admin" && !Temp.fac.Contains("Marker")) LoadTable();
        }
        private void ChangePass()
        {
            try
            {
                Android.App.AlertDialog.Builder b = new AlertDialog.Builder(this);

                LinearLayout ly = new LinearLayout(this) { Orientation = Orientation.Vertical };

                TextView txt = new TextView(this) { Text = "User ID : " + Temp.id };
                txt.SetTextColor(Color.Red);
                ly.AddView(txt);

                TextView txtoldpass = new TextView(this) { Text = Temp.GetLL("DECO132") };//Mật khẩu cũ :
                txtoldpass.SetTextColor(Color.Blue);
                ly.AddView(txtoldpass);

                EditText edoldpass = new EditText(this)
                {
                    Hint = Temp.GetLL("DECO133"),//Nhập mật khẩu cũ
                    LayoutParameters = new ViewGroup.LayoutParams(300, ViewGroup.LayoutParams.WrapContent),
                    TextAlignment = TextAlignment.Center,
                    InputType = Android.Text.InputTypes.ClassText | Android.Text.InputTypes.TextVariationPassword
                };
                ly.AddView(edoldpass);

                TextView txtnewpass = new TextView(this) { Text = Temp.GetLL("DECO134") };//Mật khẩu mới :
                txtnewpass.SetTextColor(Color.Blue);
                ly.AddView(txtnewpass);

                EditText ednewpass = new EditText(this)
                {
                    Hint = Temp.GetLL("DECO135"),//Nhập mật khẩu mới
                    LayoutParameters = new ViewGroup.LayoutParams(300, ViewGroup.LayoutParams.WrapContent),
                    TextAlignment = TextAlignment.Center,
                    InputType = Android.Text.InputTypes.ClassText | Android.Text.InputTypes.TextVariationPassword
                };
                ly.AddView(ednewpass);

                b.SetView(ly);
                b.SetPositiveButton(Temp.GetLL("DECO125"), (s, a) =>//ĐỔI MẬT KHẨU
                {
                    DataTable dt = Temp.kn.Doc("select * from InLineQcUserDetail where EmployeeCode = '" + Temp.id + "' and Password = '" + edoldpass.Text + "'").Tables[0];
                    if (dt.Rows.Count == 0)
                    {
                        Toast.MakeText(this, Temp.GetLL("DECO136"), ToastLength.Long).Show();//Mật khẩu cũ không đúng, xin kiểm tra lại !!!
                        ChangePass();
                    }
                    else
                    {
                        Temp.kn.Ghi("update InLineQcUserDetail set Password = '" + ednewpass.Text + "' where EmployeeCode = '" + Temp.id + "'");

                        if (Temp.kn.ErrorMessage == "")
                        {
                            Toast.MakeText(this, Temp.GetLL("DECO137"), ToastLength.Long).Show();//Đổi mật khẩu thành công !!!

                            Finish();
                        }
                        else
                        {
                            Toast.MakeText(this, Temp.GetLL("DECO138") + Temp.kn.ErrorMessage, ToastLength.Long).Show();//Đổi mật khẩu không thành công !!!

                            ChangePass();
                        }
                    }
                });
                b.SetNegativeButton(Temp.GetLL("DECO51"), (s, a) =>//THOÁT
                {

                });

                b.Create().Show();
            }
            catch (Exception ex) { Toast.MakeText(this, ex.ToString(), ToastLength.Long).Show(); }
        }
        private void LoadTable()
        {
            try
            {
                string d = Temp.fac.Split("/")[1];
                string t = Temp.GetLL("DECO122");

                if (Temp.Cutting.Contains(d))
                {
                    List<string> list = new List<string>();
                    for (int i = 1; i <= Temp.machinenum; i++) list.Add(t + " " + i);

                    Android.App.AlertDialog.Builder b = new AlertDialog.Builder(this);

                    b.SetTitle("TABLE");
                    b.SetSingleChoiceItems(list.ToArray(), -1, (s, a) =>
                    {
                        Dialog dd = s as Dialog;

                        Temp.tableid = list[a.Which];

                        dd.Dismiss();
                    });
                    b.SetCancelable(false);

                    b.Create().Show();
                }
            }
            catch
            {
                Finish();
            }
        }
        private void Run(string bc)
        {
            try
            {

                DataTable dt = Temp.kn.Doc("select * from CuttingBarcode where BarCode like '" + bc + "%' order by BarCode").Tables[0];

                if (dt.Rows.Count > 1)
                {
                    Android.App.AlertDialog.Builder b = new AlertDialog.Builder(this);

                    string[] ls1 = dt.Select().Select(d => d["BarCode"].ToString().Contains("daukhuc_cut") ? "daukhuc_" + d["BarCode"].ToString().Split('_').Last() : Temp.GetLL("DECO139")).ToArray();//Docket Chính
                    string[] ls2 = dt.Select().Select(d => d["BarCode"].ToString()).ToArray();

                    if (ls1.Distinct().Count() == 1) BanCon(bc);
                    else
                    {
                        b.SetSingleChoiceItems(ls1, -1, (s, a) =>
                        {
                            Dialog d = s as Dialog;

                            BanCon(ls2[a.Which]);

                            d.Dismiss();
                        });

                        b.Create().Show();
                    }
                }
                else BanCon(bc);


            }
            catch { }

            void BanCon(string code)
            {
                try
                {
                    if (Temp.fac.Contains("Spread") || Temp.fac.Contains("Admin") || Temp.fac.Contains("Marker")) Chay(code);
                    else
                    {
                        DataTable dk = Temp.kn.Doc("select * from CuttingDocketReport where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + code + "')").Tables[0];

                        if (dk.Rows.Count == 0) Toast.MakeText(this, Temp.GetLL("DECO140"), ToastLength.Long).Show();//Docket này vẫn chưa được trải, xin kiểm tra lại !!!
                        else
                        {
                            DataTable dt = Temp.kn.Doc("select distinct SubTable from CuttingDocketReport where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + code + "') and SubTable is not null order by SubTable").Tables[0];

                            if (dt.Rows.Count == 0) Chay(code);
                            else
                            {
                                Android.App.AlertDialog.Builder b = new AlertDialog.Builder(this);

                                string[] ls = dt.Select().Select(d => d[0].ToString()).ToArray();

                                b.SetTitle(Temp.GetLL("DECO141"));//CHỌN BÀN CON
                                b.SetSingleChoiceItems(ls, -1, (s, a) =>
                                {
                                    Temp.tableid = Temp.tableid.Contains('/') ? Temp.tableid.Split('/')[0] + "/" + ls[a.Which] : Temp.tableid + "/" + ls[a.Which];

                                    Toast.MakeText(this, Temp.tableid, ToastLength.Long).Show();
                                });

                                b.SetPositiveButton(Temp.GetLL("DECO142"), (s, a) => { Chay(code); });//TIẾP TỤC

                                b.Create().Show();
                            }
                        }
                    }
                }
                catch
                {
                    Chay(code);
                }
            }

            void Chay(string code)
            {
                edbc.Text = code;
                Temp.barcode = code;
                string ch = "";

                try
                {
                    if (Temp.fac == "Admin" || Temp.fac.Contains("Marker")) Next();
                    else
                    {
                        string dept = Temp.fac.Split('/')[1];
                        string tt = "";

                        switch (dept)
                        {
                            case "Cut":
                                tt = "CutBy";
                                break;
                            case "Bundle":
                                tt = "BundledBy";
                                break;
                            case "Number":
                                tt = "NumberedBy";
                                break;
                        }

                        if (dept == "Spread") Next();
                        else
                        {
                            string sub = "select * from CuttingHistory where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and Action = '" + dept + "' " + (Temp.tableid.Contains("/") ? "and TableID like '%/" + Temp.tableid.Split('/')[1] + "'" : "");
                            DataTable dt = Temp.kn.Doc(sub).Tables[0];
                            bool AddHistory = false;

                            if (dt.Rows.Count == 0)
                            {
                                AddHistory = true;

                                Update();

                                Next();
                            }
                            else
                            {
                                string[] id = dt.Select().Select(d => d["EmployeeID"].ToString()).ToArray();

                                if (Temp.level > 0)
                                {
                                    Android.App.AlertDialog.Builder aa = new AlertDialog.Builder(this);
                                    Android.App.AlertDialog.Builder b = new AlertDialog.Builder(this);

                                    int level = 0;

                                    aa.SetMessage(Temp.GetLL("DECO143"));//Bạn muốn thêm người vào công đoạn này hay trực tiếp thao tác ?
                                    aa.SetPositiveButton(Temp.GetLL("DECO144"), (sa, aaa) =>//THÊM NGƯỜI
                                    {
                                        b.SetTitle(Temp.GetLL("DECO144")+" " + dept + " "+ Temp.GetLL("DECO145"));//THÊM NGƯỜI //CHO DOCKET NÀY

                                        LinearLayout ly = new LinearLayout(this) { Orientation = Orientation.Vertical };

                                        EditText edid = new EditText(this)
                                        {
                                            Hint = Temp.GetLL("DECO126"),//Nhập Employee ID
                                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                                            TextAlignment = TextAlignment.Center
                                        };
                                        ly.AddView(edid);

                                        Button bttim = new Button(this)
                                        {
                                            Text = Temp.GetLL("DECO127")//TÌM
                                        };
                                        ly.AddView(bttim);

                                        TextView txt = new TextView(this)
                                        {
                                            Text = Temp.GetLL("DECO128")//Tên
                                        };
                                        ly.AddView(txt);

                                        b.SetPositiveButton(Temp.GetLL("DECO21"), (s, a) =>//THÊM
                                        {
                                            if (txt.Text == Temp.GetLL("DECO128")) Toast.MakeText(this, Temp.GetLL("DECO146"), ToastLength.Long).Show();//Tên //Chưa có tên nhân viên !!!
                                            else
                                            {
                                                Temp.id = edid.Text;
                                                Temp.level = level;

                                                AddHistory = true;

                                                Update();

                                                Next();

                                                Toast.MakeText(this, Temp.GetLL("DECO147"), ToastLength.Long).Show();//Thêm nhân viên thành công !!!
                                            }
                                        });

                                        b.SetView(ly);
                                        b.Create().Show();

                                        bttim.Click += delegate
                                        {
                                            try
                                            {
                                                DataTable emp = Temp.kn.Doc("select * from InLineQcUserDetail where EmployeeCode like N'%" + edid.Text + "%'").Tables[0];

                                                edid.Text = emp.Rows[0]["EmployeeCode"].ToString();
                                                txt.Text = emp.Rows[0]["EmployeeCode"].ToString() + " - " + emp.Rows[0]["EmployeeName"].ToString();

                                                level = string.IsNullOrEmpty(emp.Rows[0]["ManLevel"].ToString()) ? 0 : int.Parse(emp.Rows[0]["ManLevel"].ToString());
                                            }
                                            catch
                                            {
                                                txt.Text = "Tên";
                                            }
                                        };
                                    });
                                    aa.SetNegativeButton(Temp.GetLL("DECO51"), (sa, aaa) => { });//THOÁT
                                    aa.SetNeutralButton(Temp.GetLL("DECO148"), (sa, aaa) =>//THAO TÁC TRỰC TIẾP
                                    {
                                        if (id.Contains(Temp.id)) Next();
                                        else
                                        {
                                            Update();
                                            Next();
                                        }
                                    });

                                    aa.Create().Show();
                                }
                                else if (id.Contains(Temp.id)) { Update(); Next(); }
                                else Toast.MakeText(this, Temp.GetLL("DECO149") + dept + " "+ Temp.GetLL("DECO150") + Temp.barcode + " | " + Temp.id, ToastLength.Long).Show();//Docket này đã //rồi, xin kiểm tra lại !!!
                            }

                            void Update()
                            {
                                if (AddHistory) Temp.kn.Ghi("declare @i	int set @i = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "')" +
                                                                   " insert into CuttingHistory values ('" + Temp.fac.Split('-')[0] + "',getdate(),@i,'" + Temp.tableid + "','" + Temp.id + "','" + dept + "')");

                                string name = Temp.GetName(Temp.id) + " | " + Temp.tableid;
                                DataTable check = Temp.kn.Doc("select * from CuttingDocketData where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and " + tt + " like N'%" + name + "%'").Tables[0];

                                if (check.Rows.Count == 0)
                                {
                                    ch = "update CuttingDocketData set " + tt + " = N'' + (case when " + tt + " = '' then N'" + name + "' else " + tt
                                   + " + ' , ' + N'" + name + "' end) where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and " + tt + " not like N'%" + Temp.GetName(Temp.id) + "%'";
                                    Temp.kn.Ghi(ch);
                                }
                            }
                        }
                    }
                }
                catch { Next(); }

                void Next()
                {
                    Temp.LoadData();
                    Temp.LoadDocket();

                    Intent inte = new Intent(this, typeof(MainDocketActivity));
                    StartActivity(inte);
                }
            }
        }
    }
}