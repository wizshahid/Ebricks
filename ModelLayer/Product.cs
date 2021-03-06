//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ModelLayer
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Web;

    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.Bookings = new HashSet<Booking>();
            this.ProductImages = new HashSet<ProductImage>();
        }
    
        public long Id { get; set; }
        [Required]
        public string ProductCode { get; set; }
        [Required]
        public string ProductName { get; set; }
        [Required,Display(Name ="Company Name")]
        public string CompanyName { get; set; }
        [Required]
        public Nullable<int> Price { get; set; }
        [Required]
        public string Unit { get; set; }
        [Required,DataType(DataType.MultilineText)]
        public string Description { get; set; }
        public Nullable<bool> IsAvailable { get; set; }
        public Nullable<int> PostedBy { get; set; }
        [Required]
        public Nullable<int> CategoryId { get; set; }
        [Required]
        public Nullable<int> MRP { get; set; }
        [Required]
        public List<HttpPostedFileBase> Files { get; set; }

        public virtual Account Account { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Booking> Bookings { get; set; }
        public virtual Category Category { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductImage> ProductImages { get; set; }
    }
}
