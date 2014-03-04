class FindFacesJob
  require 'opencv'
  @queue = :find_faces_queue

  def self.perform

    root_path = File.dirname(__FILE__)
    input_image_path = "#{root_path}/lena.jpg"

    output_image_path = "#{root_path}/lena_out.jpg"

    classifier_path = "#{root_path}/haarcascade_frontalface_alt.xml"

    detector = OpenCV::CvHaarClassifierCascade::load(classifier_path)
    image = OpenCV::CvMat.load(input_image_path)
    faces = detector.detect_objects(image)

    p "found #{faces.length} faces"

    faces.each do |face|
      color = OpenCV::CvColor::Blue
      image.rectangle! face.top_left, face.bottom_right, :color => color
    end

    image.save_image output_image_path

    p output_image_path
  end
end
