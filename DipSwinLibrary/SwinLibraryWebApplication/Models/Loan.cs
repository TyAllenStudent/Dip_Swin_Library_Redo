//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SwinLibraryWebApplication.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Loan
    {
        public string StudentID { get; set; }
        public string ISBN { get; set; }
        public System.DateTime DateBorrowed { get; set; }
    
        public virtual Book Book { get; set; }
        public virtual Student Student { get; set; }
    }
}