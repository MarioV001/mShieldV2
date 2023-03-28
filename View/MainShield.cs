using System.ComponentModel;

namespace mShield2.View
{
    internal class MainShield : INotifyPropertyChanged
    {

       


        protected void OnPropertyChange(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;
    }
}
