//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace LYZJ.UserLimitMVC.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class R_Group_Role
    {
        public int ID { get; set; }
        public int GroupID { get; set; }
        public int RoleID { get; set; }
        public Nullable<System.DateTime> CreateOn { get; set; }
        public string CreateUserID { get; set; }
        public string CreateBy { get; set; }
        public Nullable<System.DateTime> ModifiedOn { get; set; }
        public string ModifiedUserID { get; set; }
        public string ModifiedBy { get; set; }
        public int BaseRoleID { get; set; }
        public int BasePermissionID { get; set; }
        public int BasePermissionGroupID { get; set; }
    
        public virtual BaseRole BaseRole { get; set; }
        public virtual BasePermissionGroup BasePermissionGroup { get; set; }
    }
}
