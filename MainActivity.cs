using Android.App;
using Android.OS;
using Android.Support.V7.App;
using Android.Runtime;
using Android.Widget;
using System;
using Android.Content;
using CSDL;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Android.Content.PM;
using Android;
using Android.Support.V4.Content;
using System.Data;
using ZXing.Mobile;

namespace CuttingDocketTablet
{
    [Activity(Label = "CUTTING DOCKET", Icon = "@drawable/A1ACUTTING", Theme = "@style/Theme.AppCompat.Light.NoActionBar", MainLauncher = true, ScreenOrientation = ScreenOrientation.SensorPortrait)]
    public class MainActivity : AppCompatActivity
    {
        RelativeLayout layout;
        EditText eduser, edpass;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.activity_main);

            MobileBarcodeScanner.Initialize(Application);
            UpdateManager.RequestInit.Init(this);

            eduser = FindViewById<EditText>(Resource.Id.eduser);
            edpass = FindViewById<EditText>(Resource.Id.edpass);
            EditText edfac = FindViewById<EditText>(Resource.Id.edfactory);
            edfac.Focusable = false; edpass.RequestFocus();

            Button btlogin = FindViewById<Button>(Resource.Id.btlogin);
            Button btexit = FindViewById<Button>(Resource.Id.btexit);
            Button btscan = FindViewById<Button>(Resource.Id.btscan);
            Button btserver = FindViewById<Button>(Resource.Id.btserver);

            TextView version = FindViewById<TextView>(Resource.Id.txtversion); version.Text = Temp.version;
            TextView txtfac = FindViewById<TextView>(Resource.Id.txtfac);

            layout = FindViewById<RelativeLayout>(Resource.Id.layoutlogin);

            RadioButton rdlg = FindViewById<RadioButton>(Resource.Id.rdlg);

            string[] lg = { "VN - VietNam", "EN - English", "KM - KhMer", "TH - Thai" };

            try
            {
                ISharedPreferences pre = GetSharedPreferences("CuttingDocket", FileCreationMode.Private);
                string user = pre.GetString("id", "").ToString();
                string fac = pre.GetString("fac", "").ToString();
                string xuong = pre.GetString("xuong", "A1AF1").ToString();
                string ch = pre.GetString("chuoi", "").ToString();
                Temp.id = user; txtfac.Text = xuong; edfac.Text = fac;
                if (ch != "") Temp.ch = ch;

                Connect kn = new Connect(Temp.ch);

                Temp.newlanguage = pre.GetInt("lg", 1);
                rdlg.Text = lg[Temp.newlanguage - 1].Split('-')[0].Trim();

                Temp.url = kn.Doc("select * from InlineQCSystem where STT = 8").Tables[0].Rows[0][0].ToString();

                Temp.NgonNgu = kn.Doc("select * from InLMeasageMaster where MeasgCode like 'DECO%'").Tables[0];

                Temp.Link = kn.Doc("select * from InlineQCSystem where STT = 12").Tables[0].Rows[0][0].ToString();
                if (Temp.Link.Length > 0) Temp.AppName = Temp.Link.Split('/').Last();

                DataTable facline = kn.Doc("select distinct FacZone from cpdtlsdays order by FacZone").Tables[0];
                List<string> lstfac = facline.Select().Select(d => d[0].ToString()).ToList();

                Temp.machinenum = int.Parse(kn.Doc("select * from DecorationDepartment where Department = 'Cutting'").Tables[0].Rows[0][4].ToString());

                txtfac.Click += delegate
                {
                    Android.App.AlertDialog.Builder b = new Android.App.AlertDialog.Builder(this);

                    b.SetSingleChoiceItems(lstfac.ToArray(), -1, (s, a) =>
                    {
                        Dialog d = s as Dialog;

                        txtfac.Text = lstfac[a.Which];
                        fac = edfac.Text;

                        d.Dismiss();
                    });

                    b.Create().Show();
                };
                edfac.Click += delegate
                {
                    if (txtfac.Text != "")
                    {
                        List<string> f = new List<string>();
                        //foreach (string str in lstfac)
                        {
                            f.Add(txtfac.Text + "-" + "Cutting/Spread");
                            f.Add(txtfac.Text + "-" + "Cutting/Cut");
                            f.Add(txtfac.Text + "-" + "Cutting/Number");
                            f.Add(txtfac.Text + "-" + "Cutting/Bundle");
                            f.Add(txtfac.Text + "-" + "Cutting/Marker");
                        }
                        f.Add("Admin");

                        Android.App.AlertDialog.Builder b = new Android.App.AlertDialog.Builder(this);

                        b.SetSingleChoiceItems(f.ToArray(), -1, (s, a) =>
                        {
                            Dialog d = s as Dialog;

                            edfac.Text = f[a.Which];
                            fac = edfac.Text;

                            d.Dismiss();
                        });

                        b.Create().Show();
                    }
                };
                btexit.Click += delegate
                {
                    System.Diagnostics.Process.GetCurrentProcess().Kill();
                };
                btlogin.Click += delegate
                {
                    Temp.HideKeyBoard(this, CurrentFocus);

                    if (edpass.Text == "") Toast.MakeText(this, Temp.GetString("DECO17"), ToastLength.Long).Show();
                    else if (fac == "") Toast.MakeText(this, Temp.GetString("DECO18"), ToastLength.Long).Show();
                    else
                    {
                        try
                        {
                            DataTable dt = kn.Doc("select * from InLineQcUserDetail where EmployeeCode = '" + eduser.Text + "' and Password = '" + edpass.Text + "'").Tables[0];
                            if (dt.Rows.Count == 0)
                                Toast.MakeText(this, Temp.GetString("DECO14"), ToastLength.Long).Show();
                            else
                            {
                                DataRow r = dt.Rows[0];
                                Temp.level = string.IsNullOrEmpty(r["ManLevel"].ToString()) ? 0 : int.Parse(r["ManLevel"].ToString());

                                Toast.MakeText(this, Temp.GetString("DECO15"), ToastLength.Long).Show();

                                Temp.id = eduser.Text.ToUpper();
                                Temp.fac = fac;

                                ISharedPreferences edpre = GetSharedPreferences("CuttingDocket", FileCreationMode.Private);
                                ISharedPreferencesEditor editor = edpre.Edit();
                                editor.PutString("id", eduser.Text.ToUpper());
                                editor.PutString("fac", fac);
                                editor.PutString("xuong", txtfac.Text);
                                editor.Commit();

                                Intent inte = new Intent(this, typeof(ChooseActivity));
                                StartActivity(inte);
                            }
                        }
                        catch
                        {
                            Toast.MakeText(this, Temp.GetString("DECO16"), ToastLength.Long).Show();
                        }
                    }
                };
                btscan.Click += async delegate
                {
                    if (fac == "") Toast.MakeText(this, "Chưa chọn Factory", ToastLength.Long).Show();
                    else
                    {
                        string u = await Temp.Scan(this);
                        eduser.Text = u.Split(";")[0].ToUpper();
                        edpass.Text = u.Split(";")[1];

                        try
                        {
                            DataTable dt = kn.Doc("select * from InLineQcUserDetail where EmployeeCode = '" + eduser.Text + "' and Password = '" + edpass.Text + "'").Tables[0];
                            if (dt.Rows.Count == 0)
                                Toast.MakeText(this, Temp.GetString("DECO14"), ToastLength.Long).Show();
                            else
                            {
                                Toast.MakeText(this, Temp.GetString("DECO15"), ToastLength.Long).Show();

                                Temp.id = eduser.Text.ToUpper();
                                Temp.fac = fac;

                                ISharedPreferences edpre = GetSharedPreferences("CuttingDocket", FileCreationMode.Private);
                                ISharedPreferencesEditor editor = edpre.Edit();
                                editor.PutString("id", eduser.Text.ToUpper());
                                editor.PutString("fac", fac);
                                editor.PutString("xuong", txtfac.Text);
                                editor.Commit();
                            }
                        }
                        catch
                        {
                            Toast.MakeText(this, Temp.GetString("DECO16"), ToastLength.Long).Show();
                        }
                    }
                };
                btserver.Click += delegate
                {
                    Intent inte = new Intent(this, typeof(ServerActivity));
                    StartActivity(inte);

                    Finish();
                };
                layout.LongClick += delegate
                  {
                      Android.App.AlertDialog.Builder b = new Android.App.AlertDialog.Builder(this);

                      LinearLayout ln = new LinearLayout(this) { Orientation = Orientation.Vertical };

                      EditText edid = new EditText(this) { Hint = "Employee ID", LayoutParameters = new Android.Views.ViewGroup.LayoutParams(Android.Views.ViewGroup.LayoutParams.MatchParent, Android.Views.ViewGroup.LayoutParams.WrapContent) };
                      ln.AddView(edid);

                      Button bttim = new Button(this) { Text = "SEARCH", LayoutParameters = new Android.Views.ViewGroup.LayoutParams(Android.Views.ViewGroup.LayoutParams.MatchParent, Android.Views.ViewGroup.LayoutParams.WrapContent) };
                      ln.AddView(bttim);

                      TextView txt = new TextView(this); ln.AddView(txt);

                      Button btthem = new Button(this) { Text = "ADD NEW", LayoutParameters = new Android.Views.ViewGroup.LayoutParams(Android.Views.ViewGroup.LayoutParams.MatchParent, Android.Views.ViewGroup.LayoutParams.WrapContent) };
                      ln.AddView(btthem);

                      b.SetView(ln);
                      b.Create().Show();

                      bttim.Click += delegate
                      {
                          DataTable dt = kn.Doc("exec GetLoadData 6,'','" + edid.Text + "'").Tables[0];

                          if (dt.Rows.Count > 0)
                          {
                              DataRow r = dt.Rows[0];

                              txt.Text = r["id_staff"] + " - " + r["fullname"];
                          }
                          else Toast.MakeText(this, "Not found this ID !!!", ToastLength.Long).Show();
                      };
                      btthem.Click += delegate
                      {
                          if (txt.Text != "")
                          {
                              string id = txt.Text.Split('-')[0].Trim();
                              string name = txt.Text.Split('-')[1].Trim();

                              DataTable dt = kn.Doc("select * from InLineQcUserDetail where EmployeeCode = '" + id + "'").Tables[0];

                              if (dt.Rows.Count > 0) Toast.MakeText(this, "This ID has been existed !!!", ToastLength.Long).Show();
                              else
                              {
                                  string qr = "insert into InLineQcUserDetail (EmployeeCode,EmployeeName,Password) values ('" + id + "',N'" + name + "','" + id.Substring(id.Length - 5) + "')";

                                  kn.Ghi(qr);

                                  if (kn.ErrorMessage == "")
                                  {
                                      Toast.MakeText(this, "Add new success !!!", ToastLength.Long).Show();

                                      eduser.Text = id;
                                      edpass.Text = id.Substring(id.Length - 5);
                                  }
                                  else Toast.MakeText(this, kn.ErrorMessage, ToastLength.Long).Show();
                              }
                          }
                      };
                  };
                rdlg.Click += delegate
                {
                    Android.App.AlertDialog.Builder b = new Android.App.AlertDialog.Builder(this);

                    b.SetSingleChoiceItems(lg, -1, (s, a) =>
                    {
                        Temp.newlanguage = a.Which + 1;
                        rdlg.Text = lg[a.Which].Split('-')[0].Trim();

                        ISharedPreferencesEditor editor = pre.Edit();
                        editor.PutInt("lg", a.Which + 1);
                        editor.Commit();

                        ((Dialog)s).Dismiss();
                    });

                    b.Create().Show();
                };

                CheckUpdate();
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, ex.ToString(), ToastLength.Long).Show();
            }
        }
        protected override void OnResume()
        {
            base.OnResume();

            eduser.Text = Temp.id;
            edpass.Text = "";
        }
        private void SetPermision()
        {
            Permission read = ContextCompat.CheckSelfPermission(Application.Context, Manifest.Permission.ReadExternalStorage);
            Permission write = ContextCompat.CheckSelfPermission(Application.Context, Manifest.Permission.WriteExternalStorage);

            if (read != Permission.Granted) RequestPermissions(new string[] { Manifest.Permission.ReadExternalStorage, }, 0);
            if (write != Permission.Granted) RequestPermissions(new string[] { Manifest.Permission.WriteExternalStorage, }, 0);
        }
        private async void CheckUpdate()
        {
            try
            {
                StrictMode.VmPolicy.Builder builder = new StrictMode.VmPolicy.Builder();
                StrictMode.SetVmPolicy(builder.Build());

                await Task.Run(() => { SetPermision(); });

                string message1 = Temp.NgonNgu.Select().Where(x => x[0].ToString() == "DECO01").FirstOrDefault()[Temp.newlanguage].ToString();
                string message2 = Temp.NgonNgu.Select().Where(x => x[0].ToString() == "DECO02").FirstOrDefault()[Temp.newlanguage].ToString();
                string button1 = Temp.NgonNgu.Select().Where(x => x[0].ToString() == "DECO03").FirstOrDefault()[Temp.newlanguage].ToString();
                string button2 = Temp.NgonNgu.Select().Where(x => x[0].ToString() == "DECO04").FirstOrDefault()[Temp.newlanguage].ToString();

                Temp.OnUpdate(false, new Android.App.AlertDialog.Builder(this), "Cutting Docket Report", message1, message2, button1, button2, this);
            }
            catch { }
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}