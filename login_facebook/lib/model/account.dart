class UserAuthenticated
    {
        String Id ;
        String Username ;
        String FullName ;
        String PhoneNumber ;
        String Email ;
        int Role ;
        bool  IsDelete = false;
        bool IsVip ;
        String CreateDate;
        String ModifyDate ;
        String Token ;

        UserAuthenticated(
          {
            this.Id,
            this.Username,
            this.FullName,
            this.PhoneNumber,
            this.Email,
            this.Role,
            this.IsDelete,
            this.IsVip,
            this.CreateDate,
            this.ModifyDate,
            this.Token
          }
          );
        factory UserAuthenticated.fromJson(Map<String, dynamic> json) {
          return UserAuthenticated(
            Id: json['userId'],
            Username: json['username'],
            FullName: json['fullName'],
            PhoneNumber: json['phoneNumber'],
            Email: json['email'],
            Role: json['role'],
            IsDelete: json['isDelete'],
            IsVip: json['isVip'],
            CreateDate: json['createDate'],
            ModifyDate: json['modifyDate'],
            Token: json['token'],
          );
        }
    }