
using LernsiegDbLib;
using LernsiegViewModelLib;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Lernsieg_Konfig_WPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var options = new DbContextOptionsBuilder<LernsiegContext>()
                .UseSqlServer("server=(LocalDB)\\mssqllocaldb;attachdbfilename=C:\\Users\\mosha\\Documents\\Schule\\5.Klasse\\POS\\Lernsieg\\Lernsieg.mdf;database=Lernsieg;integrated security=True")
                .Options;
            var db = new LernsiegContext(options);
            try
            {
                int nrSchools = db.Schools.Count();
                //School school = db.Schools.Where(x => x.Id == 401046).FirstOrDefault();
                //txt.Content = $"name: {school.Name}";
                DataContext = new LernsiegViewModel().Init(db);
            }
            catch (Exception exc)
            {
                Console.WriteLine($"Error message: {exc}");
                Title = exc.Message;
            }
        }
    }
}
