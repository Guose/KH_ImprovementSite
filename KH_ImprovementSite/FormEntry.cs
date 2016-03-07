namespace KH_ImprovementSite
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class FormEntry
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MessageId { get; set; }

        [StringLength(20)]
        public string SubjectLine { get; set; }

        [StringLength(20)]
        public string CustomerName { get; set; }

        [StringLength(10)]
        public string JobNumber { get; set; }

        public int? EmployeeId { get; set; }

        public int? DepartmentId { get; set; }

        public string MessageBody { get; set; }

        public string SuggestedSolution { get; set; }

        public DateTime? DataEntered { get; set; }

        [StringLength(20)]
        public string AffectedDept1 { get; set; }

        [StringLength(20)]
        public string AffectedDept2 { get; set; }

        [StringLength(20)]
        public string AffectedDept3 { get; set; }

        [StringLength(20)]
        public string AffectedDept4 { get; set; }

        [StringLength(20)]
        public string AffectedDept5 { get; set; }

        [StringLength(20)]
        public string AffectedDept6 { get; set; }

        [StringLength(20)]
        public string AffectedDept7 { get; set; }

        [StringLength(20)]
        public string AffectedDept8 { get; set; }

        [StringLength(20)]
        public string AffectedDept9 { get; set; }

        [StringLength(20)]
        public string AffectedDept10 { get; set; }

        [StringLength(20)]
        public string AffectedDept11 { get; set; }

        [StringLength(20)]
        public string AffectedDept12 { get; set; }

        public virtual Department Department { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
