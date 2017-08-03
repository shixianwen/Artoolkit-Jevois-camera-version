#include <jevois/Core/Module.H>
#include <jevois/Debug/Timer.H>
#include <jevois/Image/RawImageOps.H>
#include <jevois/Util/Coordinates.H>
#include <ARtoolkit.H>
//#include <linux/videodev2.h> // for v4l2 pixel types
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/calib3d.hpp> // for projectPoints()
#include <sstream>

class DemoARtoolkit :public jevois::Module,
                     public jevois::Parameter<>
{
  public:
    DemoARtoolkit(std::string const & instance) : jevois::Module(instance)
    {
      itsARtoolkit = addSubComponent<ARtoolkit>("artoolkit");
      
    }
    // a flag to initialize itsARtoolkit
    bool enterflag = false;
    virtual ~DemoARtoolkit(){}

    virtual void process(jevois::InputFrame && inframe, jevois::OutputFrame && outframe) override
    {
      // Wait for next available camera image:

      jevois::RawImage const inimg = inframe.get();
      if(!enterflag){
        //when first enter the process mannualy init the itsARtoolkit component
        enterflag = true;
        unsigned int const w = inimg.width, h = inimg.height;
        itsARtoolkit->xsize::set(w);
        itsARtoolkit->ysize::set(h);
        itsARtoolkit->manualinit();
        

      }
      // Convert the image to BGR and process:
      cv::Mat imgbgr = jevois::rawimage::convertToCvBGR(inimg);
      inframe.done();
      jevois::RawImage outimg = outframe.get();
      outimg.require("output", inimg.width, inimg.height, outimg.fmt);

      itsARtoolkit->detectMarkers(imgbgr);
      jevois::rawimage::convertCvBGRtoRawImage(imgbgr, outimg, 75 /* JPEG quality */);
      outframe.send();
      
    }

  protected:
    std::shared_ptr<ARtoolkit> itsARtoolkit;
    
};
JEVOIS_REGISTER_MODULE(DemoARtoolkit);
