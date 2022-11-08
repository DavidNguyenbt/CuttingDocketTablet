using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
//using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Views.InputMethods;
using Android.Widget;
using CSDL;
using UpdateManager;
using ZXing.Mobile;
using Environment = System.Environment;

namespace CuttingDocketTablet
{
    class Temp
    {
        //public static string ch = "Data Source=192.168.1.245;Initial Catalog=DtradeProduction;Integrated Security=False;User ID=prog4;Password=DeS;Connect Timeout=30;Encrypt=False;";
        //public static string ch = "Data Source=192.168.50.253;Initial Catalog=DtradeProduction;Integrated Security=False;User ID=sa;Password=Sql4116!;Connect Timeout=30;Encrypt=False;";
        public static string ch = "Data Source=192.168.54.8;Initial Catalog=DtradeProduction;Integrated Security=False;User ID=sa;Password=Admin@168*;Connect Timeout=30;Encrypt=False;";
        public static string id = "", line = "", url = "", bundle = "", pancl = "", barcode = "", tableid = "", fac = "", version = "V1.4";
        public static string Link = "", AppName = "";
        public static DataTable NgonNgu = new DataTable();
        public static DataTable Data = new DataTable();
        public static DataTable Docket = new DataTable();
        public static DataTable DocketReport = new DataTable();
        public static int newlanguage = 1, oldlanguage = 0, level = 0, machinenum = 7;
        public static DateTime date;
        public static MobileBarcodeScanner scanner;
        public static Connect kn = new Connect(ch);
        public static View overlay;
        public static List<string> Cutting = new List<string> { "Cut", "Spread", "Number", "Bundle" };
        public static Timer Server;
        public static bool Offline = false;

        public static void RunServer(Context t)
        {
            Server = new Timer();

            Server.Interval = 1000;
            Server.Enabled = true;
            Server.Elapsed += delegate
            {
                try
                {
                    SqlConnection con = new SqlConnection(ch);
                    con.Open();
                    Offline = false;
                    con.Close();


                }
                catch (Exception ex)
                {
                    Toast.MakeText(t, ex.ToString(), ToastLength.Long).Show();
                }
            };
        }

        public static void UploadData(Context t)
        {
            try
            {
                string fileName = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "docket.txt");

                string text = File.ReadAllText(fileName);

                if (text != "")
                {
                    Android.App.AlertDialog.Builder b = new AlertDialog.Builder(t);

                    b.SetTitle("");
                }
            }
            catch (Exception ex)
            {
                Toast.MakeText(t, ex.ToString(), ToastLength.Long).Show();
            }
        }
        public static void HideKeyBoard(Context context, View cur)
        {
            InputMethodManager inputManager = (InputMethodManager)context.GetSystemService(Context.InputMethodService);
            View currentFocus = cur;
            if (currentFocus != null)
            {
                inputManager.HideSoftInputFromWindow(currentFocus.WindowToken, HideSoftInputFlags.None);
            }
        }
        public static void OnUpdate(bool click, Android.App.AlertDialog.Builder b, string title, string message1, string message2, string buttonOK, string buttonNO, Context ct)
        {
            Update.CheckUpdate(ct, false, click, b, Link, AppName, title, message1, message2, buttonOK, buttonNO);
        }

        public static async Task<string> Scan(Context t)
        {
            scanner = new MobileBarcodeScanner
            {
                UseCustomOverlay = true
            };
            overlay = LayoutInflater.FromContext(t).Inflate(Resource.Layout.flash, null);
            Button flash = overlay.FindViewById<Button>(Resource.Id.btFlash);
            flash.Click += (sender, e) => scanner.ToggleTorch();

            scanner.CustomOverlay = overlay;
            scanner.AutoFocus();
            var result = await scanner.Scan(new MobileBarcodeScanningOptions { UseNativeScanning = true });

            return HandleScanResultLogin(result);
        }
        private static string HandleScanResultLogin(ZXing.Result result)
        {
            string rs = "";
            if (result != null && !string.IsNullOrEmpty(result.Text))
            {
                var v = (Vibrator)Application.Context.GetSystemService(Context.VibratorService);
                v.Vibrate(50);

                rs = result.Text;
            }
            return rs;
        }

        public static string GetString(string code)
        {
            try
            {
                DataRow dr = NgonNgu.Select().Where(x => x[0].ToString() == code).FirstOrDefault();

                return dr[newlanguage].ToString() == "" ? code : dr[newlanguage].ToString();
            }
            catch { return code; }
        }

        public static void LoadData()
        {
            try
            {
                if (Data.Rows.Count > 0) Data.Rows.Clear();

                Data = kn.Doc("exec CuttingDataSelected 1,'" + barcode + "',''").Tables[0];

                if (kn.ErrorMessage != "") Toast.MakeText(Application.Context, "Load data failed !!!" + kn.ErrorMessage, ToastLength.Long).Show();
            }
            catch (Exception ex)
            {
                Toast.MakeText(Application.Context, ex.ToString(), ToastLength.Long).Show();
            }
        }
        public static void LoadDocket()
        {
            try
            {
                if (Docket.Rows.Count > 0) Docket.Rows.Clear();
                if (DocketReport.Rows.Count > 0) DocketReport.Rows.Clear();

                DataSet ds = kn.Doc("exec CuttingDataSelected 5,'" + barcode + "',''");

                Docket = ds.Tables[0];
                DocketReport = ds.Tables[1];

                if (kn.ErrorMessage != "") Toast.MakeText(Application.Context, "Load docket failed !!!" + kn.ErrorMessage, ToastLength.Long).Show();
            }
            catch (Exception ex)
            {
                Toast.MakeText(Application.Context, ex.ToString(), ToastLength.Long).Show();
            }
        }
        public static string GetName(string id)
        {
            string name = "";
            try
            {
                DataTable dt = kn.Doc("select * from InLineQcUserDetail where EmployeeCode = '" + id + "'").Tables[0];

                name = dt.Rows[0]["EmployeeName"].ToString().Split(" ").Last() + " - " + id.Substring(id.Length - 5, 5);
            }
            catch
            {
                name = id;
            }

            return name;
        }
        public static string GetLL(string str)
        {
            string ll = "";
            try
            {
                ll = NgonNgu.Select("MeasgCode = '" + str + "'")[0][newlanguage].ToString();
            }
            catch
            {
            }

            return ll;
        }
    }
    class LayoutRequest
    {
        static Android.Util.DisplayMetrics metric = Application.Context.Resources.DisplayMetrics;

        static float he = metric.HeightPixels / metric.Density;
        static float wi = metric.WidthPixels / metric.Density;
        static float ohe = (float)(1200 / 1.5);
        static float owi = (float)(1920 / 1.5);
        public static int Height(int h)
        {
            return (int)(h * (he / ohe));
        }
        public static int Widht(int w)
        {
            return (int)(w * (wi / owi));
        }
        public static float TextSize(float s)
        {
            return s * (wi / owi); // metric.Density;//(float)(s / metric.Density); ;// 
        }
    }
}