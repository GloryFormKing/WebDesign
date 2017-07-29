package org.fkit.service;

import org.fkit.domain.Information;
import org.fkit.domain.Type;
public interface DetialService {
	Information information(Integer fid);
Type type(Integer fid);
}
