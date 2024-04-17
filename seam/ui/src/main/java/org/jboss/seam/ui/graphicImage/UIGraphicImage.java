package org.jboss.seam.ui.graphicImage;

import javax.faces.component.html.HtmlGraphicImage;

public abstract class UIGraphicImage extends HtmlGraphicImage {

    public static final String FAMILY = "org.jboss.seam.ui.UIGraphicImage";

    public abstract String getFileName();

    public abstract void setFileName(String fileName);

    public abstract boolean isCache();

    public abstract void setCache(boolean cache);

    public abstract String getCacheKey();

    public abstract void setCacheKey(String cacheKey);

    public abstract boolean isInvalidate();

    public abstract void setInvalidate(boolean invalidate);

}
