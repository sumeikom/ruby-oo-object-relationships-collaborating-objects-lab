class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files 
        full_files = Dir.glob("#{self.path}/*.mp3")
        @files = full_files.collect {|file| file = File.basename(file)}
  end

    def import
        self.files.each {|filename| Song.new_by_filename(filename)}
    end
end