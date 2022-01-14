# RDMBS

Veri tabanı tablolarının birbirleriyle ilişkili bir şekilde veri tabanı tarafında tutulması.

Manuel olarak tabloları aralarında ilişkili bir şekilde oluşturabiliyoruz. Örneğin adres tablosuna USER_ID gibi bir sütun ekleyerek User tablosu ile görünürde ilişkilendirebiliyoruz. Fakat burada kod tarafında da bu ilişkiyi dikkatli bir şekilde yönetmemiz gerekiyor. Yani burada manuel olarak oluşturduğumuz ilişki aslında kod tarafında bu ilişki üzerinden veritabanı tablolarını yönetmemizi sağlıyor. Fakat veritabanı içerisinde gerçekten böyle bir ilişki tanımlanmış olmuyor.

Güncel veritabanlarının hemen hemen hepsinde RDMBS destekleniyor. Yani tablolar arasındaki ilişkiyi veritabanında tanımlayabiliyor ayarlayabiliyoruz. Bir tablonun PK sı ile diğer tablonun FK sını bağlayıp bu ilişkiyi kurabiliyor, ayrıca ilişkili tablodan bir veri silindiğinde diğer tabloda bu veriyle ilgili satırlarda ne yapılacağına dair ayarlar ekleyebiliyoruz. Örneğin bir kullanıcı silindiğinde daha önce o kullanıcı için eklenmiş olan adres satırları silinebileceği gibi null gibi bir değerle de setlenebilir.
