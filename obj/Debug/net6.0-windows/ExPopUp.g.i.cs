﻿#pragma checksum "..\..\..\ExPopUp.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5CD5555FC7EFD1EE7B096F7D23739D5B959CFBCB"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using mShield2;


namespace mShield2 {
    
    
    /// <summary>
    /// ExPopUp
    /// </summary>
    public partial class ExPopUp : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 51 "..\..\..\ExPopUp.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label ProcNameLabel;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\..\ExPopUp.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label ProcIDLabel;
        
        #line default
        #line hidden
        
        
        #line 56 "..\..\..\ExPopUp.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label DescriptionLabel;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\ExPopUp.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label StartTimeLabel;
        
        #line default
        #line hidden
        
        
        #line 68 "..\..\..\ExPopUp.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label RespondingLabel;
        
        #line default
        #line hidden
        
        
        #line 69 "..\..\..\ExPopUp.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label AutoActionLabel;
        
        #line default
        #line hidden
        
        
        #line 72 "..\..\..\ExPopUp.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border TraceInfoBTN;
        
        #line default
        #line hidden
        
        
        #line 97 "..\..\..\ExPopUp.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AcceptBTN;
        
        #line default
        #line hidden
        
        
        #line 106 "..\..\..\ExPopUp.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button DeclineBTN;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.2.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/mShield2;V1.0.1.5;component/expopup.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\ExPopUp.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.2.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 8 "..\..\..\ExPopUp.xaml"
            ((mShield2.ExPopUp)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded);
            
            #line default
            #line hidden
            
            #line 8 "..\..\..\ExPopUp.xaml"
            ((mShield2.ExPopUp)(target)).MouseEnter += new System.Windows.Input.MouseEventHandler(this.Window_MouseEnter);
            
            #line default
            #line hidden
            
            #line 8 "..\..\..\ExPopUp.xaml"
            ((mShield2.ExPopUp)(target)).MouseLeave += new System.Windows.Input.MouseEventHandler(this.Window_MouseLeave);
            
            #line default
            #line hidden
            return;
            case 2:
            this.ProcNameLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.ProcIDLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 4:
            this.DescriptionLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 5:
            this.StartTimeLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 6:
            this.RespondingLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 7:
            this.AutoActionLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 8:
            this.TraceInfoBTN = ((System.Windows.Controls.Border)(target));
            
            #line 72 "..\..\..\ExPopUp.xaml"
            this.TraceInfoBTN.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.TraceInfoBTN_MouseDown);
            
            #line default
            #line hidden
            return;
            case 9:
            this.AcceptBTN = ((System.Windows.Controls.Button)(target));
            
            #line 97 "..\..\..\ExPopUp.xaml"
            this.AcceptBTN.Click += new System.Windows.RoutedEventHandler(this.AcceptBTN_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.DeclineBTN = ((System.Windows.Controls.Button)(target));
            
            #line 106 "..\..\..\ExPopUp.xaml"
            this.DeclineBTN.Click += new System.Windows.RoutedEventHandler(this.DeclineBTN_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

