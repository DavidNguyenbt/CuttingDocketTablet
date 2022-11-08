using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Graphics;
using Android.OS;
using Android.Provider;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using CSDL;
using Java.IO;

namespace CuttingDocketTablet
{
    [Activity(Theme = "@style/Theme.AppCompat.Light.NoActionBar", ScreenOrientation = ScreenOrientation.SensorPortrait)]
    public class MainDocketActivity : Activity
    {
        RelativeLayout layout;
        ListView lsv;
        TextView txt1, txt2, txtnote, txtnotevalue, txtslchitiet, txtttyard, txtttplies, txtttends, txtcutby, txtbundle, txtnumber;
        Button bttachban, btpicture, btsuakho, btdaukhuc;
        Connect kn;
        System.Globalization.CultureInfo culture;
        string path = "";
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.maindocket);
            kn = new Connect(Temp.ch);
            culture = Thread.CurrentThread.CurrentCulture;
            //Plugin.Media

            #region Khai bao
            layout = FindViewById<RelativeLayout>(Resource.Id.layoutmaindocket);

            lsv = FindViewById<ListView>(Resource.Id.lstreport);

            txt1 = FindViewById<TextView>(Resource.Id.txtRemarks);
            txt2 = FindViewById<TextView>(Resource.Id.txtRemarksvalue);
            txtnote = FindViewById<TextView>(Resource.Id.txtnote);
            txtnotevalue = FindViewById<TextView>(Resource.Id.txtnotevalue);
            txtslchitiet = FindViewById<TextView>(Resource.Id.txtSLChitiet);
            txtttyard = FindViewById<TextView>(Resource.Id.txttotalyards);
            txtttplies = FindViewById<TextView>(Resource.Id.txttotalplies);
            txtttends = FindViewById<TextView>(Resource.Id.txttotalends);
            txtcutby = FindViewById<TextView>(Resource.Id.txtCutBy);
            txtnumber = FindViewById<TextView>(Resource.Id.txtNumberedBy);
            txtbundle = FindViewById<TextView>(Resource.Id.txtBundledBy);

            btdaukhuc = FindViewById<Button>(Resource.Id.btdaukhuc);btdaukhuc.Text = Temp.GetLL("DECO177");
            bttachban = FindViewById<Button>(Resource.Id.bttachban); bttachban.Text = Temp.GetLL("DECO193");
            btpicture = FindViewById<Button>(Resource.Id.btpicture);
            btsuakho = FindViewById<Button>(Resource.Id.btsuakho); btsuakho.Text = Temp.GetLL("DECO168");
            #endregion

            if (Temp.fac.Contains("Marker")) btsuakho.Click += Btsuakho_Click;
            else if (Temp.fac != "Admin")
            {
                txtnote.Click += delegate { AddInfor("Trim", txtnotevalue.Text); };
                txtslchitiet.Click += delegate { AddInfor("SLChitiet", "0"); };

                if (Temp.fac.Contains("Spread"))
                {
                    lsv.ItemClick += delegate { AddDocket(); };
                    txt1.Click += delegate { AddDocket(); };
                    txt2.Click += delegate { AddDocket(); };

                    bttachban.Click += Bttachban_Click;
                    btdaukhuc.Click += Btdaukhuc_Click;
                }
                else if (Temp.fac.Contains("/Cut")) txtcutby.Click += delegate { AddThaoTac("CutBy"); };
                else if (Temp.fac.Contains("/Number")) txtnumber.Click += delegate { AddThaoTac("NumberedBy"); };
                else if (Temp.fac.Contains("/Bundle")) txtbundle.Click += delegate { AddThaoTac("BundledBy"); };
            }

            btpicture.Click += Btpicture_Click;
            LoadData();
            LoadDocket();
        }

        private void Btdaukhuc_Click(object sender, EventArgs e)
        {
            try
            {
                if (Temp.barcode.Contains("_daukhuc_cut"))
                    Toast.MakeText(this, Temp.GetLL("DECO151") + Temp.barcode, ToastLength.Long).Show();//Bạn không thể tạo đầu khúc của Docket này
                else
                {
                    try
                    {
                        Android.App.AlertDialog.Builder b3 = new AlertDialog.Builder(this);

                        List<DauKhuc> ls = new List<DauKhuc>();

                        ScrollView main = new ScrollView(this);
                        LinearLayout ly = new LinearLayout(this)
                        {
                            Orientation = Orientation.Vertical
                        };

                        TextView txtdk = new TextView(this)
                        {
                            Text = "Cut No. Docket : " + Temp.Data.Rows[0]["CutNo"].ToString(),
                        };
                        txtdk.SetTextColor(Color.Red);
                        ly.AddView(txtdk);

                        TextView txtcutno = new TextView(this)
                        {
                            Text = "Cut No. :"
                        };
                        txtcutno.SetTextColor(Color.Blue);
                        ly.AddView(txtcutno);
                        EditText edcutno = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO152"),//Nhập số Cut No
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent)
                        };
                        ly.AddView(edcutno);

                        TextView txtperimeter = new TextView(this)
                        {
                            Text = "Perimeter :"
                        };
                        txtperimeter.SetTextColor(Color.Blue);
                        ly.AddView(txtperimeter);
                        EditText edperimeter = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO153"),//Nhập Perimeter
                            Text = Temp.Data.Rows[0]["Perimeter"].ToString(),
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent)
                        };
                        edperimeter.TextChanged += delegate { CheckCutNo(); };
                        ly.AddView(edperimeter);

                        TextView txtlength = new TextView(this)
                        {
                            Text = "Length :"
                        };
                        txtlength.SetTextColor(Color.Blue);
                        ly.AddView(txtlength);
                        EditText edlength = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO154"),//Nhập số Length
                            Text = Temp.Data.Rows[0]["Lenght"].ToString(),
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent)
                        };
                        edlength.TextChanged += delegate { CheckCutNo(); };
                        ly.AddView(edlength);

                        TextView txtplies = new TextView(this)
                        {
                            Text = "Plies :"
                        };
                        txtplies.SetTextColor(Color.Blue);
                        ly.AddView(txtplies);
                        EditText edplies = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO155"),//Nhập số lớp
                            Text = Temp.Data.Rows[0]["Plies"].ToString(),
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        edplies.TextChanged += delegate { CheckCutNo(); };
                        ly.AddView(edplies);

                        TextView txtgarment = new TextView(this)
                        {
                            Text = "Total Garment :"
                        };
                        txtgarment.SetTextColor(Color.Blue);
                        ly.AddView(txtgarment);
                        EditText edgarment = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO156"),//Nhập số lượng Garment
                            Text = Temp.Data.Rows[0]["TTGarment"].ToString(),
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        edgarment.TextChanged += delegate { CheckCutNo(); };
                        ly.AddView(edgarment);

                        TextView txtfabric = new TextView(this)
                        {
                            Text = "Fabric (Yards) :"
                        };
                        txtfabric.SetTextColor(Color.Blue);
                        ly.AddView(txtfabric);
                        EditText edfabric = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO157"),//Nhập số lượng Yards vải
                            Text = Temp.Data.Rows[0]["FabricRequest"].ToString(),
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        edfabric.TextChanged += delegate { CheckCutNo(); };
                        ly.AddView(edfabric);

                        foreach (DataRow r in Temp.Data.Rows)
                        {
                            if (r["Ratio"].ToString() != "0")
                            {
                                TextView txtsize = new TextView(this)
                                {
                                    Text = r["Size"].ToString()
                                };
                                txtsize.SetTextColor(Color.Blue);
                                ly.AddView(txtsize);
                                EditText edratio = new EditText(this)
                                {
                                    Text = r["Ratio"].ToString(),
                                    TextAlignment = TextAlignment.Center,
                                    LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                                    InputType = Android.Text.InputTypes.ClassNumber
                                };
                                edratio.TextChanged += delegate { CheckCutNo(); };
                                ly.AddView(edratio);

                                ls.Add(new DauKhuc
                                {
                                    Size = r["Size"].ToString(),
                                    Value = edratio
                                });
                            }
                        }

                        main.AddView(ly);
                        b3.SetView(main);

                        b3.SetPositiveButton(Temp.GetLL("DECO158"), (s3, a2) =>//THÊM ĐẦU KHÚC
                        {
                            if (CheckCutNo())
                            {
                                string bc = Temp.barcode + "_daukhuc_cut" + edcutno.Text;

                                string ch1 = "if not exists (select * from CuttingBarcode where BarCode = '" + bc + "') insert into CuttingBarcode values ('" + bc + "',null,null)" +
                                            " select * from CuttingBarcode where BarCode = '" + bc + "'";

                                DataTable dt1 = kn.Doc(ch1).Tables[0];

                                string ch2 = "select * into #t from CuttingDocketData where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') order by NO "
                                            + " update #t set CutNo = '" + edcutno.Text + "',Perimeter = '" + edperimeter.Text + "',Lenght = '" + edlength.Text + "',Plies = '" + edplies.Text + "',TTGarment = '" + edgarment.Text + "'," +
                                            "FabricRequest = '" + edfabric.Text + "',SLChiTiet = 0 ,BarCode = " + dt1.Rows[0]["NO"].ToString() + ",RecordDate = getdate(),LayedBy = '',CutBy = '',NumberedBy = '',BundledBy = '' ";

                                foreach (DauKhuc dk in ls)
                                {
                                    ch2 += " update #t set Ratio = '" + dk.Value.Text + "' where Size = '" + dk.Size + "'";
                                }

                                ch2 += " alter table #t drop column NO insert into CuttingDocketData select * from #t";

                                kn.Ghi(ch2);

                                if (kn.ErrorMessage == "") Toast.MakeText(this, Temp.GetLL("DECO159"), ToastLength.Long).Show();//Thêm đầu khúc thành công !!!
                                else Toast.MakeText(this, kn.ErrorMessage, ToastLength.Long).Show();
                            }
                            else Toast.MakeText(this, Temp.GetLL("DECO160"), ToastLength.Long).Show();//Cut No đầu khúc này đã tồn tại, xin kiểm tra lại !!!
                        });
                        b3.SetNeutralButton(Temp.GetLL("DECO51"), (s3, a3) => { });//THOÁT

                        b3.SetCancelable(false);
                        b3.Create().Show();

                        bool CheckCutNo()
                        {
                            string bc = Temp.barcode + "_daukhuc_cut" + edcutno.Text;

                            if (kn.Doc("select * from CuttingBarcode where BarCode = '" + bc + "'").Tables[0].Rows.Count > 0)
                            {
                                Toast.MakeText(this, Temp.GetLL("DECO160"), ToastLength.Long).Show();//Cut No đầu khúc này đã tồn tại, xin kiểm tra lại !!!

                                edcutno.RequestFocus();

                                return false;
                            }
                            else return true;
                        }
                    }
                    catch (Exception ex) { Toast.MakeText(this, ex.ToString(), ToastLength.Long).Show(); }
                }
            }
            catch { }
        }

        private void Btsuakho_Click(object sender, EventArgs e)
        {
            try
            {
                if (Temp.level > 1) SuaKho();
                else Toast.MakeText(this, Temp.GetLL("DECO161"), ToastLength.Long).Show();//Bạn không được cấp quyền cho thao tác này !!!
            }
            catch { }
        }

        private void Bttachban_Click(object sender, EventArgs e)
        {
            try
            {
                int sub = 1;
                DataSet ds = kn.Doc("select top 1 SubTable from CuttingDocketReport where BarCode = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and SubTable is not null order by SubTable desc" +
                    " select * from CuttingDocketReport where BarCode = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and SubTable is null order by SubTable desc");

                if (ds.Tables[0].Rows.Count > 0) sub += string.IsNullOrEmpty(ds.Tables[0].Rows[0][0].ToString()) ? 0 : int.Parse(ds.Tables[0].Rows[0][0].ToString());

                if (ds.Tables[1].Rows.Count > 0)
                {
                    kn.Ghi("update CuttingDocketReport set SubTable = " + sub + " where BarCode = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and SubTable is null");

                    if (kn.ErrorMessage == "")
                    {
                        Toast.MakeText(this, Temp.GetLL("DECO162") + sub, ToastLength.Long).Show();//Đã thêm bàn con thành công !!!

                        Temp.LoadDocket();
                        LoadDocket();
                    }
                    else Toast.MakeText(this, Temp.GetLL("DECO163") + kn.ErrorMessage, ToastLength.Long).Show();//Tác vụ không thành công !!!
                }
                else Toast.MakeText(this, Temp.GetLL("DECO164") + sub, ToastLength.Long).Show();//Chưa có báo cáo phù hợp để tách bàn, xin kiểm tra lại !!!
            }
            catch { }
        }

        private void Btpicture_Click(object sender, EventArgs e)
        {
            try
            {
                string[] ls1 = Temp.Docket.Select().Select(d => d["RollNo"].ToString()).ToArray();
                string[] ls2 = Temp.Docket.Select().Select(d => d["NO"].ToString()).ToArray();

                Android.App.AlertDialog.Builder b = new AlertDialog.Builder(this);

                b.SetTitle("SELECT ROLL NO.");
                string no = ""; int r = -1;
                b.SetSingleChoiceItems(ls1, -1, (s, a) =>
                {
                    //r = a.Which;
                    //no = ls2[a.Which];
                });

                b.SetPositiveButton("TAKE PICTURE", async (s, a) =>
                {
                    if (Temp.fac.Contains("Spread"))
                    {
                        string name = await TakePicture();

                        kn.Ghi("update CuttingDocketReport set Picture = '" + name + "' where NO = " + no);

                        System.Net.WebClient Client = new System.Net.WebClient();
                        Client.Headers.Add("Content-Type", "binary/octet-stream");
                        byte[] result = Client.UploadFile(Temp.url + "cuttingrollpicture.php", "POST", path);
                        string Result_msg = System.Text.Encoding.UTF8.GetString(result, 0, result.Length);
                        Toast.MakeText(this, Result_msg, ToastLength.Long).Show();

                        if (kn.ErrorMessage == "") Toast.MakeText(this, Temp.GetLL("DECO165"), ToastLength.Long).Show();//Đã lưu ảnh thành công !!!
                        else Toast.MakeText(this, Temp.GetLL("DECO166") + kn.ErrorMessage, ToastLength.Long).Show();//Lưu ảnh không thành công !!!

                        Temp.LoadDocket();
                    }
                    else Toast.MakeText(this, Temp.GetLL("DECO161") + kn.ErrorMessage, ToastLength.Long).Show();//Bạn không được phép thao tác này !!!
                });
                b.SetNegativeButton(Temp.GetLL("DECO51"), (s, a) => { });//THOÁT
                b.SetNeutralButton("REVIEW", async (s, a) =>//XEM ẢNH
                {
                    if (r > 0)
                    {
                        string url = Temp.url + "CuttingRollPicture/" + Temp.Docket.Rows[r]["Picture"].ToString() + ".jpg";

                        WebClient web = new WebClient();

                        try
                        {
                            byte[] ph;
                            try
                            {
                                ph = web.DownloadData(url);
                            }
                            catch
                            {
                                ph = null;
                            }

                            if (ph == null)
                            {
                                Toast.MakeText(this, "Cannot show the photo", ToastLength.Long).Show();
                                return;
                            }
                            else
                            {
                                Toast.MakeText(this, "Openning Picture ...", ToastLength.Long).Show();
                                await Task.Delay(1000);

                                SaveImage(BitmapFactory.DecodeByteArray(ph, 0, ph.Length));

                                Intent intent = new Intent();
                                intent.SetAction(Intent.ActionView);
                                intent.SetDataAndType(Android.Net.Uri.Parse(path), "image/jpeg");
                                StartActivity(intent);
                            }
                        }
                        catch (Exception ex)
                        {
                            Toast.MakeText(this, "Open " + ex.ToString(), ToastLength.Long).Show();
                        }
                    }
                    else Toast.MakeText(this, "No picture to show !!!", ToastLength.Long).Show();
                });

                AlertDialog di = b.Create();
                di.Show();

                Button show = di.GetButton((int)DialogButtonType.Neutral);
                b.SetSingleChoiceItems(ls1, -1, (s, a) =>
                {
                    r = a.Which;
                    no = ls2[a.Which];

                    if (Temp.Docket.Rows[r]["Picture"].ToString() == "") show.Enabled = false;
                    else show.Enabled = true;
                });

            }
            catch { }
        }
        private void SuaKho()
        {
            try
            {
                Android.App.AlertDialog.Builder b3 = new AlertDialog.Builder(this);

                List<DauKhuc> ls = new List<DauKhuc>();

                ScrollView main = new ScrollView(this);
                LinearLayout ly = new LinearLayout(this)
                {
                    Orientation = Orientation.Vertical
                };

                TextView txtperimeter = new TextView(this)
                {
                    Text = "Perimeter :"
                };
                txtperimeter.SetTextColor(Color.Blue);
                ly.AddView(txtperimeter);
                EditText edperimeter = new EditText(this)
                {
                    Hint = Temp.GetLL("DECO153"),//Nhập Perimeter
                    Text = Temp.Data.Rows[0]["Perimeter"].ToString(),
                    TextAlignment = TextAlignment.Center,
                    LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent)
                };
                ly.AddView(edperimeter);

                TextView txtlength = new TextView(this)
                {
                    Text = "Length :"
                };
                txtlength.SetTextColor(Color.Blue);
                ly.AddView(txtlength);
                EditText edlength = new EditText(this)
                {
                    Hint = Temp.GetLL("DECO154"),//Nhập số Length
                    Text = Temp.Data.Rows[0]["Lenght"].ToString(),
                    TextAlignment = TextAlignment.Center,
                    LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent)
                };
                ly.AddView(edlength);


                TextView txtwidth = new TextView(this)
                {
                    Text = "Length :"
                };
                txtwidth.SetTextColor(Color.Blue);
                ly.AddView(txtwidth);
                EditText edwidth = new EditText(this)
                {
                    Hint = Temp.GetLL("DECO167"),//Nhập số Width
                    Text = Temp.Data.Rows[0]["Width"].ToString(),
                    TextAlignment = TextAlignment.Center,
                    LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                    InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                };
                ly.AddView(edwidth);

                TextView txtplies = new TextView(this)
                {
                    Text = "Plies :"
                };
                txtplies.SetTextColor(Color.Blue);
                ly.AddView(txtplies);
                EditText edplies = new EditText(this)
                {
                    Hint = Temp.GetLL("DECO155"),//Nhập số lớp
                    Text = Temp.Data.Rows[0]["Plies"].ToString(),
                    TextAlignment = TextAlignment.Center,
                    LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                    InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                };
                ly.AddView(edplies);

                TextView txtgarment = new TextView(this)
                {
                    Text = "Total Garment :"
                };
                txtgarment.SetTextColor(Color.Blue);
                ly.AddView(txtgarment);
                EditText edgarment = new EditText(this)
                {
                    Hint = Temp.GetLL("DECO156"),//Nhập số lượng Garment
                    Text = Temp.Data.Rows[0]["TTGarment"].ToString(),
                    TextAlignment = TextAlignment.Center,
                    LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                    InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                };
                ly.AddView(edgarment);

                TextView txtfabric = new TextView(this)
                {
                    Text = "Fabric (Yards) :"
                };
                txtfabric.SetTextColor(Color.Blue);
                ly.AddView(txtfabric);
                EditText edfabric = new EditText(this)
                {
                    Hint = Temp.GetLL("DECO157"),//Nhập số lượng Yards vải
                    Text = Temp.Data.Rows[0]["FabricRequest"].ToString(),
                    TextAlignment = TextAlignment.Center,
                    LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                    InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                };
                ly.AddView(edfabric);

                foreach (DataRow r in Temp.Data.Rows)
                {
                    if (r["Ratio"].ToString() != "0")
                    {
                        TextView txtsize = new TextView(this)
                        {
                            Text = r["Size"].ToString()
                        };
                        txtsize.SetTextColor(Color.Blue);
                        ly.AddView(txtsize);
                        EditText edratio = new EditText(this)
                        {
                            Text = r["Ratio"].ToString(),
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber
                        };
                        ly.AddView(edratio);

                        ls.Add(new DauKhuc
                        {
                            Size = r["Size"].ToString(),
                            Value = edratio
                        });
                    }
                }

                edlength.TextChanged += delegate { Yards(); };
                edplies.TextChanged += delegate { Yards(); };

                main.AddView(ly);
                b3.SetView(main);

                b3.SetPositiveButton(Temp.GetLL("DECO168"), (s3, a2) =>//SỬA KHỔ
                {
                    string ch = "update CuttingDocketData set Perimeter = '" + edperimeter.Text + "',Lenght = '" + edlength.Text + "',Width = '" + edwidth.Text + "',Plies = '" + edplies.Text + "'," +
                                "TTGarment = '" + edgarment.Text + "',FabricRequest = '" + edfabric.Text + "' where BarCode = " + Temp.Data.Rows[0]["BarCode"].ToString() + " \n";

                    foreach (DauKhuc dk in ls)
                    {
                        ch += "update CuttingDocketData set Ratio = '" + dk.Value.Text + "' where BarCode = " + Temp.Data.Rows[0]["BarCode"].ToString() + " and Size = '" + dk.Size + "' \n";
                    }

                    kn.Ghi(ch);

                    if (kn.ErrorMessage == "")
                    {
                        Toast.MakeText(this, Temp.GetLL("DECO169"), ToastLength.Long).Show();//Đã sửa khổ thành công !!!

                        Temp.LoadData();

                        Intent inte = new Intent(this, typeof(MainDocketActivity));
                        StartActivity(inte);

                        Finish();
                    }
                    else Toast.MakeText(this, Temp.GetLL("DECO170") + ch + kn.ErrorMessage, ToastLength.Long).Show();//Sửa khổ thất bại !!!
                });
                b3.SetNeutralButton(Temp.GetLL("DECO51"), (s3, a3) => { });//THOÁT

                b3.SetCancelable(false);
                b3.Create().Show();

                void Yards()
                {
                    string daukhuc = kn.Doc("SELECT * FROM InLMeasageMaster where MeasgCode = 'CUTENDS'").Tables[0].Rows[0][1].ToString();
                    Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("vi-VN");

                    try
                    {
                        string length = edlength.Text;
                        double p = double.Parse(string.IsNullOrEmpty(edplies.Text) ? "0" : edplies.Text.Replace('.', ','));

                        string[] l2 = length.Contains('|') ? length.ToUpper().Split('|')[0].Split('Y') : length.ToUpper().Split('Y');

                        double l = double.Parse(string.IsNullOrEmpty(l2[0]) ? "0" : l2[0].Replace('.', ','));
                        double inch = double.Parse(string.IsNullOrEmpty(l2[1]) ? "0" : l2[1].Trim().Replace('.', ',')) + double.Parse(daukhuc);

                        double tt = (l + inch / 36) * p;

                        edfabric.Text = Math.Round(tt, 2).ToString();
                    }
                    catch (Exception ex)
                    {
                        Toast.MakeText(this, ex.ToString(), ToastLength.Long).Show();
                    }
                    Thread.CurrentThread.CurrentCulture = culture;
                }
            }
            catch (Exception ex) { Toast.MakeText(this, ex.ToString(), ToastLength.Long).Show(); }
        }
        private async Task<string> TakePicture()
        {
            string imgname = "";
            try
            {
                imgname = DateTime.Now.ToString("yyyyMMdd_HHmmss") + "_" + Temp.id;
                var media = new Plugin.Media.MediaImplementation();
                var file = await Plugin.Media.CrossMedia.Current.TakePhotoAsync(new Plugin.Media.Abstractions.StoreCameraMediaOptions
                {
                    Directory = "CuttingIamge",
                    Name = imgname + ".jpg",
                    SaveToAlbum = true,
                    PhotoSize = Plugin.Media.Abstractions.PhotoSize.Small, //switchSize.Checked ?// : Plugin.Media.Abstractions.PhotoSize.Full,
                    DefaultCamera = Plugin.Media.Abstractions.CameraDevice.Rear // switchCamera.Checked ? // : CameraDevice.Front
                });
                if (file == null)
                    return null;

                path = file.Path;
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, ex.ToString(), ToastLength.Long).Show();
            }
            return imgname;
        }
        private void SaveImage(Bitmap finalBitmap)
        {
            string root = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures).AbsolutePath;
            File myDir = new File(root);
            myDir.Mkdirs();
            string fname = DateTime.Now.ToString("yyMMdd_HHmmss") + ".jpg";
            File file = new File(myDir, fname);
            if (file.Exists()) file.Delete();
            try
            {
                path = System.IO.Path.Combine(root, fname);
                System.IO.FileStream output = new System.IO.FileStream(path, System.IO.FileMode.OpenOrCreate);
                finalBitmap.Compress(Bitmap.CompressFormat.Jpeg, 90, output);
                output.Flush();
                output.Close();

                MediaStore.Images.Media.InsertImage(ContentResolver, finalBitmap, fname, "Defect Image");
            }
            catch (Exception e)
            {
                Toast.MakeText(this, "Save " + e.ToString(), ToastLength.Long).Show();
            }
        }
        private void AddInfor(string title, string value)
        {
            try
            {
                if (Temp.Data.Rows.Count > 0)
                {
                    Android.App.AlertDialog.Builder b = new AlertDialog.Builder(this);

                    b.SetTitle(title.ToUpper());

                    EditText ed = new EditText(this)
                    {
                        Hint = "Nhập " + title,
                        Text = value,
                        LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent)
                    };

                    if (title == "SLChitiet") ed.InputType = Android.Text.InputTypes.ClassNumber;

                    b.SetView(ed);

                    b.SetPositiveButton(Temp.GetLL("DECO171"), (s, a) =>//LƯU
                    {

                        string ch = "update CuttingDocketData set " + title + " = N'" + ed.Text + "' where BarCode = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "')";

                        kn.Ghi(ch);

                        if (kn.ErrorMessage == "")
                        {
                            Toast.MakeText(this, Temp.GetLL("DECO172"), ToastLength.Long).Show();//Lưu thành công !!!

                            Temp.LoadData();

                            Intent inte = new Intent(this, typeof(MainDocketActivity));
                            StartActivity(inte);

                            Finish();
                        }
                        else Toast.MakeText(this, Temp.GetLL("DECO153") + kn.ErrorMessage, ToastLength.Long).Show();//Lưu không thành công !!!


                    });
                    b.SetNegativeButton(Temp.GetLL("DECO51"), (s, a) => { });//THOÁT

                    b.SetCancelable(false);
                    b.Create().Show();
                }
            }
            catch { }
        }
        private void AddThaoTac(string title)
        {
            try
            {
                List<string> opid = new List<string>();
                Android.App.AlertDialog.Builder b = new AlertDialog.Builder(this);
                b.SetTitle(Temp.GetLL("DECO144")+" " + title + " "+ Temp.GetLL("DECO145"));//THÊM NGƯỜI    //CHO DOCKET NÀY

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

                ListView list = new ListView(this)
                {
                    LayoutParameters = new ViewGroup.LayoutParams(500, 300),
                    NestedScrollingEnabled = true
                };
                ly.AddView(list);

                b.SetPositiveButton(Temp.GetLL("DECO21"), (s, a) =>//THÊM
                {
                    opid = Adapter.item;

                    if (opid.Count == 0) Toast.MakeText(this, Temp.GetLL("DECO146"), ToastLength.Long).Show();//Chưa có tên nhân viên !!!
                    else
                    {
                        foreach (string st in opid)
                        {
                            string str = "";

                            if (st.Contains("-")) str = st.Split('-')[0].Trim();
                            else str = st;

                            string name = Temp.GetName(str) + " | " + Temp.tableid;
                            string ch = "update CuttingDocketData set " + title + " = N'' + (case when " + title + " = '' then N'" + name + "' else " + title
                                + " + ' , ' + N'" + name + "' end) where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and " + title + " not like N'%" + name + "%'";

                            //Android.App.AlertDialog.Builder bb = new AlertDialog.Builder(this);
                            //bb.SetMessage(ch);
                            //bb.Create().Show();

                            Temp.kn.Ghi(ch);
                            Temp.kn.Ghi("declare @i	int set @i = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "')" +
                                    " insert into CuttingHistory values ('" + Temp.fac.Split('-')[0] + "',getdate(),@i,'" + Temp.tableid + "','" + str + "','" + Temp.fac.Split('/')[1] + "')");
                        }

                        Temp.LoadData();

                        Intent inte = new Intent(this, typeof(MainDocketActivity));
                        StartActivity(inte);

                        Finish();
                    }
                });
                b.SetNegativeButton(Temp.GetLL("DECO51"), (s, a) => { });//THOÁT
                b.SetNeutralButton(Temp.GetLL("DECO174"), (s, a) =>//XÓA KHỎI DANH SÁCH THAO TÁC
                {
                    opid = Adapter.item;

                    if (opid.Count == 0) Toast.MakeText(this, Temp.GetLL("DECO146"), ToastLength.Long).Show();//Chưa có tên nhân viên !!!
                    else
                    {
                        foreach (string st in opid)
                        {
                            string str = "";

                            if (st.Contains("-")) str = st.Split('-')[0].Trim();
                            else str = st;

                            string name = Temp.GetName(str) + " | " + Temp.tableid;
                            string ch = "update CuttingDocketData set " + title + " = N'' + replace(" + title + ",N'" + name + "','') where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and " + title + " like N'%" + name + "%'";

                            Temp.kn.Ghi(ch);
                        }

                        Temp.LoadData();

                        Intent inte = new Intent(this, typeof(MainDocketActivity));
                        StartActivity(inte);

                        Finish();
                    }
                });

                b.SetView(ly);
                b.Create().Show();

                bttim.Click += delegate
                {
                    opid.Clear();
                    try
                    {
                        DataTable emp = Temp.kn.Doc("select distinct EmployeeCode,EmployeeName from InLineQcUserDetail where EmployeeCode like '%" + edid.Text + "%'").Tables[0];

                        List<string> op = emp.Select().Select(d => d["EmployeeCode"].ToString() + " - " + d["EmployeeName"].ToString()).ToList();

                        list.Adapter = new Adapter(op);
                    }
                    catch
                    {
                        list.Adapter = null;
                    }
                };
                list.ItemClick += (s, a) =>
                {
                    Toast.MakeText(this, list.GetChildAt(a.Position).GetType().ToString(), ToastLength.Long).Show();
                    CheckBox cb = list.GetChildAt(a.Position) as CheckBox;

                    if (cb.Checked)
                    {
                        if (!opid.Contains(cb.Text.Split('_')[0].Trim())) opid.Add(cb.Text.Split('_')[0].Trim());
                    }
                    else
                    {
                        if (opid.Contains(cb.Text.Split('_')[0].Trim())) opid.Remove(cb.Text.Split('_')[0].Trim());
                    }
                };
            }
            catch { }
        }
        private void AddDocket()
        {
            try
            {
                string daukhuc = kn.Doc("SELECT * FROM InLMeasageMaster where MeasgCode = 'CUTENDS'").Tables[0].Rows[0][1].ToString();
                string[] choose = { Temp.GetLL("DECO175"), Temp.GetLL("DECO73"), Temp.GetLL("DECO74") };//"ADD NEW", "EDIT", "DELETE"

                Android.App.AlertDialog.Builder b1 = new AlertDialog.Builder(this);
                b1.SetTitle("SELECT FUNCTION");

                int index = 0;
                b1.SetSingleChoiceItems(choose, -1, (s1, a1) =>
                {
                    index = a1.Which;
                });

                b1.SetPositiveButton(Temp.GetLL("DECO176"), (s1, a1) =>//SELECT
                {
                    switch (index)
                    {
                        case 0:
                            AddNew(-1, "", "", "");
                            break;
                        case 1:
                            Edit();
                            break;
                        case 2:
                            Delete();
                            break;
                    }
                });
                b1.SetNegativeButton(Temp.GetLL("DECO51"), (s1, a1) => { });//EXIT

                b1.SetCancelable(false);
                b1.Create().Show();

                void AddNew(int dong, string bach, string roll, string yard)
                {
                    try
                    {
                        Android.App.AlertDialog.Builder b3 = new AlertDialog.Builder(this);
                        DataRow r = Temp.Data.Rows[0];
                        string length = r["Lenght"].ToString();
                        string ch = "";

                        b3.SetTitle("ADD NEW DOCKET");

                        #region dialog layout
                        ScrollView main = new ScrollView(this);
                        LinearLayout ly = new LinearLayout(this)
                        {
                            Orientation = Orientation.Vertical
                        };

                        TextView txtdk = new TextView(this)
                        {
                            Text = Temp.GetLL("DECO177") + " : " + daukhuc,//Đầu khúc:
                        };
                        txtdk.SetTextColor(Color.Red);
                        ly.AddView(txtdk);

                        TextView txtbatch = new TextView(this)
                        {
                            Text = "Batch No. :"
                        };
                        txtbatch.SetTextColor(Color.Blue);
                        ly.AddView(txtbatch);
                        EditText edbatch = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO178"),//Nhập số Batch No
                            Text = bach,
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent)
                        };
                        ly.AddView(edbatch);

                        TextView txtroll = new TextView(this)
                        {
                            Text = "Roll No. :"
                        };
                        txtroll.SetTextColor(Color.Blue);
                        ly.AddView(txtroll);
                        EditText edroll = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO179"),//Nhập số Roll No
                            Text = roll,
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent)
                        };
                        ly.AddView(edroll);

                        TextView txtyds = new TextView(this)
                        {
                            Text = "Yards in Roll :"
                        };
                        txtyds.SetTextColor(Color.Blue);
                        ly.AddView(txtyds);
                        EditText edyds = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO180"),//Nhập số yards trong cây
                            Text = yard,
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        ly.AddView(edyds);

                        TextView txtplies = new TextView(this)
                        {
                            Text = "Plies :"
                        };
                        txtplies.SetTextColor(Color.Blue);
                        ly.AddView(txtplies);
                        EditText edplies = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO155"),//Nhập số lớp
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        ly.AddView(edplies);

                        TextView txtdamage = new TextView(this)
                        {
                            Text = "Damage :"
                        };
                        txtdamage.SetTextColor(Color.Blue);
                        ly.AddView(txtdamage);
                        EditText eddamage = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO181"),//Nhập số lượng hư
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        ly.AddView(eddamage);

                        TextView txtjoint = new TextView(this)
                        {
                            Text = "Joint :"
                        };
                        txtjoint.SetTextColor(Color.Blue);
                        ly.AddView(txtjoint);
                        EditText edjoint = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO182"),//Nhập số lượng nối
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        ly.AddView(edjoint);

                        TextView txtends = new TextView(this)
                        {
                            Text = "Ends :"
                        };
                        txtends.SetTextColor(Color.Blue);
                        ly.AddView(txtends);
                        EditText edends = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO177"),//Đầu khúc
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        ly.AddView(edends);

                        TextView txtloss = new TextView(this)
                        {
                            Text = "Total Loss :"
                        };
                        txtloss.SetTextColor(Color.Blue);
                        ly.AddView(txtloss);
                        EditText edloss = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO183"),//Tổng số thiếu
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        ly.AddView(edloss);

                        TextView txtactual = new TextView(this)
                        {
                            Text = "Actual Used :"
                        };
                        txtactual.SetTextColor(Color.Blue);
                        ly.AddView(txtactual);
                        EditText edactual = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO184"),//Số lớp thực tế sử dụng
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                            InputType = Android.Text.InputTypes.ClassNumber | Android.Text.InputTypes.NumberFlagDecimal
                        };
                        ly.AddView(edactual);

                        TextView txtremark = new TextView(this)
                        {
                            Text = "Remarks :"
                        };
                        txtremark.SetTextColor(Color.Blue);
                        ly.AddView(txtremark);
                        EditText edremark = new EditText(this)
                        {
                            Hint = Temp.GetLL("DECO115"),//Ghi chú
                            TextAlignment = TextAlignment.Center,
                            LayoutParameters = new ViewGroup.LayoutParams(500, ViewGroup.LayoutParams.WrapContent),
                        };
                        ly.AddView(edremark);

                        CheckBox recut = new CheckBox(this)
                        {
                            Checked = false,
                            Text = "Re-cut"
                        };
                        ly.AddView(recut);
                        #endregion

                        if (dong >= 0)
                        {
                            DataRow row = Temp.Docket.Rows[dong];

                            edbatch.Text = row["BatchNo"].ToString();
                            edroll.Text = row["RollNo"].ToString();
                            edyds.Text = row["Yds"].ToString();
                            edends.Text = row["Ends"].ToString();
                            edremark.Text = row["Remarks"].ToString();

                            ch = "delete from CuttingDocketReport where NO = " + row["NO"].ToString();
                        }

                        main.AddView(ly);
                        b3.SetView(main);

                        b3.SetPositiveButton(Temp.GetLL("DECO185"), (s3, a2) =>//XÁC NHẬN
                        {
                            if (ch != "") kn.Ghi(ch);

                            List<string> ls = new List<string>
                            {
                                "@barcode=" + Temp.barcode,
                                "@batch=" +  edbatch.Text,
                                "@roll=" +   edroll.Text,
                                "@yds=" +    edyds.Text,
                                "@plies=" +  edplies.Text,
                                "@damage=" + eddamage.Text,
                                "@joint=" +  edjoint.Text,
                                "@ends=" +   edends.Text,
                                "@loss=" +   edloss.Text,
                                "@used=" +   edactual.Text,
                                "@remark=" + edremark.Text,
                                "@user=" +   Temp.id,
                                "@fac=" + Temp.fac.Split('-')[0],
                                "@table=" +  Temp.tableid
                            };

                            kn.Proc("CuttingDocketUpdateReport", ls);

                            if (kn.ErrorMessage == "")
                            {
                                Toast.MakeText(this, Temp.GetLL("DECO186"), ToastLength.Long).Show();//Xác nhận thành công !!!
                                Update();
                            }
                            else Toast.MakeText(this, Temp.GetLL("DECO187") + kn.ErrorMessage, ToastLength.Long).Show();//Xác nhận không thành công !!!

                            Temp.LoadData();
                            Temp.LoadDocket();

                            Intent inte = new Intent(this, typeof(MainDocketActivity));
                            StartActivity(inte);

                            Finish();
                        });
                        b3.SetNegativeButton(Temp.GetLL("DECO51"), (s3, a3) => { });//THOÁT
                        b3.SetNeutralButton(Temp.GetLL("DECO188"), async (s3, a3) =>//QUÉT ROLLNO BARCODE
                        {
                            string bc = await Temp.Scan(this);

                            if (bc != "")
                            {
                                DataTable docket = kn.Doc("select * from InlineFBRollDataDtl where RollNameID = '" + bc + "'").Tables[0];
                                if (docket.Rows.Count > 0)
                                {
                                    DataRow rr = docket.Rows[0];

                                    AddNew(dong, rr["OriBatchNo"].ToString(), rr["OriRollNo"].ToString(), rr["OriLenght"].ToString());
                                }
                            }
                        });

                        b3.SetCancelable(false);
                        b3.Create().Show();

                        edyds.TextChanged += delegate
                        {
                            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("vi-VN");
                            try
                            {
                                double l = 0;
                                double y = double.Parse(string.IsNullOrEmpty(edyds.Text) ? "0" : edyds.Text);

                                string[] l2 = length.Contains('|') ? length.Split('|')[0].ToUpper().Split('Y') : length.ToUpper().Split('Y');

                                l = double.Parse(string.IsNullOrEmpty(l2[0]) ? "0" : l2[0]);
                                double inch = double.Parse(string.IsNullOrEmpty(l2[1]) ? "0" : l2[1].Trim().Replace('.', ',')) + double.Parse(daukhuc);
                                l += inch / 36;

                                edplies.Text = Math.Floor(y / l).ToString(); edends.Text = Math.Round(y / l - Math.Floor(y / l), 2).ToString();
                            }
                            catch (Exception ex)
                            {
                                Toast.MakeText(this, ex.ToString(), ToastLength.Long).Show();
                            }
                            Thread.CurrentThread.CurrentCulture = culture;
                        };
                        edplies.TextChanged += delegate { edactual.Text = edplies.Text; };
                        edactual.TextChanged += delegate
                        {
                            TTLoss();
                        };
                        edends.TextChanged += delegate { TTLoss(); };
                        recut.Click += delegate
                        {
                            if (recut.Checked)
                            {
                                if (!edremark.Text.Contains("recut")) edremark.Text += " recut";
                            }
                            else edremark.Text = edremark.Text.Replace("recut", "");
                        };

                        void TTLoss()
                        {
                            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("vi-VN");
                            try
                            {
                                double yy = 0;
                                DataTable temp = new DataTable();
                                temp = kn.Doc("select BarCode,sum(case when ActualUsed = '' then 0 else cast(ActualUsed as int) end) Used from CuttingDocketReport where NO != " + r[0].ToString() + " and BarCode = '" + r[1].ToString() + "' and RollNo = '" + r[3].ToString() + "' group by BarCode").Tables[0];
                                if (temp.Rows.Count > 0) yy = double.Parse(temp.Rows[0][1].ToString());

                                double l = 0;
                                double y = double.Parse(string.IsNullOrEmpty(edyds.Text) ? "0" : edyds.Text.Replace('.', ','));
                                double p = double.Parse(string.IsNullOrEmpty(edplies.Text) ? "0" : edplies.Text.Replace('.', ','));
                                double u = double.Parse(string.IsNullOrEmpty(edactual.Text) ? "0" : edactual.Text.Replace('.', ',')) + yy;
                                double e = double.Parse(string.IsNullOrEmpty(edends.Text) ? "0" : edends.Text.Replace('.', ','));

                                string[] l2 = length.Contains('|') ? length.Split('|')[0].Split('Y') : length.ToUpper().Split('Y');

                                l = double.Parse(string.IsNullOrEmpty(l2[0]) ? "0" : l2[0].Replace('.', ','));
                                double inch = double.Parse(string.IsNullOrEmpty(l2[1]) ? "0" : l2[1].Trim().Replace('.', ',')) + double.Parse(daukhuc);

                                if (u < p)
                                {
                                    edloss.Text = "0";
                                }
                                else //if (u == p)
                                {
                                    double tt = (l + inch / 36) * (u + yy) + e;

                                    //loss.Text = tt - y > 0 ? Math.Ceiling(tt - y).ToString() : Math.Floor(tt - y).ToString();
                                    edloss.Text = Math.Round(tt - y, 2).ToString();
                                }
                                //MessageBox.Show("l=" + l + ",inch=" + inch + ",ends=" + e + ",used=" + (u + yy));
                            }
                            catch (Exception ex)
                            {
                                Toast.MakeText(this, ex.ToString(), ToastLength.Long).Show();
                            }
                            Thread.CurrentThread.CurrentCulture = culture;
                        }
                        void Update()
                        {
                            string tt = "LayedBy";

                            string name = Temp.GetName(Temp.id);

                            string sub = "select * from CuttingHistory where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and Action = 'Spread' " + (Temp.tableid.Contains("/") ? "and TableID like '%/" + Temp.tableid.Split('/')[1] + "'" : "");
                            DataTable dt = Temp.kn.Doc(sub).Tables[0];

                            if (dt.Rows.Count == 0) Temp.kn.Ghi("declare @i	int set @i = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "')" +
                                                               " insert into CuttingHistory values ('" + Temp.fac.Split('-')[0] + "',getdate(),@i,'" + Temp.tableid + "','" + Temp.id + "','Spread')");

                            DataTable check = Temp.kn.Doc("select * from CuttingDocketData where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and " + tt + " like N'%" + name + "%'").Tables[0];

                            if (check.Rows.Count == 0)
                            {
                                ch = "update CuttingDocketData set " + tt + " = N'' + (case when " + tt + " = '' then N'" + name + "' else " + tt
                               + " + ' , ' + N'" + name + "' end) where BarCode  = (select top 1 NO from CuttingBarcode where BarCode = '" + Temp.barcode + "') and " + tt + " not like N'%" + name + "%'";
                                Temp.kn.Ghi(ch);
                            }
                        }
                    }
                    catch (Exception ex) { Toast.MakeText(this, ex.ToString(), ToastLength.Long).Show(); }
                }
                void Edit()
                {
                    try
                    {
                        Android.App.AlertDialog.Builder b2 = new AlertDialog.Builder(this);
                        string[] dk = Temp.Docket.Select().Select(d => d["RollNo"].ToString()).ToArray();

                        string no = "", id = "";
                        int row = 0;
                        b2.SetTitle("EDIT ITEM");
                        b2.SetSingleChoiceItems(dk, -1, (s2, a2) =>
                        {
                            row = a2.Which;
                            DataRow r = Temp.Docket.Rows[a2.Which];
                            no = r["NO"].ToString();
                            id = r["CreateUser"].ToString();
                        });

                        b2.SetPositiveButton("EDIT", (s2, a2) =>
                        {
                            bool run = true;
                            if (Temp.level > 0) run = true;
                            else if (!id.Contains(Temp.id)) run = false;

                            if (run)
                            {
                                AddNew(row, "", "", "");
                            }
                            else Toast.MakeText(this, Temp.GetLL("DECO161") + kn.ErrorMessage, ToastLength.Long).Show();//Bạn không có quyền thao tác này !!!
                        });
                        b2.SetNegativeButton("EXIT", (s2, a2) => { });

                        b2.SetCancelable(false);
                        b2.Create().Show();
                    }
                    catch
                    {
                        Toast.MakeText(this, Temp.GetLL("DECO189"), ToastLength.Long).Show();//Không có dữ liệu để sửa !!!
                    }
                }
                void Delete()
                {
                    try
                    {
                        Android.App.AlertDialog.Builder b2 = new AlertDialog.Builder(this);
                        string[] dk = Temp.Docket.Select().Select(d => d["RollNo"].ToString()).ToArray();

                        string no = "", id = "";
                        b2.SetTitle("DELETE ITEM");
                        b2.SetSingleChoiceItems(dk, -1, (s2, a2) =>
                        {
                            DataRow r = Temp.Docket.Rows[a2.Which];
                            no = r["NO"].ToString();
                            id = r["CreateUser"].ToString();
                        });

                        b2.SetPositiveButton("DELETE", (s2, a2) =>
                        {
                            bool run = true;
                            if (Temp.level > 0) run = true;
                            else if (!Temp.id.Equals(id)) run = false;

                            if (run)
                            {
                                kn.Ghi("delete from CuttingDocketReport where NO = " + no);

                                if (kn.ErrorMessage == "") Toast.MakeText(this, Temp.GetLL("DECO190"), ToastLength.Long).Show();//Đã xóa thành công !!!
                                else Toast.MakeText(this, Temp.GetLL("DECO191") + kn.ErrorMessage, ToastLength.Long).Show();//Xóa không thành công !!!

                                Temp.LoadDocket();
                                LoadDocket();
                            }
                            else Toast.MakeText(this, Temp.GetLL("DECO161") + kn.ErrorMessage, ToastLength.Long).Show();//Bạn không có quyền thao tác này !!!
                        });
                        b2.SetNegativeButton("EXIT", (s2, a2) => { });

                        b2.SetCancelable(false);
                        b2.Create().Show();
                    }
                    catch
                    {
                        Toast.MakeText(this, Temp.GetLL("DECO192"), ToastLength.Long).Show();//Không có dữ liệu để xóa !!!
                    }
                }
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, "Add new docket failed !!!" + ex.ToString(), ToastLength.Long).Show();
            }
        }
        private int Number(int i, bool wi = true)
        {
            Android.Util.DisplayMetrics metric = Application.Context.Resources.DisplayMetrics;

            //if (wi) return LayoutRequest.Widht((int)(i * metric.Density));
            //else return LayoutRequest.Height((int)(i * metric.Density));

            return (int)(i * metric.Density);
        }

        private void LoadData()
        {
            try
            {
                if (Temp.Data.Rows.Count > 0)
                {
                    DataRow r = Temp.Data.Rows[0];
                    for (int i = 0; i < layout.ChildCount; i++)
                    {
                        var view = layout.GetChildAt(i);

                        if (view.GetType().ToString().Contains("TextView"))
                        {
                            TextView txt = view as TextView;

                            if (txt.Text.Contains("value"))
                            {
                                txt.Text = r[txt.Text.Split('-')[0]].ToString();
                            }
                            else if (txt.Text.Contains("size-"))
                            {
                                int j = int.Parse(txt.Text.Split('-')[1]);

                                if (j < Temp.Data.Rows.Count)
                                {
                                    DataRow rr = Temp.Data.Rows[j];
                                    txt.Text = rr["Size"].ToString();
                                }
                                else txt.Text = "";
                            }
                            else if (txt.Text.Contains("ratio-"))
                            {
                                int j = int.Parse(txt.Text.Split('-')[1]);

                                if (j < Temp.Data.Rows.Count)
                                {
                                    DataRow rr = Temp.Data.Rows[j];
                                    txt.Text = rr["Ratio"].ToString();
                                }
                                else txt.Text = "";
                            }
                        }
                    }
                }
                else
                {
                    for (int i = 0; i < layout.ChildCount; i++)
                    {
                        var view = layout.GetChildAt(i);

                        if (view.GetType().ToString().Contains("TextView"))
                        {
                            TextView txt = view as TextView;
                            if (txt.Text.Contains("value"))
                            {
                                txt.Text = "";
                            }
                            else if (txt.Text.Contains("size-"))
                            {
                                txt.Text = "";
                            }
                            else if (txt.Text.Contains("ratio-"))
                            {
                                txt.Text = "";
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, "Load data failed !!!" + ex.ToString(), ToastLength.Long).Show();
            }
        }
        private void LoadDocket()
        {
            try
            {
                if (Temp.Docket.Rows.Count > 0)
                {
                    DataTable dt = Temp.Docket.DefaultView.ToTable(false, "BatchNo", "RollNo", "Yds", "Plies", "Damage", "Joint", "Ends", "TTLoss", "ActualUsed", "Remarks", "TableID", "SubTable");

                    lsv.Adapter = new A1ATeam.ListViewAdapterWithNoLayout(dt, new List<int> { Number(70), Number(60), Number(70), Number(60), Number(75), Number(60), Number(60), Number(80), Number(80), Number(90), Number(90), Number(90) }, false, false, true)
                    {
                        TextSize = 20,
                        TextColor = Color.ParseColor("#FF7F24"),
                        BackGroundColor = Color.Transparent
                    };
                }
                if (Temp.DocketReport.Rows.Count > 0)
                {
                    DataRow r = Temp.DocketReport.Rows[0];
                    txtttyard.Text = r[0].ToString();
                    txtttplies.Text = r[1].ToString();
                    txtttends.Text = r[2].ToString();
                }
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, "Load docket failed !!!" + ex.ToString(), ToastLength.Long).Show();
            }
        }
    }
    class Adapter : BaseAdapter<List<string>>
    {
        List<string> ls = new List<string>();
        public static List<string> item = new List<string>();
        public Adapter(List<string> l)
        {
            ls = l;
            item.Clear();
        }

        public override List<string> this[int position]
        {
            get
            {
                return ls;
            }
        }

        public override int Count
        {
            get
            {
                return ls.Count;
            }
        }

        public override long GetItemId(int position)
        {
            return position;
        }

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            CheckBox cb = new CheckBox(Application.Context);

            cb.Text = ls[position];
            if (item.Contains(cb.Text.Split('_')[0].Trim())) cb.Checked = true;
            else cb.Checked = false;

            cb.CheckedChange += delegate
            {
                if (cb.Checked)
                {
                    if (!item.Contains(cb.Text.Split('_')[0].Trim())) item.Add(cb.Text.Split('_')[0].Trim());
                }
                else
                {
                    if (item.Contains(cb.Text.Split('_')[0].Trim())) item.Remove(cb.Text.Split('_')[0].Trim());
                }
            };

            return cb;
        }
    }
    class DauKhuc
    {
        public string Size { get; set; }
        public EditText Value { get; set; }
    }
}