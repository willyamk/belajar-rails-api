require 'bcrypt'

class User < ApplicationRecord
   # Memanggil metode set_user_code sebelum membuat user baru
   before_create :set_user_code
   # Memanggil metode set_encrypt_password sebelum menyimpan user
   before_save :set_encrypt_password

   # Validasi bahwa username harus ada dan panjang 6 sampai 50 karakter
   validates :username, presence: { message: "can't be blank" },
             length: { minimum: 6, maximum: 50, message: "must be 6 to 50 characters long" }

   # Validasi bahwa password harus ada, panjang 8 sampai 255 karakter, dan memiliki format tertentu
   validates :password, presence: { message: "can't be blank" },
             length: { minimum: 8, maximum: 255, message: "must be 8 to 255 characters long" },
             format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).+\z/, message: "must include at least one lowercase letter, one uppercase letter, one digit, and one special character" }

   # Validasi bahwa email harus ada, panjang 5 sampai 255 karakter dan memiliki format yang valid
   validates :email, presence: { message: "can't be blank" },
             length: { minimum: 5, maximum: 255, message: "must be 5 to 255 characters long" },
             format: { with: /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/, message: "is not a valid email format. Valid format example: username@mailserver.domain" }

   private

   # Mengatur kode user secara otomatis saat membuat user baru
   def set_user_code
      self.user_code = generate_user_code
   end

   # Mengenkripsi password sebelum menyimpan user
   def set_encrypt_password
      self.password = BCrypt::Password.create(password)
   end

   # Menghasilkan kode user unik dengan prefix "USR-" diikuti nomor urut
   def generate_user_code
      prefix = "USR-"
      last_number = User.where("user_code LIKE ?", "#{prefix}%")
                        .pluck(Arel.sql("MAX(CAST(REGEXP_REPLACE(user_code, '#{prefix}', '', 'g') AS INTEGER))")).first
      next_number = last_number ? last_number + 1 : 1
      "#{prefix}#{next_number}"
   end
end
