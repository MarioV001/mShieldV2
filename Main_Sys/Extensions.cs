using System.Collections.Generic;
using System.Windows.Media;
using System.Windows;

namespace mShield2.MainSys
{
    public static class Extensions
    {
        public static List<string> ErroMSGGroup = new List<string>();
        public static string ErrMSGLabel = "";     

        public static object GetPropValue(object src, string propName)
        {
            if (src == null || propName == null) return 0;
            return src.GetType().GetProperty(propName).GetValue(src, null);
        }
        public static T FindParent<T>(DependencyObject dependencyObject) where T : DependencyObject
        {
            var parent = VisualTreeHelper.GetParent(dependencyObject);

            if (parent == null) return null;

            var parentT = parent as T;
            return parentT ?? FindParent<T>(parent);
        }

        public static void AddErrorMSG(string Message)
        {
            ErroMSGGroup.Add(Message);
            ErrMSGLabel = Message;
            //ErrorMSGLabel.Content = Message;
            //ErrorMSGLabel.Name = "ERR_" + (ErroMSGGroup.Count - 1);
            //MainWindow.ErrorMessageBox.Visibility = Visibility.Visible;
            System.Media.SystemSounds.Hand.Play();
        }
        public static void RemoveErrorMSG(int IndexRemove)
        {
            if (ErroMSGGroup == null) return;
            ErroMSGGroup.RemoveAt(IndexRemove);
        }
        public static void ClearErrorMSG()
        {
            if (ErroMSGGroup == null) return;
            ErroMSGGroup.Clear();
        }
    }
}
