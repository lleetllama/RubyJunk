require 'mini_magick'
require 'fileutils'

# Function to convert SVG to PNG
def convert_svg_to_png(input_svg, output_png)
  image = MiniMagick::Image.open(input_svg)
  
  image.format('png')

  image.combine_options do |c|
    # Adjust this value if necessary to remove slight variations in white
    # c.fuzz '15%'  
    c.transparent('white')
    c.background('none')
    c.flatten

  end
  
  image.write(output_png)
end

# Define input and output folders
input_folder = File.join(__dir__, 'input')
output_folder = File.join(__dir__, 'output')

# Create the output folder if it doesn't exist
FileUtils.mkdir_p(output_folder)

# Process SVG files in the input folder
Dir.glob(File.join(input_folder, '*.svg')).each do |input_svg|
  # Construct the output PNG path
  output_png = File.join(output_folder, File.basename(input_svg, '.svg') + '.png')

  # Call the function to convert SVG to PNG
  convert_svg_to_png(input_svg, output_png)

  puts "Conversion complete: #{input_svg} -> #{output_png}"
end
