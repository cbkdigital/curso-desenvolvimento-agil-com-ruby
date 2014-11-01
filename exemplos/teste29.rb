module SingletonService
	@object ||= nil
	@constructor ||= nil

	def build
    @object = @constructor.call if @object.nil?
    @object
	end

	def to_construct(&block)
		@constructor = block
	end
end

class ExtratorDados
	extend SingletonService

	to_construct do
    ExtratorDados.new
	end
end

class ExportadorPdf
	extend SingletonService
	attr_reader :pessoa

	to_construct do
		extrator = ExtratorDados.build
    ExportadorPdf.new(extrator)
	end

	def initialize(extrator)
    @extrator = extrator
	end
end

extrator = ExtratorDados.build
exportador1 = ExportadorPdf.build
exportador2 = ExportadorPdf.build

p extrator
p exportador1
p exportador2