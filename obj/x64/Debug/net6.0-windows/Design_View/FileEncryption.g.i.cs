﻿#pragma checksum "..\..\..\..\..\Design_View\FileEncryption.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "83EF3FF969B96F2218C85B81202124C013A2F28C"
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
    /// FileEncryption
    /// </summary>
    public partial class FileEncryption : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 1 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal mShield2.FileEncryption FileEncryption1;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image SaveLocationBTN;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox LookUpTextBox;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.CheckBox SavePS;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView USBListView;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Additm;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Encrpt;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Decrypt;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Removeitm;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\..\..\..\Design_View\FileEncryption.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label FileSaveLocation;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/mShield2;V1.0.1.6;component/design_view/fileencryption.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\Design_View\FileEncryption.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.FileEncryption1 = ((mShield2.FileEncryption)(target));
            
            #line 8 "..\..\..\..\..\Design_View\FileEncryption.xaml"
            this.FileEncryption1.Closing += new System.ComponentModel.CancelEventHandler(this.FileEncryption1_Closing);
            
            #line default
            #line hidden
            return;
            case 2:
            this.SaveLocationBTN = ((System.Windows.Controls.Image)(target));
            
            #line 18 "..\..\..\..\..\Design_View\FileEncryption.xaml"
            this.SaveLocationBTN.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.SaveLocationBTN_MouseDown);
            
            #line default
            #line hidden
            return;
            case 3:
            this.LookUpTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.SavePS = ((System.Windows.Controls.CheckBox)(target));
            return;
            case 5:
            this.USBListView = ((System.Windows.Controls.ListView)(target));
            return;
            case 6:
            this.Additm = ((System.Windows.Controls.Button)(target));
            
            #line 39 "..\..\..\..\..\Design_View\FileEncryption.xaml"
            this.Additm.Click += new System.Windows.RoutedEventHandler(this.Additm_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.Encrpt = ((System.Windows.Controls.Button)(target));
            
            #line 40 "..\..\..\..\..\Design_View\FileEncryption.xaml"
            this.Encrpt.Click += new System.Windows.RoutedEventHandler(this.Encrpt_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.Decrypt = ((System.Windows.Controls.Button)(target));
            
            #line 41 "..\..\..\..\..\Design_View\FileEncryption.xaml"
            this.Decrypt.Click += new System.Windows.RoutedEventHandler(this.Decrypt_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.Removeitm = ((System.Windows.Controls.Button)(target));
            
            #line 42 "..\..\..\..\..\Design_View\FileEncryption.xaml"
            this.Removeitm.Click += new System.Windows.RoutedEventHandler(this.Removeitm_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.FileSaveLocation = ((System.Windows.Controls.Label)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}
