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
    
    public partial class ShippingAddress
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ShippingAddress()
        {
            this.Bookings = new HashSet<Booking>();
        }
    
        public int Id { get; set; }
        public string PostalCode { get; set; }
        public string Locality { get; set; }
        public string City { get; set; }
        public string District { get; set; }
        public Nullable<int> AccountId { get; set; }
        public string ContactNo { get; set; }
        public string Landmark { get; set; }
    
        public virtual Account Account { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Booking> Bookings { get; set; }
    }
}