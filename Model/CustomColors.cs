using System.Windows.Media;

namespace mShield2.Model
{
    internal class CustomColors
    {
        public static readonly Color White = Color.FromRgb(255, 255, 255);//
        public static readonly Color SelectColor = Color.FromRgb(208, 127, 40);//Orange Color For Selection
        public static readonly Color DefaultColor = Color.FromRgb(45, 57, 78);//Default Color For Selection
        public static readonly Color GreenLabelColor = Color.FromRgb(15, 155, 75);//Default Color For Green Label
        public static readonly Color RedLabelColor = Color.FromRgb(228, 25, 25);//Default Color For Green Label

        public static SolidColorBrush SetSolidColor(Color ColorPick)
        {
            return new SolidColorBrush(ColorPick);
        }

        public static SolidColorBrush SetSolidColorRGB(byte R, byte G, byte B)//override for manual color RGB input
        {
            return new SolidColorBrush(Color.FromRgb(R, G, B));
        }

    }
}
