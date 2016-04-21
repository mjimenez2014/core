module UniqueRandomField
  def set_unique_random_field(column_name)
    begin
      self[column_name] = SecureRandom.urlsafe_base64
    end while self.class.exists?(column_name => self[column_name])
  end
end
