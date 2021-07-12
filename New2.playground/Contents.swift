import Cocoa

func makeRoundedRectangleMaker(_ sz:CGSize) -> () -> UIImage {
    func f () -> UIImage {
        let im = imageOfSize(sz) {
            let p = UIBezierPath(                roundedRect: CGRect(origin:CGPoint.zero, size:sz),                cornerRadius: 8)
            
            p.stroke()
            
        }
        return im
        
    }
    return f
    
}
