using System;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

using System.Windows.Threading;

namespace mShield2
{
    /// <summary>
    /// Interaction logic for FolderBrowseDiag.xaml
    /// </summary>
    public partial class FolderBrowseDiag : Window
    {
        


        public FolderBrowseDiag()
        {
            InitializeComponent();
        }

        private void Window_Initialized(object sender, EventArgs e)
        {

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            Thread GetDrivers = new Thread(LoadLocalDriverTH);
            GetDrivers.Start();//load Drives on new Thread
            //Task.Factory.StartNew(() => LoadLocalDriverTH());         //load Drives by Task(Slower)
            ///
            GetFoldersInLocation(Model.ShieldTools.LocationPathLookup);
        }

        
        private void GetFoldersInLocation(string LocationPath)
        {
            if (Directory.Exists(LocationPath) ==true & LocationPath!="")
            {
                FileBrowseList.Items.Clear();
                Model.ShieldTools.LocationPathLookup = LocationPath.Replace(@"\\",@"\");
                LookUpTextBox.Text = Model.ShieldTools.LocationPathLookup;
                FolderNameLabel.Content = new DirectoryInfo(Model.ShieldTools.LocationPathLookup).Name;
                string[] folders;
                try
                {
                    folders = Directory.GetDirectories(Model.ShieldTools.LocationPathLookup, "*", SearchOption.TopDirectoryOnly);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
                

                foreach (string folder in folders)
                {
                    //string FolderCore = folder.Replace(@"\\", @"\");
                    FileBrowseList.Items.Add(Model.ShieldTools.AddNewFolder(folder, Model.ShieldTools.LocationPathLookup));
                }
            }
            else MessageBox.Show("Invalid Location!");
            
           
        }
        
        private void LoadLocalDriverTH()
        {
            int count = 0;
            foreach (DriveInfo drive in DriveInfo.GetDrives())
            {
                this.Dispatcher.Invoke(DispatcherPriority.Background, (Action)delegate ()
                {
                    if (drive.IsReady)
                    {

                        //Grid For rach Item
                        Grid DynamicGrid = new Grid();
                        DynamicGrid.Width = 210;
                        DynamicGrid.Height = 50;
                        DynamicGrid.HorizontalAlignment = HorizontalAlignment.Stretch;
                        DynamicGrid.Background = Model.CustomColors.SetSolidColorRGB(25, 90, 150);
                        DynamicGrid.Cursor = Cursors.Hand;
                        DynamicGrid.MouseDown += new MouseButtonEventHandler(ProcessMouseDown);
                        DynamicGrid.Name = "_" + drive.Name.FirstOrDefault();



                        // Create Collumns
                        ColumnDefinition gridCol1 = new ColumnDefinition(); gridCol1.Width = new GridLength(40);//Image
                        ColumnDefinition gridCol2 = new ColumnDefinition(); gridCol2.Width = new GridLength(150);//Text and progress Bar
                        // Create Rows
                        RowDefinition gridRow1 = new RowDefinition(); gridRow1.Height = new GridLength(17);//Prog Bar
                        RowDefinition gridRow2 = new RowDefinition(); gridRow2.Height = new GridLength(30);//Name

                        DynamicGrid.ColumnDefinitions.Add(gridCol1);
                        DynamicGrid.ColumnDefinitions.Add(gridCol2);
                        DynamicGrid.RowDefinitions.Add(gridRow1);
                        DynamicGrid.RowDefinitions.Add(gridRow2);

                        //Image For DriveStorage icon
                        var newImageIcon = new Image();
                        newImageIcon.Height = 35;
                        newImageIcon.Width = 35;
                        newImageIcon.Source = new System.Windows.Media.Imaging.BitmapImage(new Uri("../Images/harddisk.png", UriKind.Relative));
                        Grid.SetRow(newImageIcon, 0);
                        Grid.SetColumn(newImageIcon, 0);
                        Grid.SetRowSpan(newImageIcon, 2);
                        DynamicGrid.Children.Add(newImageIcon);

                        //ProgressBar
                        ProgressBar newProgBar = new ProgressBar();
                        newProgBar.Height = 15;
                        newProgBar.Width = 140;
                        newProgBar.Margin = new Thickness(0, 7, 0, 0);
                        newProgBar.Maximum = drive.TotalSize;
                        newProgBar.Value = drive.TotalSize - drive.TotalFreeSpace;
                        Grid.SetRow(newProgBar, 0);
                        Grid.SetColumn(newProgBar, 1);
                        DynamicGrid.Children.Add(newProgBar);

                        //label For Process [NAME]
                        var newNamelabel = new Label();
                        newNamelabel.Height = 30;
                        newNamelabel.FontSize = 12;
                        newNamelabel.FontWeight = FontWeights.Bold;
                        newNamelabel.Content = drive.Name;
                        newNamelabel.Foreground = Model.CustomColors.SetSolidColor(Model.CustomColors.White);
                        Grid.SetColumn(newNamelabel, 1);
                        Grid.SetRow(newNamelabel, 1);
                        DynamicGrid.Children.Add(newNamelabel);

                        //Add ALl To main Grid ROW
                        var myRowDefinition = new RowDefinition();
                        myRowDefinition.Height = new GridLength(DynamicGrid.Height);
                        DynamicGrid.Margin = new Thickness(5);
                        Grid.SetRow(DynamicGrid, count);
                        ItemsGridX.RowDefinitions.Add(myRowDefinition);
                        ItemsGridX.Children.Add(DynamicGrid);

                        //count Increase
                        count++;

                    }
                });
            }
        }
        
        private void ProcessMouseDown(object sender, MouseButtonEventArgs e)
        {
            Grid GridControl = (Grid)sender;
        }

        private void Border_MouseEnter(object sender, MouseEventArgs e)
        {
            Border myBoarder = (Border)sender;
            myBoarder.BorderBrush = Model.CustomColors.SetSolidColor(Model.CustomColors.SelectColor);
        }

        private void StartTraceBTN_MouseLeave(object sender, MouseEventArgs e)
        {
            Border myBoarder = (Border)sender;
            myBoarder.BorderBrush = Model.CustomColors.SetSolidColor(Model.CustomColors.DefaultColor);
        }

        private void SelectButton_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.Close();
        }

        private void CancelButton_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Model.ShieldTools.LocationPathLookup = "XLOSE";
            this.Close();
        }

        private void FileBrowseList_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if(FileBrowseList.SelectedItems.Count==0) return;//dont do anything if nothing is selected
            string SelectedFolder = (string)GetValueFromObject(FileBrowseList.SelectedItems[0]!, "FolderName");
            if (Model.ShieldTools.LocationPathLookup.EndsWith(@"\")) Model.ShieldTools.LocationPathLookup = Model.ShieldTools.LocationPathLookup.Remove(Model.ShieldTools.LocationPathLookup.Length - 1, 1);//a check for multiple BackSlashes
            GetFoldersInLocation(Model.ShieldTools.LocationPathLookup + @"\" + SelectedFolder + @"\");
        }
        public object GetValueFromObject(object src, string propName)
        {
            return src.GetType().GetProperty(propName)!.GetValue(src, null)!;
        }

        private void Navigate_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
            {
                GetFoldersInLocation(LookUpTextBox.Text);
                
            }
        }

        private void BackButton_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed)
            {
                GetFoldersInLocation(Model.ShieldTools.LocationPathLookup.Replace(FolderNameLabel.Content.ToString()!, ""));//Go Back/Navigation back to previous location
            }
        }

        private void LookUpTextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Enter)
            {
                GetFoldersInLocation(LookUpTextBox.Text); ;
            }
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton.Equals(MouseButton.XButton1)) GetFoldersInLocation(Model.ShieldTools.LocationPathLookup.Replace(FolderNameLabel.Content.ToString()!, ""));
        }
    }
    
}
